# Lektion 3: Anslutning av en lysdiod

Under den här lektionen ska vi ansluta en lysdiod till en Arduino!

## 3.1. Kopplingsdäcket

Vi använder ett kopplingsdäcket för att ansluta grejer till Arduino.

Här ser vi en:

![Image from https://sti2d.ecolelamache.org/les_breadboard.html](anslutning_av_en_lysdiod_breadboard_frontside.jpg)

Och här ar baksida av samma kopplingsdäcket:

![Image from https://sti2d.ecolelamache.org/les_breadboard.html](anslutning_av_en_lysdiod_breadboard_backside.jpg)

Minn baksida av kopplingsdäcket och kolla här:

![](anslutning_av_en_lysdiod_breadboard_schematic_with_dots.png)

Vilken av den här hålar är förbundna?

### Svaret

 * 1 är förbunden med 2
 * 3 är förbunden med 4
 * 5 är ensamma

## 3.2. Anslut motstånden och lysdioden på 5V

Nu är det dags att bygga kretsen på riktigt:

![Blink](1_blink.png)

 * Koppla ur USB-kabeln från datorn, så att Arduino inte längre har ström
 * Montera Blinkkretsen enligt bild
 * Montera tillbaka USB kabel till datorn
 * Om allt är bra kommer nu den röda LED att blinka tillsammans med LEDen på Arduinon.

![](EmojiBowtie.png) | Om LEDen inte lyser, vänd på den
:-------------:|:----------------------------------------: 


## 3.7. Anslut motstånden och lysdioden

Nu är det dags att bygga kretsen på riktigt:

![Blink](1_blink.png)

 * Koppla ur USB-kabeln från datorn, så att Arduino inte längre har ström
 * Montera Blinkkretsen enligt bild
 * Montera tillbaka USB kabel till datorn
 * Om allt är bra kommer nu den röda LED att blinka tillsammans med LEDen på Arduinon.

![](EmojiBowtie.png) | Om LEDen inte lyser, vänd på den
:-------------:|:----------------------------------------: 

\pagebreak

## 3.10. Uppgift 4

Anslut nu din LED till stift 12.

![](EmojiSunglasses.png) | Det är en bra ide att använda stift 12 eller stift 13
:-------------:|:----------------------------------------: 

![](EmojiBowtie.png) | Använd inte stift 0 och 1 då de är speciella
:-------------:|:----------------------------------------: 

\pagebreak

## 3.11. Lösning 4

![Blinka med LED på stift 12](1_blink_paa_12.png)

\pagebreak

## 3.12. Uppgift 5

Se nu till att LEDen på stift 12 börjar blinka dubbel så fort.

![](EmojiSunglasses.png) | LED är en förkortning av 'Light Emitting Diode'
:-------------:|:----------------------------------------: 

![](EmojiBowtie.png) | Bra sagt! Bättre sent än aldrig!
:-------------:|:----------------------------------------: 

![](EmojiBowtie.png) | LED betyder på svenska: 'Ljus givande diod'
:-------------:|:----------------------------------------: 

\pagebreak

## 3.13. Lösning 5

```c++
void setup() 
{
  pinMode(12, OUTPUT);
}

void loop() 
{
  digitalWrite(12, HIGH);
  delay(100);
  digitalWrite(12, LOW);
  delay(100);
}
```

## 3.14. Slutuppgift

Läs slutuppgift först, för att du har 5 minuten.

1. Fråga någon för att examinera. Den där person får inte hjälpa dig,
bara fråga frågor.

2. Start en timer och gör följande:

3. Försammla:

 * 1 Arduino
 * 1 USB kabel
 * El för arduino, dws en 5V adapter eller dator
 * 1 kopplingsdäck
 * 1 1.000 Ohm motstånd
 * 1 10.000 Ohm motstånd
 * 1 lysdiod
 * 5-10 sladdar

4. Visa motstånd av båda motstånd med en multimeter

5. Få lysdiod att lysa på kopplingsdäck

6. Visa att riktning av motstånd är viktigt ja eller nej

7. Visa att riktning av lysdiod är viktigt ja eller nej

8. Visa att 10.000 Ohm motstånden funkar också ja eller nej
