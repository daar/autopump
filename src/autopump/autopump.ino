// include the library code:
#include <LiquidCrystal.h>

// initialize the library with the numbers of the interface pins
LiquidCrystal lcd(12, 11, 5, 4, 3, 2);

#define BUTTON_1 2      //pin of pushbutton 1
#define BUTTON_2 3      //pin of pushbutton 2

#define VALVE_1 6       //pin of valve 1
#define VALVE_2 7       //pin of valve 2

#define PRESELECTMAX 2  //number of presets

#define RESETTIME 3 * 60 * 1000  //time to goto standby

int stepnr = 0;
double zeropressure = 0;
double pressure = 0;
int preselectnr = 0;
double preselectpressure = 0;
double pressuretol = 0.05;  //tollerance of pressure
unsigned long time = 0;

int preselectval[PRESELECTMAX] = {
  0.8, 0.6
};
char* preselectstr[PRESELECTMAX] = {
  "Volwassenen", "Jeugd"
};

void setup() {
  Serial.begin(9600);

  //pushbutton 1 and 2
  pinMode(BUTTON_1, INPUT);
  pinMode(BUTTON_2, INPUT);

  //valve 1 and 2
  pinMode(VALVE_1, OUTPUT);
  pinMode(VALVE_2, OUTPUT);

  //indication LED
  pinMode(13, OUTPUT);
}

void readpressure() {
  int raw_pressure = analogRead(1);
  pressure = 0.006388082 * raw_pressure - 0.653500811;
  Serial.println(pressure, DEC);
}

void printdisplay() {

  char line1[16];
  char line2[16];

  switch (stepnr) {
  case 0:
    //standby, no display

    strncpy(line1, "", 16);
    strncpy(line2, "", 16);

    break;

  case 1:
    //display preset

    sprintf(line1, "preset: %s", preselectstr[preselectnr]);

    char temp[16];
    dtostrf(preselectval[preselectnr], 6, 3, temp);
    sprintf(line2, "target: %s bar", temp);

    break;

  case 2:

    //print the actual pressure
    char temp[16];
    dtostrf(pressure - zeropressure, 6, 3, temp);
    sprintf(line1, "actual: %s bar", temp);

    //print the target pressure
    char temp[16];
    dtostrf(preselectval[preselectnr], 6, 3, temp);
    sprintf(line2, "target: %s bar", temp);


    break;

  case 3:
    //waiting for restart or reset

    strncpy(line1, "Btn 1 for repeat", 16);
    strncpy(line2, "Btn 2 for reset", 16);

    break;
  }

  lcd.print(line1);
  lcd.print(line2);
}

void loop() {
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
    }

    break;

    //pre-select set pressure
  case 1:

    //if both buttons pressed then start
    if (button1 && button2) {
      stepnr = 2;
      time = millis();
    }

    //only one button pressed means change preselect
    if (button1 || button2) {
      preselectnr = preselectnr + 1;
      if (preselectnr >= PRESELECTMAX) {
        preselectnr = 0;
      }
    }

    printdisplay();

    //after resettime has elapsed goto standby
    if (millis() - time >= RESETTIME) {

      stepnr = 0;
    }

    break;

    //start adjusting pressure
  case 2:
    //deflate
    while (pressure - zeropressure > preselectpressure + pressuretol) {

      digitalWrite(VALVE_1, HIGH);
      readpressure();
      printdisplay();
    }

    //inflate
    while (pressure - zeropressure < preselectpressure - pressuretol) {

      digitalWrite(VALVE_2, HIGH);
      readpressure();
      printdisplay();
    }

    stepnr = 3;
    time = millis();

    break;

    //wait for restart
  case 3:

    printdisplay();

    //if button 1 pressed than restart the sequence
    if (button1) {
      stepnr = 2;
      time = millis();
    }
    else if (button2) {
      stepnr = 1;
      time = millis();
    }

    //after resettime has elapsed goto standby
    if (millis() - time >= RESETTIME) {

      stepnr = 0;
    }

    break;
  }
}






