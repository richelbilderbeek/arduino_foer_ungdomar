# Lektion 7: Anslutning av en knapp

Under den här lektionen ska vi ansluta en knapp till en Arduino!

## 7.2. Anslut motstånden och lysdioden

Kolla på den här bilden:

![](anslutning_av_en_knapp_1.png)

Den fyra långa horizontella rad av hål är kallad 'kraftremsor'.

 * Två remsor levererar 5V spänning. 
   Ofta har den an linje brevid sig med som är röd
 * Två remsor fungerarar som jord eller GND.
   Ofta har den an linje brevid sig med som är svart eller blå

Försök svara:

 * Vad gör sladden mellan 5V av Arduino och kopplingsdäcket?
 * Vad gör sladden mellan GND av Arduino och kopplingsdäcket?
 * Vad gör sladden mellan 5V kraftremsor?
 * Vad gör sladden mellan GND kraftremsor?


### Svar

Sladden mellan 5V av Arduino och kopplingsdäcket
få att kopplingsdäck har 5V spänning.

Sladden mellan GND av Arduino och kopplingsdäcket
få att kopplingsdäck har tillgång till jord/GND.

Sladden mellan 5V kraftremsor gör 
att båda 5V kraftremsor har 5V spänning.

Sladden mellan GND kraftremsor gör 
att båda GND kraftremsor har jord/GND.

## 7.3. Anslut motstånden och lysdioden

Nu är det dags att bygga kretsen på riktigt:

![](anslutning_av_en_knapp_1.png)

 * Koppla ur USB-kabeln från datorn, så att Arduino inte längre har ström
 * Montera kretsen enligt bild
 * Sätt tillbaka USB-kabeln i datorn

![](EmojiBowtie.png) | Det böjda benet i ritningen symboliserar det längre benet på en lysdiod
:-------------:|:----------------------------------------: 

Lyser lysdioden?

Bygg ihop kretsen och kontrollera!

### Svar

Elen kan gå från `5V` till 5 voltskraftrems, igenom lysdioden och motståndet,
till jordenskraftrems och till `GND`.

Så ja, det funkar! Om inte, fråga om hjälp!

\pagebreak

## 7.4. Krets 2

Kolla på den här kretsen:

![](anslutning_av_en_knapp_2.png)

Nu finns två lysdioder!

Tror du att lysdioder kommer att lysa? Varför?

Bygg ihop kretsen och kontrollera!

### Svar

Lysdioder kommer båda att lysa, för att varje en
har tillgång till `5V` och jord tack vore kraftremsorna.

Så ja, det funkar! Om inte, fråga om hjälp!

## 7.5. Krets 3

Kolla på den här kretsen:

![](anslutning_av_en_knapp_3.png)

Lysdioden är kopplad rätt igen, men motståndet är vridet tvärtom!

Tror du att lysdioden kommer att lysa? Varför?
Bygg ihop kretsen och kontrollera!

### Svar

Lysdioder kommer alla tre att lysa, för att varje en
har tillgång till `5V` och jord tack vore kraftremsorna.

Så ja, det funkar! Om inte, fråga om hjälp!

## 7.6. Slutuppgift

Försammla:

 * 1 dator
 * 1 Arduino
 * 1 USB sladd
 * 1 kopplingsdäck
 * 7 1.000 Ohm motstånd
 * 7 lysdiod
 * tillräckligt mycket sladdar

1. Fråga någon för att examinera. Den där person får inte hjälpa dig.

Start en timer på 10 minuten och gör följande:

2. Får 7 lysdioden att lysa
