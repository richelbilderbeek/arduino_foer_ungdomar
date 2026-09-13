const int motor_pin = 12; // PUL +5V
const int direction_pin = 13; // DIR +5V, will be TRUE in one direction

// Needs to toggle to keep moving forward
int motor_pin_status = 0;

int go_forward()
{
  digitalWrite(direction_pin, HIGH);
  digitalWrite(motor_pin, motor_pin_status);
  motor_pin_status = !motor_pin_status;
}

int go_backward()
{
  digitalWrite(direction_pin, LOW);
  digitalWrite(motor_pin, motor_pin_status);
  motor_pin_status = !motor_pin_status;
}

void setup()
{
  pinMode(motor_pin, OUTPUT);
  pinMode(direction_pin, OUTPUT);
}

int my_position = 0;

void loop() {
  for (int i=0; i!=2000; ++i)
  {
    go_forward();
    delay(1);
  }
  for (int i=0; i!=2000; ++i)
  {
    go_backward();
    delay(1);
  }
}
