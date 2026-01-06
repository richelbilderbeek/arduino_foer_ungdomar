# Lektion 24: Använding av ett relais

Connect the relais to the Arduino. How many pins of the relais will
be controlled by the Arduino? Which pin is it?

![](24_anvaendning_av_ett_relae_1_pin_to_arduino.png)

- One, on pin 13.

Connect one LED to 9V via the relais as such:

![](24_ansluting_av_ett_relae_one_led.png)

Use the Blink code to make the LED blink.

```c++
Blink code here
```

Does the LED go on or off with `digitalWrite(13, LOW)`? Why?

- The LED goes on with `digitalWrite(13, LOW)`, as it is the connection
  to GND that triggers the relay. When the relay is triggered, the 9V
  battery can connect to the LED.


Now, connect all four Arduino pins to the 4 relay input pins:

![](24_anvaendning_av_ett_relae_4_pins_to_arduino.png)

Then, build up the H bridge:

![](24_ansluting_av_ett_relae_h_bridge.png)

Exam:

Write code that makes

- The blue LED turn on
- Turn both LEDs off
- The green LED turn on
- Turn both LEDs off

