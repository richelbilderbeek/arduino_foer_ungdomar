# Lektion 20: Mätning av en servo

Under den här lektionen ska vi mäta en servo!

## 20.1. Att mäta motståndet av en servo med en multimeter

![Att mäta en servo med en multimeter](maetning_av_en_ldr_1.png)

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

## 20.4. Att mäta spänningen av en servo med en multimeter

Bygga elkretsen nadåt:

![Att mäta en servo med en skop](maetning_av_en_ldr_2.png)

Röda proben gå till en oscilloskop.

På skopen gör:

- Sätt tidskalan till 1 sekund
- Sätt spänningsskalan till 2 volts

Vilken spänning visar skopen?

\pagebreak

### 20.4. Svar

Det skulle vara en spänning mellan 0 och 5 volt,
för att detta är spänningen av Arduinon

Vi fick 2.12 volt

## 20.5. Att mäta spänningen av en servo med en multimeter

Hålla servoen nära en lampa.
Vilken spänning visar skopen nu?

\pagebreak

### 20.5. Svar

Spänningen öker, men aldrig högre än 5 volt

Vi fick 3.1 volt.

## 20.4. Att mäta spänningen av en servo med en multimeter

Ta bort ljuset till servoen med, t.ex. din hand.
Vilken spänning visar skopen nu?

\pagebreak

### 20.6. Svar

Spänningen sänker,  men aldrig mindre än 0 volt

Vi fick 0.28 volt.

## 20.7. Att mäta en servo med en skop

Bygga elkretsen nadåt:

![Att mäta en servo med en skop](maetning_av_en_ldr_2.png)

Röda proben gå till en oscilloskop.

På skopen gör:

- Sätt tidskalan till 1 sekund
- Sätt spänningsskalan till 2 volts

Vilken spänning visar skopen?

### 20.7. Svar

Det skulle vara en spänning mellan 0 och 5 volt,
för att detta är spänningen av Arduinon

Vi fick 2.12 volt

## 20.8. Att mäta en servo med en skop

Hålla servoen nära en lampa.
Vilken spänning visar skopen nu?

### 20.8. Svar

Spänningen öker, men aldrig högre än 5 volt

Vi fick 3.1 volt.

## 20.9. Att mäta en servo med en skop

Ta bort ljuset till servoen med, t.ex. din hand.
Vilken spänning visar skopen nu?

### 20.9. Svar

Spänningen sänker,  men aldrig mindre än 0 volt

Vi fick 0.28 volt.

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
