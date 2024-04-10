#include <Servo.h>

Servo mijn_servo;

void setup()
{
  Serial.begin(9600);
  pinMode(7, OUTPUT);
  mijn_servo.attach(9);
}

void loop()
{
  if (Serial.available())
  {
    const int getal{Serial.parseInt()};
    Serial.print("Ik zet de servo op ");
    Serial.println(getal);
    digitalWrite(7, HIGH);
    digitalWrite(7, LOW);
    mijn_servo.write(getal);
    delay(1000);
  }
}
