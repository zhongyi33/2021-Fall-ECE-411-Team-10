#include <Arduino.h>
#include <Servo.h>
#define servoPIn       10       //Servo control pins
#define IrRecPin1      9     //IR Acceptance Binding Pins
#define IrRecPin2      8     //IR Acceptance Binding Pins
#define IrRecPin3      7     //IR Acceptance Binding Pins
#define IrRecPin4      6     //IR Acceptance Binding Pins
#define IrRecPin5      5     //IR Acceptance Binding Pins
#define IrRecPin6      4     //IR Acceptance Binding Pins
#define IrRecPin7      3     //IR Acceptance Binding Pins
#define IrRecPin8      2     //IR Acceptance Binding Pins
#define servoAnalog    90    //Set the rotation angle of the servo
#define servoResTime   5000  //Reset time of the servo
#define pinReadTime    5000  //Scan time of pins
uint32_t pinLastReadTime = 0;         //Time of last scan of the pin
uint32_t num             = 10101010;  //Password Status,From left to right,Indicates the status of ports 9--2
bool keyFlag(uint32_t value);
bool servoFlag = false; //The sign of rudder rotation
Servo myservo;          //Example of a servo object
void setup()
{
  Serial.begin(9600);
  myservo.attach(servoPIn);
  pinMode(IrRecPin1, INPUT);
  pinMode(IrRecPin2, INPUT);
  pinMode(IrRecPin3, INPUT);
  pinMode(IrRecPin4, INPUT);
  pinMode(IrRecPin5, INPUT);
  pinMode(IrRecPin6, INPUT);
  pinMode(IrRecPin7, INPUT);
  pinMode(IrRecPin8, INPUT);
  myservo.write(0);

  pinLastReadTime = millis();
}

void loop()
{
  if (millis() - pinLastReadTime >= pinReadTime)
  {
    if (keyFlag(num))
    {
      servoFlag = true; //Password correct, servo movement
      Serial.println("Key OK");
    }
    else
    {
      Serial.println("Key ON");
      pinLastReadTime = millis(); //The password is not correct, go to the next port scan
    }
  }
  if (servoFlag)
  {
    Serial.println("Servo OK");
    servoFlag = false;
    myservo.write(servoAnalog);
    delay(servoResTime);
    myservo.write(0);
    Serial.println("Servo REST");
    pinLastReadTime = millis(); //After the rudder is complete, go to the next port scan
  }
}

bool keyFlag(uint32_t value)
{
  bool pinState[8] = {0};
  pinState[0] = value / 10000000;
  pinState[1] = value / 1000000 % 10;
  pinState[2] = value / 100000 % 10;
  pinState[3] = value / 10000 % 10;
  pinState[4] = value / 1000 % 10;
  pinState[5] = value / 100 % 10;
  pinState[6] = value / 10 % 10;
  pinState[7] = value % 10;
  Serial.print("View the parsed password value after printing：");
  Serial.print(pinState[0]);
  Serial.print(pinState[1]);
  Serial.print(pinState[2]);
  Serial.print(pinState[3]);
  Serial.print(pinState[4]);
  Serial.print(pinState[5]);
  Serial.print(pinState[6]);
  Serial.println(pinState[7]); //Check if the pin port level corresponds to the set key
  if (digitalRead(IrRecPin1) == pinState[0] && digitalRead(IrRecPin2) == pinState[1] && digitalRead(IrRecPin3) == pinState[2] &&
      digitalRead(IrRecPin4) == pinState[3] && digitalRead(IrRecPin5) == pinState[4] && digitalRead(IrRecPin6) == pinState[5] &&
      digitalRead(IrRecPin7) == pinState[6] && digitalRead(IrRecPin8) == pinState[7])
  {
    return true;
  }
  else
  {
    return false;
  }
}