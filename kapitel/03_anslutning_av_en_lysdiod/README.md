# Lektion 3: Ansluta en lysdiod

Under den här lektionen ska vi ansluta en lysdiod till en Arduino!

## 3.1. Kopplingsdäcket

Vi använder ett kopplingsdäck för att ansluta grejer till Arduino.

Här ser vi ett:

![Image from https://sti2d.ecolelamache.org/les_breadboard.html](anslutning_av_en_lysdiod_breadboard_frontside.jpg)

Och här är baksidan av samma kopplingsdäck:

![Image from https://sti2d.ecolelamache.org/les_breadboard.html](anslutning_av_en_lysdiod_breadboard_backside.jpg)

Kom ihåg hur baksidan av kopplingsdäcket såg ut och titta på det här:

![](anslutning_av_en_lysdiod_breadboard_schematic_with_dots.png)

Vilka av hålen är sammanlänkade?

### Svar

 * 1 är sammanlänkat med 2
 * 3 är sammanlänkat med 4
 * 5 är ensamt

## 3.2. Anslut motstånden och lysdioden

Kolla på den här bilden:

![](anslutning_av_en_lysdiod_1_with_dots.png)

Det finns sex färgade hål. Vilka av dem är sammanlänkade?

### Svar

 * rött är sammanlänkat med orange
 * gult är sammanlänkat med grönt
 * blått är sammanlänkat med lila

## 3.3. Anslut motstånden och lysdioden

Nu är det dags att bygga kretsen på riktigt:

![](anslutning_av_en_lysdiod_1.png)

 * Koppla ur USB-kabeln från datorn, så att Arduino inte längre har ström
 * Montera kretsen enligt bild:
   * Koppla en röd sladd från 5V-hålet till hålet högst upp till vänster 
     i kopplingsdäcket
   * Koppla in det långa benet på lysdioden **två** hål nedanför röda sladden i kopplingsdäcket.
     Det ska finnas en tomt hål mellan det långa benet på lysdioden och 
     den röda sladden i kopplingsdäcket.
   * Sätt det korta benet på lysdioden i hålet till höger om det långa benet
   * Koppla in sidan med brun rand på ett motstånd ett hål ovanför det korta benet på lysdioden
   * Koppla in sidan med guldig rand på ett motstånd fyra hål till höger om
     motståndet med brun rand.
     Det ska finnas tre tomma hål mellan båda sidorna av motstånden i kopplingsdäcket.
   * Koppla in en svart sladd ett hål ovanför sidan med guldig rand på motståndet
     till GND-hålet i Arduino
 * Sätt tillbaka USB-kabeln i datorn

![](EmojiBowtie.png) | Det böjda benet i ritningen symboliserar det längre benet på en lysdiod
:-------------:|:----------------------------------------: 

Lyser lysdioden?

### Svar

Elen kan gå från `5V` till `GND` igenom lysdioden och motståndet!
Så ja, det funkar!

Om inte, fråga om hjälp!

\pagebreak

## 3.4. Krets 2

Kolla på den här kretsen:

![](anslutning_av_en_lysdiod_2.png)

Nu är lysdioden vriden tvärtom!

Tror du att lysdioden kommer att lysa? Varför?
Bygg ihop kretsen och kontrollera!

### Svar

Lysdioden ska inte lysa, för att riktningen på lysdioden är fel.
Därför kan elen inte gå från `5V` till `GND` igenom lysdioden och motståndet.

Det långa benet på en lysdiod ska vara kopplat till 5V.

## 3.5. Krets 3

Kolla på den här kretsen:

![](anslutning_av_en_lysdiod_3.png)

Lysdioden är kopplad rätt igen, men motståndet är vridet tvärtom!

Tror du att lysdioden kommer att lysa? Varför?
Bygg ihop kretsen och kontrollera!

### Svar

Elen kan gå från `5V` till `GND` igenom lysdioden och motståndet!
Så ja, lysdioden ska lysa, då riktningen av motståndet inte spelar någon roll.

## 3.6. Krets 4

Kolla på den här kretsen:

![](anslutning_av_en_lysdiod_4.png)

Nu är både lysdioden och motståndet vridna tvärtom!

Tror du att lysdioden kommer att lysa? Varför?
Bygg ihop kretsen och kontrollera!

### Svar

Lysdioden ska inte lysa, för att riktningen av lysdioden är fel.
Därför kan elen inte gå från `5V` till `GND` igenom lysdioden och motståndet.

Det långa benet av en lysdiod ska vara kopplat till 5V.
Riktningen av motståndet är inte viktigt.

## 3.7. Krets 5

Kolla på den här kretsen:

![](anslutning_av_en_lysdiod_5.png)

Nu är alla komponenter på en rad!

Tror du att lysdioden kommer att lysa? Varför?
Bygg upp kretsen och kontrollera!

### Svar

Lysdioden ska inte lysa, för el kan inte gå igenom lysdioden:
den röda sladden är inte kopplad till lysdioden alls!

## 3.8. Krets 6

Kolla på den här kretsen:

![](anslutning_av_en_lysdiod_6.png)

Nu är alla komponenter som i den första kretsen, men alla är flyttade till höger.

Tror du att lysdioden kommer att lysa? Varför?
Bygg upp kretsen och kontrollera!

### Svar

Elen kan gå från `5V` till `GND` igenom lysdioden och motståndet!
Så ja, det fungerar! Det är inte viktigt hur mycket till höger/vänster
på kopplingsdäcket man jobbar.

## 3.9. Krets 7

Kolla på den här kretsen:

![](anslutning_av_en_lysdiod_7.png)

Nu finns det fler tomma hål mellan benen på lysdioden!

Tror du att lysdioden kommer att lysa? Varför?
Bygg upp kretsen och kontrollera!

### Svar

Elen kan gå från `5V` till `GND` igenom lysdioden och motståndet!
Så ja, det skulle funka! Det är inte viktigt hur många hål (eller avsaknad av) 
det finns mellan benen på lysdioden.

## 3.10. Krets 8

Kolla på den här kretsen:

![](anslutning_av_en_lysdiod_8.png)

Nu är lysdioden kopplad rakt över kopplingsdäcket!

Tror du att lysdioden kommer att lysa? Varför?
Bygg upp kretsen och kontrollera!

### Svar

Elen kan gå från `5V` till `GND` igenom lysdioden och motståndet!
Så ja, det ska funka! En komponent kan kopplas mellan den övre och nedre delen på ett koppplingsdäck.

## 3.11. Krets 9
 
Kolla på den här kretsen:

![](anslutning_av_en_lysdiod_9.png)

Nu går lysdioden över mitt i kopplingsdäcket, men med motståndet ovanför.

Tror du att lysdioden kommer att lysa? Varför?
Bygg upp kretsen och kontrollera!

### Svar

Nej, det funkar inte. Elen går ej genom lysdioden, utan tar den kortare vägen direkt genom motståndet. Stackars lysdioden!

## 3.12. Krets 10

Kolla på den här kretsen:

![](anslutning_av_en_lysdiod_10.png)

Tror du att lysdioden kommer att lysa? Varför?
Bygg upp kretsen och kontrollera!

### Svar

Lysdioden ska inte lysa, för att riktningen på lysdioden är fel.
Därför kan elen inte gå från `5V` till `GND` igenom lysdioden och motståndet.

Det långa benet på lysdioden skall vara kopplat till 5V.

## 3.13. Krets 11

Kolla på den här kretsen:

![](anslutning_av_en_lysdiod_11.png)

Nu är motståndet kopplat före lysdioden! 

Tror du att lysdioden kommer att lysa? Varför?
Bygg upp kretsen och kontrollera!

### Svar

Lysdioden ska inte lysa, för att riktningen av lysdioden är fel.
Därför kan elen inte gå från `5V` till `GND` igenom lysdioden och motståndet. Att motståndet är kopplat framför gör ingen skillnad.

Det långa benet av en lysdiod skall vara kopplat till 5V.

## 3.14. Krets 12

Kolla på den här kretsen:

![](anslutning_av_en_lysdiod_13.png)

Tror du att lysdioden kommer att lysa? Varför?
Bygg upp kretsen och kontrollera!

### Svar

Elen kan gå från `5V` till `GND` igenom lysdioden och motståndet!
Så ja, den funkar!

## 3.15. Krets 13

Kolla på den här kretsen:

![](anslutning_av_en_lysdiod_14.png)

Nu är lysdioden och motståndet inte direkt kopplade,
utan sammankopplade med en sladd!

Tror du att lysdioden kommer att lysa? Varför?
Bygg upp kretsen och kontrollera!

### Svar

Elen kan gå från `5V` till `GND` igenom lysdioden och motståndet!
Så ja, den funkar!

## 3.16. Krets 14

Kolla på den här kretsen:

![](anslutning_av_en_lysdiod_12.png)

Nu är motståndet inkopplat före lysdioden! 

Tror du att lysdioden kommer att lysa? Varför?
Bygg upp kretsen och kontrollera!

### Svar

Lysdioden ska inte lysa, för att riktningen av lysdioden är fel.
Därför kan elen inte gå från `5V` till `GND` igenom lysdioden och motståndet.

Det långa benet av en lysdiod skall vara kopplat till 5V.





## 3.17. Krets 15

Kolla på den här kretsen:

![](anslutning_av_en_lysdiod_15.png)


Tror du att lysdioden kommer att lysa? Varför?
Bygg upp kretsen och kontrollera!

### Svar

Lysdioden ska inte lysa, för att riktningen av lysdioden är fel.
Därför kan elen inte gå från `5V` till `GND` igenom lysdioden och motståndet.

Det långa benet av en lysdiod skall vara kopplat till 5V.

## 3.18. Slutuppgift

1. Fråga någon för att examinera. Den där person får inte hjälpa dig.

Upprepa fem gånger:

2. Examinerare väljer en ritning fråm den här lektionen och gömmer svaret.
   Hen frågar om du tror att kretsen kommer att fungera, och du svarar ja eller nej.
   Bygg upp kretsen för att kontrollera ditt svar.

Klarar du minst fyra av fem, har du klarat slutuppgiften!

