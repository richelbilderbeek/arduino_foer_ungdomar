#include <Servo.h>

Servo min_servo;

void setup()
{
  Serial.begin(9600);
  min_servo.attach(9);
}

void loop()
{
  if (Serial.available())
  {
    const int vard = Serial.parseInt();
    Serial.print("Jag satter servon pa ");
    Serial.println(vard);
    min_servo.write(vard);
    delay(1000);
  }
}
