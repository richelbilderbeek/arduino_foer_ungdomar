# Lektion 14: Anslutning av en joystick

Under den här lektionen ska vi ansluta en joystick till en RGB lysdiod!

## 14.1. Att koppla en joystick till en RGB ljusdiod

![Schemat av kopplingen](anslutning_av_en_joystick_naiv.png)

> Schemat av kopplingen

Koppla tillsammans som schemat och koppla Arduino till en dator.
Det längsta benet på RGB ljusdioden ska kopplas till GND.

- Vad tror du kommer att hända?
- Om du använder joysticken, vad händer i verkligheten?
- Händer något om du drar i joysticken?
- Händer något om du trycker på joysticken?

\pagebreak

### 14.1. Svar

Rörandet på joysicken gör vad man kan föreställa sig:
du ska ser att ljusdioder byter färg mellan röd, grön och en
blanding av båda.

Om du trycker på joysticken händer ingenting.
Det är för att knappen i joysticken funkar på ett annat sätt.

## 14.2. Att koppla en joystick till en RGB ljusdiod, igen

![Schemat av kopplingen](anslutning_av_en_joystick_smart.png)

> Schemat av kopplingen

Bygg om strömkretsen till den här bilden.

Funkar knappen av joysticken nu?

\pagebreak

### 14.2. Svar

Japp, nu funkar knappen av joysticken.

## 14.3. Hur funkar knappen av joysticken?

Kolla på den här bild:

![Anslutning av en joystick](anslutning_av_en_joystick_knapp_annotated.png)

> Allt el kommer igenom sladd 1.
> Där väljer den den väg med lågsta motstånd.
> Om knapper är tryckt, sladd 2 har lågsta motstånd:
> el kan går genom knappen utan problem.
> Om knapper är inte tryckt, sladd 3 har lågsta motstånd:
> el kan inte genom knappen längre.

\pagebreak

Här kann du ser motstånd mellan SW (av joysticken)
och GND (av joysticken), beroende om joysticken är tryckt:

Tryckt?|Motstånd mellan GND och SW
-------|--------------------------
Nej    |Stor
Ja     |Låg

El föredra vägen med minsta motstånd.
Om knappen är tryckt, är vägen med minsta motstånd igenom ljusdioden.
Om knappen är ej tryckt, är vägen med minsta motstånd igenom joysticken.

Gör:

- Tar ur joystick (eller tar en andra)
- kontrollera den här berättelse med en multimeter

\pagebreak

### 14.3. Svar

Om du mäter motståndet mellan GND (av joysticken) och SW (av joysticken),
mäter du:

- om knapper är tryckt: en lite värd, typ 0,5 Ohm
- om knapper är ej tryckt: 'Inf' eller en hög värd

## 14.4. Slutuppgift

Ta bort alla sladdar.

Läs igenom slutuppgiften först, för du har 10 minuter på dig.

- Steg 1: Fråga någon för att få göra provet. Den personen får inte hjälpa dig.

Starta en timer och gör följande:

- Steg 2: Koppla allt tillsammans igen
- Steg 3: Visar att joystick funkar: båda om du vrider och om du trycker på knappen
- Steg 4: Berätta hur elen gå igenom kretsen om du trycker knappen eller ej
