# Servomotor med potentiometer

Anslut en potentiometer. Mittstiftet ska gå till 'A0'. Se figur 'Servomotor och potentiometer'

![Servomotor och potentiometer](3_servo_motor_with_potmeter.png)

\pagebreak

Använd denna kod:

```c++
#include <Servo.h>

Servo mijn_servo;

void setup() 
{
  Serial.begin(9600);
  mijn_servo.attach(9);
  pinMode(A0, INPUT);
}

void loop()
{
  mijn_servo.write(
    map(analogRead(A0),0,1024,45,135)
  );
  delay(100);
}
```

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:--------------------------------:|:----------------------------------------: 
`map(analogRead(A0),0,1024,45,135)` |'Bästa dator, läs spänningen för `A0`. Detta är ett värde från 0 till 1024. Konvertera det avlästa värdet mellan 45 och 135.'.


## Slutuppgift

Styr en servomotor perfekt med en potentiometer.
Använd det lägsta och högsta värdet som du har hittat med din servomotor.
