# Lektion 7: Potentiometer och joystick

I den här lektionen kommer vi att använda en potentiometer, en joystick och en funktion som returnerar ett värde.

## 7.1 Potentiometer: anslut, kommando

 * Anslut en potentiometer. Gör följande anslutningar:

Potentiometer | Arduino
-----------------|--------
Vänster ben | 5V
Mellanben | A0
Höger ben | GND

## 7.2 Potentiometer: anslut, lösning

[schema här]

## 7.3 Potentiometer: start, kommando

 * I `setup` startar den seriella monitorn vid 9600 baud
 * Skapa en variabel "väntetid" med ett värde på 100
 * Skapa en funktion 'effe_wait' som programmerar 'väntetid' i millisekunder
   sen väntan
 * Skapa en funktion `show_potentiometer_see`, som tar ordet `potentiometer` till
   seriella monitorkontroller
 * I `loop`, använd `show potentiometer` och `effe_wait`

## 7.4 Potentiometer: uppstart, lösning

```c++
const int wachttijd = 100; //milliseconden

void setup() 
{
  Serial.begin(9600);
}

void laat_potmeter_zien()
{
  Serial.print("potmeter");
}

void effe_wachten()
{
  delay(wachttijd);  
}

void loop() 
{
  laat_potmeter_zien();
  effe_wachten();
}
```

## 7.5 Potentiometer: läs, kommando

 * Skapa en variabel 'pin_potmeter' med värdet 'A0'.
 * I "setup", ställ in "pinMode" för "pin_potmeter" till "INPUT".
 * Lägg till denna funktion:

```
int lees_potmeter()
{
  return analogRead(pin_potmeter);
}
```

 * I `show_potentiometer_see` ersätt texten `"potentiometer"` med `read_potentiometer()`
 * Ladda upp programmet och vrid potentiometern. Vilka siffror kommer ut?

## 7.6 Potentiometer: avläsning, lösning

```
const int pin_potmeter = A0;
//...

void setup() 
{
  // ...
  pinMode(pin_potmeter, INPUT);
}

int lees_potmeter()
{
  return analogRead(pin_potmeter);
}

void laat_potmeter_zien()
{
  Serial.print(lees_potmeter());
}
```

Siffrorna som kommer från "read_potentiometer" är mellan noll och 1024.

##7.7 Potentiometer: styrning, kommando

 * Anslut en lysdiod till stift 11
 * Skapa en variabel 'pin_led' med rätt värde
 * I "setup", ställ in "pinMode" för "pin_led" till "OUTPUT".
 * I `show_potentiometer_see` lägg till denna rad:

```c++
analogWrite(pin_led, lees_potmeter());
```

 * Ladda upp och vrid potentiometern. Vad ser du?

## 7.8 Potentiometer: styrning, lösning

```c++
// ...
const int pin_led = 11;

void setup() 
{
  // ...
  pinMode(pin_led, OUTPUT);
}

void laat_potmeter_zien()
{
  // ...
  analogWrite(pin_led, lees_potmeter());
}
```

Om du vrider på potentiometern ser du att lysdioden lyser fyra gånger
sätter på.


## 7.9 Potentiometer: bra styrning, kommando

 * Ändra följande kod...
 
```c++
analogWrite(pin_led, lees_potmeter());
```

... till detta:

```c++
analogWrite(pin_led, lees_potmeter() / 4);
```

 * Vad ser du?
 * Vad tror du att `/` betyder? Tips: var ser du sådana här ränder?
   i matte?


## 7.10 Potentiometer: bra styrning, lösning

 * Du kan se att lysdioden nu går från av till tänd när du slår på
   potentiometern vrider sig
 * `/` betyder "delat med". Detta är samma indelningslinje som med
   bråk och procent!

## 7.11 Potentiometer: anslut joystick, kommando

 * Byt ut potentiometern mot en joystick. Gör följande anslutningar:

Joystick | Arduino
---------|--------
VCC | 5V
V | A0
H | A1
GND | GND

 * Om du har anslutit denna rätt kan du nu styra lysdioden med joysticken

## 7.11 Potentiometer: anslut joystick, lösning

[flödesschema]

##7.12 Potentiometer: läs joystick, kommando

I koden ersätter du texten "potentiometer" med "joystick_vertical".
För att göra detta, använd 'Sök' (CTRL-F eller 'Redigera | Sök') och använd 'Ersätt
Alla" ("Ersätt alla").

![Sök, klicka här på 'Ersätt alla'](7_edit_find.png)

## 7.12 Potentiometer: läs joystick, lösning

```c++
const int pin_joystick_verticaal = A0;
// ...

void setup() 
{
  pinMode(pin_joystick_verticaal, INPUT);
  // ...
}

int lees_joystick_verticaal()
{
  return analogRead(pin_joystick_verticaal);
}

void laat_joystick_verticaal_zien()
{
  Serial.print(lees_joystick_verticaal());
  analogWrite(pin_led, lees_joystick_verticaal() / 4);
}

void loop() 
{
  laat_joystick_verticaal_zien();
  // ...
}
```

##7.12 Potentiometer: slutuppgift

 * Anslut en andra lysdiod
 * Denna andra lysdiod ska reagera som den första lysdioden, men som
   joysticken flyttas horisontellt
