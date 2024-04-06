const int pin_joy_x{A0};
const int pin_led{11};


void setup() {
  pinMode(pin_joy_x, INPUT);
  pinMode(pin_led, OUTPUT);

}

void loop() {
  const int joy_x{analogRead(pin_joy_x)};
  const int ljus_styrka{joy_x / 4};
  analogWrite(pin_led, ljus_styrka);
}
