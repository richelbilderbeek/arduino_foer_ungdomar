# Lektion 20: Mätning av en servo

Under den här lektionen ska vi mäta en servo!

## 20.1. Att mäta motståndet av en servo med en skop

![Att mäta en servo med en skop](maetning_av_en_servo_anslutning.jpg)

Vrid vridknappen på multimetern till Ohm symbolen.
Sätt på multimetern och koppla:

- röda mätpinnen på den vänstra benen av servoen
- svarta mätpinnen på den högra benen av servoen

Vad visar mätningen?

```c++
#include <Servo.h>

Servo min_servo;

void setup()
{
  min_servo.attach(9);
}

void loop()
{
  min_servo.write(0);
  delay(1000);
  min_servo.write(180);
  delay(1000);
}
```


![Mätning för noll grader](maetning_av_en_servo_0_annotated.png)

![Mätning för 180 grader](maetning_av_en_servo_180_annotated.png)

![Frekvens ändrar sig](maetning_av_en_servo_frekwens_aendrar_sig.jpg)


\pagebreak

### 20.1. Svar

Multimetern visar en motstånd för vanligt ljus (om inte: fråga hjälp!).

Vi fick 1.7 kOhm, dvs 1700 Ohm.

## 20.2. Att mäta motståndet av en servo med en multimeter

Hålla servoen nära en lampa. Vad visar mätningen?

\pagebreak

### 20.2. Svar

Vi fick 0.68 kOhm, dvs 680 Ohm.

I ljuset har en servo minsta motstånd

## 20.3. Att mäta motståndet av en servo med en multimeter

Ta bort ljuset till servoen med, t.ex. din hand. Vad visar mätningen?

\pagebreak

### 20.3. Svar

I mörkret har en servo högsta motstånd

Vi fick 68 kOhm, dvs 68.000 Ohm.

## 20.10. Slutuppgift

Hämta:

- 1 st multimeter
- 1 st skop
- 1 st servo
- 4 st sladdar
- 1 st 1000 Ohm motstånd (rött, brun, svart, guld)

Läs igenom slutuppgiften först, för du har 5 minuter på dig.

- Steg 1: Fråga någon för att få göra provet. Den personen får inte hjälpa dig.

Starta en timer och gör följande:

- Steg 2: Visar hur att öka och sänka motståndsvärde av servoen på multimetern

- Steg 3: Visar hur att öka och sänka spänningen av servoen på multimetern

- Steg 4: Visar hur att öka och sänka spänningen av servoen på oscilloskopen
