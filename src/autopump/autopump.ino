/*
  Copyright (C) 2015-2016  Darius Blaszyk

  This program is free software; you can redistribute it and/or
  modify it under the terms of the GNU General Public License
  as published by the Free Software Foundation; either version 2
  of the License, or (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program; if not, write to the Free Software
  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
*/

// include the library code:
#include <LiquidCrystal.h>

#define DISPLAYTIME 500                 //refresh rate in ms for the display

#define BUTTON_1 8                      //pin of pushbutton 1
#define BUTTON_2 9                      //pin of pushbutton 2

#define VALVE_1 6                       //pin of valve 1
#define VALVE_2 7                       //pin of valve 2

#define BACKLIGHT 10                    //pin of backlight control

#define PRESELECTMAX 3                  //number of presets

#define RESETTIME 60000                 //time to goto standby in ms
#define DEFLATETIME 10000               //max time needed for deflation in ms
#define INFLATETIME 10000               //max time needed for inflation in ms

int stepnr = 0;

double zeropressure = 0;
double pressure = 0;
double pressuretol = 0.01;              //tolerance of pressure

unsigned long stime = 0;                //step timer
unsigned long dtime = 0;                //display timer

int preselectnr = 0;
double preselectpressure = 0;
double preselectval[PRESELECTMAX] = {
  0.8, 0.9, 1.0
};
char* preselectstr[] = {
  "Pupillen", "Junioren", "Senioren"
};

// initialize the library with the numbers of the interface pins
LiquidCrystal lcd(12, 11, 5, 4, 3, 2);

void setup() {
  Serial.begin(9600);

  //pushbutton 1 and 2
  pinMode(BUTTON_1, INPUT);
  pinMode(BUTTON_2, INPUT);

  //backlight control pin
  pinMode(BACKLIGHT, OUTPUT);

  //valve 1 and 2
  pinMode(VALVE_1, OUTPUT);
  pinMode(VALVE_2, OUTPUT);

  //close deflate valve
  digitalWrite(VALVE_1, LOW);

  //close inflate valve
  digitalWrite(VALVE_2, LOW);

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

  if (millis() - dtime < DISPLAYTIME) {
    return;
  }

  dtime = millis();

  lcd.clear();

  switch (stepnr) {

    case 0:
      {
        //standby, no display
        digitalWrite(BACKLIGHT, LOW);
        lcd.noDisplay();
      }
      break;

    case 1:
      {
        //display preset
        digitalWrite(BACKLIGHT, HIGH);
        lcd.display();
        
        dtostrf(preselectpressure, 5, 3, temp);
        sprintf(line2, "target: %sBar", temp);

        lcd.print("preset: ");
        lcd.print(preselectstr[preselectnr]);

        //lcd.print(line1);
        lcd.setCursor(0, 1);
        lcd.print(line2);
      }
      break;

    case 2:
      {
        digitalWrite(BACKLIGHT, HIGH);
        lcd.display();
        
        double corrpressure = pressure - zeropressure;
        //print the actual pressure
        if (corrpressure < 0) {
          lcd.print("actual:");
        } else {
          lcd.print("actual: ");
        }
        dtostrf(corrpressure, 5, 3, temp);

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
      {
        digitalWrite(BACKLIGHT, HIGH);
        lcd.display();
        
        //waiting for restart or reset
        lcd.print("Btn 1 for repeat");
        lcd.setCursor(0, 1);
        lcd.print("Btn 2 for reset");
      }
      break;
  }
}

void deflate() {

  stime = millis();
  while (pressure - zeropressure > preselectpressure + pressuretol && millis() - stime < DEFLATETIME ) {

    digitalWrite(VALVE_1, HIGH);
    readpressure();

    printdisplay();
  }
  digitalWrite(VALVE_1, LOW);
}

void inflate() {

  stime = millis();
  while (pressure - zeropressure < preselectpressure - pressuretol && millis() - stime < INFLATETIME) {

    digitalWrite(VALVE_2, HIGH);
    readpressure();

    printdisplay();
  }
  digitalWrite(VALVE_2, LOW);
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

  switch (stepnr) {

    //standby
    case 0:
      {
        //store zero pressure
        zeropressure = pressure;

        if (button1 || button2) {
          stepnr = 1;

          //allow the buttons to be unpressed, otherwise we already select
          //the next preset
          delay(1000);
          
          stime = millis();
        }

        printdisplay();
      }
      break;

    //pre-select set pressure
    case 1:
      {
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
      }
      break;

    //start adjusting pressure
    case 2:
      {

        //run the deflate and inflate cycles two times each
        //in between cycles pause 1sec to stabilize the measurement

        deflate();
        delay(1000);
        inflate();
        delay(1000);
        deflate();
        delay(1000);
        inflate();


        stepnr = 3;
        stime = millis();
      }
      break;

    //wait for restart or reset
    case 3:
      {
        printdisplay();

        //if button 1 pressed than restart the same sequence
        if (button1) {
          stepnr = 2;
          stime = millis();
        }
        else if (button2) {
          stepnr = 1;
          stime = millis();
        }

        //after resettime has elapsed goto standby
        Serial.println(millis() - stime);
        Serial.println(RESETTIME);
        if (millis() - stime >= RESETTIME) {

          stepnr = 0;
        }
      }
      break;
  }
}
