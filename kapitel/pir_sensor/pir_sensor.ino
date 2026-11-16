const int pir_pin = 12;
const int led_pin = 13;

void setup()
{
  pinMode(pir_pin, INPUT);
  pinMode(led_pin, OUTPUT);
}

void loop()
{
  digitalWrite(led_pin, digitalRead(pir_pin));
  delay(100);
}