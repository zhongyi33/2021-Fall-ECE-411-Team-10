#include <Arduino.h>
#include <Servo.h>
#define servoPIn       9       //servo port
#define IrRecPin1      7     //IR Receiver port
#define IrRecPin2      6     //IR Receiver port
#define IrRecPin3      5     //IR Receiver port
#define IrRecPin4      4     //IR Receiver port
#define IrRecPin5      3     //IR Receiver port
#define IrRecPin6      2     //IR Receiver port

#define servoAnalog    90    //The rootation angle of servo
#define servoResTime   5000  //Servo reset time
#define pinReadTime    5000  //Pin scan time
uint32_t pinLastReadTime = 0;         //The last time the pin was scanned
uint32_t num             = 101010;  //password status  from 7 to 0
bool keyFlag(uint32_t value);
bool servoFlag = false; //the sign of servo's rotation
Servo myservo;          //示例化一个舵机对象
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
  
  myservo.write(0);

  pinLastReadTime = millis();
}

void loop()
{
  if (millis() - pinLastReadTime >= pinReadTime)
  {
    Serial.print("Current port password status：");
    Serial.print(digitalRead(IrRecPin1));
    Serial.print(digitalRead(IrRecPin2));
    Serial.print(digitalRead(IrRecPin3));
    Serial.print(digitalRead(IrRecPin4));
    Serial.print(digitalRead(IrRecPin5));
    Serial.print(digitalRead(IrRecPin6));
    
    
    if (keyFlag(num))
    {
      servoFlag = true; //password correct, servo work
      Serial.println("Key OK");
    }
    else
    {
      Serial.println("Key NOT OK");
      pinLastReadTime = millis(); //password is not correct, go to the next scan
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
    pinLastReadTime = millis(); //servo finish work ，GO TO THE NEXT SCAN
  }
}

bool keyFlag(uint32_t value)
{
  bool pinState[5] = {0};
  pinState[0] = value / 100000;
  pinState[1] = value / 10000 % 10;
  pinState[2] = value / 1000 % 10;
  pinState[3] = value / 100 % 10;
  pinState[4] = value / 10 % 10;
  
  
  
  Serial.print("view the printed parsed password value：");
  Serial.print(pinState[0]);
  Serial.print(pinState[1]);
  Serial.print(pinState[2]);
  Serial.print(pinState[3]);
  Serial.print(pinState[4]);
  Serial.print(pinState[5]);
  
  //Check whether the pin port level corresponds to the setting key
  if (digitalRead(IrRecPin1) == pinState[0] && digitalRead(IrRecPin2) == pinState[1] && digitalRead(IrRecPin3) == pinState[2] &&
      digitalRead(IrRecPin4) == pinState[3] && digitalRead(IrRecPin5) == pinState[4] && digitalRead(IrRecPin6) == pinState[5] ) 
  
  {
    return true;
  }
  else
  {
    return false;
  }
}