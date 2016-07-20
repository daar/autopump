// include the library code:
#include <LiquidCrystal.h>

#define DISPLAYDAMP 4         //damping factor for display

#define BUTTON_1 8            //pin of pushbutton 1
#define BUTTON_2 9      			//pin of pushbutton 2

#define VALVE_1 6       			//pin of valve 1
#define VALVE_2 7       			//pin of valve 2

#define PRESELECTMAX 3  			//number of presets

#define RESETTIME 0.25 * 60 * 1000  	//time to goto standby
#define DEFLATETIME 10 * 1000    	//max time needed for deflation
#define INFLATETIME 10 * 1000    	//max time needed for inflation

int stepnr = 0;

double zeropressure = 0;
double pressure = 0;
double pressuretol = 0.05;  //tollerance of pressure

unsigned long stime = 0;

int preselectnr = 1;
double preselectpressure = 0;
double preselectval[PRESELECTMAX] = {
  0.8, 0.7, 0.6
};
char* preselectstr[] = {
  "Senioren", "Junioren", "Pupillen"
};

// initialize the library with the numbers of the interface pins
LiquidCrystal lcd(12, 11, 5, 4, 3, 2);

void setup() {
  Serial.begin(9600);

  //pushbutton 1 and 2
  pinMode(BUTTON_1, INPUT);
  pinMode(BUTTON_2, INPUT);

  //valve 1 and 2
  pinMode(VALVE_1, OUTPUT);
  pinMode(VALVE_2, OUTPUT);

  // set up the LCD's number of columns and rows:
  lcd.begin(16, 2);
  lcd.display();
}

void readpressure() {
  int raw_pressure = analogRead(1);
  pressure = 0.006388082 * raw_pressure - 0.653500811;
  Serial.println(pressure, DEC);
}

void printdisplay() {

  char line1[16];
  char line2[16];
  char temp[16];

  lcd.clear();

  switch (stepnr) {

    case 0:

      //standby, no display

      break;

    case 1:

      //display preset

      //doesn't work, driving me nuts!!!
      sprintf(line1, "preset: %s", preselectstr[preselectnr]);

      dtostrf(preselectpressure, 5, 3, temp);
      sprintf(line2, "target: %sBar", temp);

      lcd.print("preset: ");
      lcd.print(preselectstr[preselectnr]);

      //lcd.print(line1);
      lcd.setCursor(0, 1);
      lcd.print(line2);

      break;

    case 2:
      {
        double corrpressure = pressure - zeropressure;
        //print the actual pressure
        if (corrpressure < 0) {
          lcd.print("actual:");
        } else {
          lcd.print("actual: ");
        }
        dtostrf(corrpressure, 5, 3, temp);
        sprintf(line1, "actual: %sBar", temp);

        lcd.print(temp);
        lcd.print("Bar");

        //print the target pressure
        dtostrf(preselectval[preselectnr], 5, 3, temp);
        sprintf(line2, "target: %sBar", temp);

        //lcd.print(line1);
        lcd.setCursor(0, 1);
        lcd.print(line2);
      }
      break;

    case 3:
      //waiting for restart or reset
      lcd.print("Btn 1 for repeat");
      lcd.setCursor(0, 1);
      lcd.print("Btn 2 for reset");

      break;
  }
}

void loop() {
  Serial.print(stepnr);
  Serial.print(' ');

  //read button 1 state
  int button1 = digitalRead(BUTTON_1);
  Serial.print(button1, DEC);

  //read button 2 state
  int button2 = digitalRead(BUTTON_2);
  Serial.print(button2, DEC);

  Serial.print(' ');

  //read pressure
  readpressure();

  //determine preselect pressure
  preselectpressure = preselectval[preselectnr];

  //close deflate valve
  digitalWrite(VALVE_1, LOW);

  //close inflate valve
  digitalWrite(VALVE_2, LOW);

  switch (stepnr) {

    //standby
    case 0:
      //store zero pressure
      zeropressure = pressure;

      if (button1 || button2) {
        stepnr = 1;

        stime = millis();
      }

      printdisplay();

      break;

    //pre-select set pressure
    case 1:

      //one button pressed means change preselect
      if (button1 || button2) {

        //allow both buttons to be pressed
        delay(1000);

        //recheck buttons
        button1 = digitalRead(BUTTON_1);
        button2 = digitalRead(BUTTON_2);

        //if both buttons pressed then start
        if (button1 && button2) {
          stepnr = 2;
        } else
        {

          preselectnr = preselectnr + 1;
          if (preselectnr >= PRESELECTMAX) {
            preselectnr = 0;
          }
        }
        stime = millis();
      }

      printdisplay();

      //after resettime has elapsed goto standby
      if (millis() - stime >= RESETTIME) {

        stepnr = 0;
      }

      break;

    //start adjusting pressure
    case 2:
      {
        int i = 1;

        //deflate
        stime = millis();
        while (pressure - zeropressure > preselectpressure + pressuretol && millis() - stime < DEFLATETIME ) {

          digitalWrite(VALVE_1, HIGH);
          readpressure();

          if (i == DISPLAYDAMP) {
            printdisplay();
          }
          i = i + 1;
          if (i > DISPLAYDAMP) {
            i = 1;
          }
        }

        //wait for pressure to settle
        delay(1000);

        //inflate
        while (pressure - zeropressure < preselectpressure - pressuretol && millis() - stime < INFLATETIME) {

          digitalWrite(VALVE_2, HIGH);
          readpressure();

          if (i == DISPLAYDAMP) {
            printdisplay();
          }
          i = i + 1;
          if (i > DISPLAYDAMP) {
            i = 1;
          }
        }

        stepnr = 3;
        stime = millis();
      }
      break;

    //wait for restart or reset
    case 3:

      printdisplay();

      //if button 1 pressed than restart the sequence
      if (button1) {
        stepnr = 2;
        stime = millis();
      }
      else if (button2) {
        stepnr = 1;
        stime = millis();
      }

      //after resettime has elapsed goto standby
      if (millis() - stime >= RESETTIME) {

        stepnr = 0;
      }

      break;
  }
}
