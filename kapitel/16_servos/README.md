# 16. Fler servomotorer

I den här lektionen ska vi koppla ihop fler servomotorer.
Vi behöver också batterier för detta

## 16.1 Batteridriven servomotor med seriell monitor

### 16.1.1 Anslut

Anslut en servomotor till batteriet enligt bilden 'Servomotor på batteri med seriell monitor'.

![Servomotor på batteri med seriell monitor](3_meer_servo_motoren_1.png)

![Bowtie](EmojiBowtie.png) | Glöm inte att ansluta GND på batterierna till GND på Arduino.
:-----------------:|:---------------------- ------- :

![Solglasögon](EmojiSunglasses.png) | Kom ihåg att det finns en lucka i mitten av de långa linjerna
:-------------:|:----------------------------------------: 

\pagebreak

### 16.1.2 Kod

```c++
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
    const int varde = Serial.parseInt();
    Serial.print("Jag satter servo pa ");
    Serial.println(varde);
    min_servo.write(varde);
    delay(1000);
  }
}
```

![Sunglasses](EmojiSunglasses.png) | Glömt vad den kod gjorde? Kollar sista lektion!
:-------------:|:----------------------------------------: 

## 16.1.3 Uppgift 1

Ta reda på servots lägsta och högsta värde

\pagebreak

## 16.1.4 Lösning 1

Ha, det kan du ta reda på själv :-)

## 16.2 Servomotor på batteri med knapp

### 16.2.1 Anslut

Koppla nu in en tryckknapp, såsom figuren 'Servomotor på batteri med knapp'.

![Servomotor på batteri med knapp](3_meer_servo_motoren_2.png)

\pagebreak

### 16.2.2 Kod

Denna kod låter servo svara på knappen:

```c++
#include <Servo.h>

Servo min_servo;

void setup() 
{
  min_servo.attach(8);
  pinMode(A0, INPUT);
}

void loop()
{
  if (analogRead(A0) < 512)
  {
    min_servo.write(45); //Minimumvärd
  }
  else
  {
    min_servo.write(135); //Maximumvärd
  }
  delay(100);
}
```

### 16.2.3 Uppgift 1

 * Justera koden så att servo rör sig perfekt

\pagebreak

### 16.2.4 Lösning 1

Samma kod, förutom:

  * 45:an har ersatts av servos minimivärde
  * 135:an har ersatts av servos maximala värde

## 16.3 Batteridrivna servomotorer med knapp

### 16.3.1 Anslut

Anslut nu en extra servomotor, som figuren 'Servomotorer på batteri med knapp'.

![Servomotorer på batteri med knapp](3_meer_servo_motors_3.png)

### 16.3.2 Övning 2

 1. Ta reda på det minsta och högsta värdet på den nya servo
 2. Ändra koden så att båda servon rör sig perfekt *motsatt*.
    Så när knappen släpps är en servo inställd på minimum och den andra på maximum.
    När knappen trycks in växlar den

\pagebreak

### 16.3.3 Lösningar 2

 1. Detta kan göras genom att använda den första koden igen.
    Du kan justera stiftet på servo i koden,
    eller sätt in servot tillfälligt i stiftet på den första servo
 2. Se den här koden:

```c++
#include <Servo.h>

Servo min_servo_1;
Servo min_servo_2;

void setup() 
{
  min_servo_1.attach(8);
  min_servo_2.attach(9);
  pinMode(A0, INPUT);
}

void loop()
{
  if (analogRead(A0) < 512)
  {
    min_servo_1.write( 45); //Minimumvärd 1
    min_servo_2.write(125); //Maximumvärd 2
  }
  else
  {
    min_servo_1.write(135); //Maximumvärd 1
    min_servo_2.write( 35); //Minimumvärd 2
  }
  delay(100);
}
```

## 16.4 Slutuppgift

Anslut nu en andra knapp.
När den första knappen trycks in ska den första servo gå till maximalt läge.
Om *även* den andra knappen trycks in bör den andra servo gå till maximalt läge.

![Bowtie](EmojiBowtie.png) | Tips: använd ett `if` i ett `if`.
:-------------:|:----------------------------------------: 

