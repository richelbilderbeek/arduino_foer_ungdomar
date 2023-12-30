# Lektion 1: Anslutning av en lysdiod

Under den här lektionen ska vi ansluta en lysdiod!

## 1.1. Anslutning av en Arduino

Anslut en Arduino. För nu är det bara att en Arduino behöver el :-)

![En Arduino](01_arduino.png)

Förbind en USB-kabel mellan Arduino och något som har en USB port.
Det finns en lysdiod på Arduino som brinner när Arduino har el.

## 1.2. Mätning av ingen motstånd

Leta efter en multimeter och två av sina mätkablar: en röda och en svarta.
Sätt knappen av multimetern till Ohm symbolen,
som ser ut som en luftballong eller en upp och nervänd vas.
Koppla in röda mätkabel i röda hål av multimetern som har en V och en
Ohm symbol ovanpå sig.
Koppla in svart mätkabel i svarta hål av multimetern som har ordet 'COM' ovanpå sig.

Sätt på multimetern och hålla röda mätare till svarat mätare.
Skärmen skulle visar 0 Ohm motstånd.

Det betyder att det finns ingenting emellan mätaren.
Det stämmer!

## 1.3. Mätning av ett tusenohms motstånd

Leta efter en tusenohms motstånd.
Den har bänder brunt, svart, röd och guld, i den där ordning.

Sätt på multimetern och koppla:

 * röda mätare till motstånd, på sida med brunt bant 
 * svarat mätare till andra sida motstånd

Vilken vär ger multimetern? Den skull vara mellen 950 och 1050 Ohm!
Motstånder är inte perfecta, så det stämmer!

## 1.4. Mätning av ett tusenohms motstånd i andra riktning

Vänd på motstånden och mät motstånden igen:

 * röda mätare till motstånd, på sida med guld bant 
 * svarat mätare till andra sida motstånd

Vilken vär ger multimetern? Den skull vara mellen 950 och 1050 Ohm!
Rikting av motståndet är oviktigt.

## 1.5. Mätning av ett tiotusenohms motstånd

Leta efter en **tio**-tusenohms motstånd.
Den har bänder brunt, svart, **orange** och guld, i den där ordning.

Sätt på multimetern och koppla:

 * röda mätare till motstånd, på sida med brunt bant 
 * svarat mätare till andra sida motstånd

Vilken vär ger multimetern? Den skull vara mellen 9500 och 10500 Ohm!
Motstånder är inte perfecta, så det stämmer!

## 1.6. Mätning av ett tiotusenohms motstånd i andra riktning

Vänd på motstånden och mät motstånden igen:

 * röda mätare till motstånd, på sida med guld bant 
 * svarat mätare till andra sida motstånd

Vilken vär ger multimetern? Den skull vara mellen 9500 och 10500 Ohm!
Igen, rikting av motståndet är oviktigt.

HIERO

## 1.7. Anslut motstånden och lysdioden

Nu är det dags att bygga kretsen på riktigt:

![Blink](1_blink.png)

 * Koppla ur USB-kabeln från datorn, så att Arduino inte längre har ström
 * Montera Blinkkretsen enligt bild
 * Montera tillbaka USB kabel till datorn
 * Om allt är bra kommer nu den röda LED att blinka tillsammans med LEDen på Arduinon.

![](EmojiBowtie.png) | Om LEDen inte lyser, vänd på den
:-------------:|:----------------------------------------: 

\pagebreak

## 1.10. Uppgift 4

Anslut nu din LED till stift 12.

![](EmojiSunglasses.png) | Det är en bra ide att använda stift 12 eller stift 13
:-------------:|:----------------------------------------: 

![](EmojiBowtie.png) | Använd inte stift 0 och 1 då de är speciella
:-------------:|:----------------------------------------: 

\pagebreak

## 1.11. Lösning 4

![Blinka med LED på stift 12](1_blink_paa_12.png)

\pagebreak

## 1.12. Uppgift 5

Se nu till att LEDen på stift 12 börjar blinka dubbel så fort.

![](EmojiSunglasses.png) | LED är en förkortning av 'Light Emitting Diode'
:-------------:|:----------------------------------------: 

![](EmojiBowtie.png) | Bra sagt! Bättre sent än aldrig!
:-------------:|:----------------------------------------: 

![](EmojiBowtie.png) | LED betyder på svenska: 'Ljus givande diod'
:-------------:|:----------------------------------------: 

\pagebreak

## 1.13. Lösning 5

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

## 1.14. Slutuppgift

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
