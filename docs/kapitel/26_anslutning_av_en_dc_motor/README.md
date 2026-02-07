# Lektion 26: Anslutning av en DC-motor

En DC-motor är en motor som snurrar framåt när den får spänning
och bakåt när spänningen vänds om.

Man får aldrig koppla en DC-motor direkt till en Arduino,
inte ens om motorn använder 5 volt!

Men med ett relä kan man styra en DC-motor ändå.
Under den här lektionen ska vi göra just det.

Vi använder ett 4-relä-kort: ett kretskort som har fyra reläer.

\pagebreak

## 26.1. En knapp styr ett relä

Koppla reläkortet till Arduinon så här:

![26.1. Koppla spänning till kretskortet](26_anslutning_av_en_dc_motor_1_knapp_1.png)

- Koppla `5V` på Arduino till `VCC` på reläkortet
- Koppla `GND` på Arduino till `GND` på reläkortet
- Koppla `GND` till ena sidan av knappen
- Koppla `IN1` på reläkortet till andra sidan av knappen

Vad händer när man trycker på knappen? Varför?

\pagebreak

### 26.1 Svar

Relä 1 klickar.

Det beror på att stift `IN1` kopplas till `GND` när knappen är nedtryckt.

\pagebreak

## 26.2. Ett relä styr en DC-motor

Här använder vi ett 9V-batteri och en DC-motor.

Koppla den enkla kretsen som här:

![26.1](26_anslutning_av_en_dc_motor_1.png)

![Bild](EmojiSunglasses.png) | Vi kan koppla nästan vad som helst till ett relä: elkretsarna är separerade!
:-------------:|:----------------------------------------:

![Bild](EmojiBowtie.png) | Ett batteri har inget problem med den negativa spänning som en DC-motor orsakar
:-------------:|:----------------------------------------:

Vad händer om man trycker på knappen? Varför?

\pagebreak

### 26.2. Svar

DC-motorn börjar snurra.

När man trycker på knappen sluts relä 1.
När relä 1 är slutet blir kretsen komplett och DC-motorn kan snurra.

## 26.3. Två reläer styrs av en knapp

Koppla till en sladd för styrning av reläkortet:

![26.1. Koppla spänning till kretskortet](26_anslutning_av_en_dc_motor_1_knapp_2.png)

Vad händer nu om man trycker på knappen?

\pagebreak

### 26.3. Svar

När man trycker på knappen klickar både relä 1 och 2 samtidigt.

## 26.4. Hälften av en H-brygga

Nu bygger vi första hälften av en H-brygga:

![26.1](26_anslutning_av_en_dc_motor_2.png)

Vad är meningen med en H-brygga igen?

\pagebreak

### 26.4. Svar

Målet med en H-brygga är att möjliggöra att ström kan gå
igenom något i båda riktningarna.

## 26.5. Två knappar som aldrig får tryckas in samtidigt

Koppla till en knapp till, som styr relä 3 och 4:

![26.1. Koppla spänning till kretskortet](26_anslutning_av_en_dc_motor_2_knapp_4.png)

Varför får man aldrig trycka på båda knapparna i en H-brygga?

\pagebreak

### 26.5. Svar

För att det orsakar kortslutning.

![Bild](EmojiBowtie.png) | Om något blir hett, ta genast bort batteriet!
:-------------:|:----------------------------------------:

## 26.6. En H-brygga med en DC-motor

Komplettera H-bryggan:

![26.1](26_anslutning_av_en_dc_motor_4.png)

Varför får man aldrig trycka på båda knapparna i en H-brygga?

Nu kan du styra DC-motorn åt båda hållen! Grattis!

\pagebreak

### 26.6. Svar

För att det orsakar kortslutning.

![Bild](EmojiBowtie.png) | Om något blir hett, ta genast bort batteriet!
:-------------:|:----------------------------------------:

## 26.7 Slutuppgift

- Ta bort alla sladdar och komponenter
- Bygg upp hela kretsen på 25 minuter
- Förklara varför man aldrig får trycka på båda knapparna i en H-brygga
- Förklara hur man kan känna att det är kortslutning
- Visa att du kan styra DC-motorn åt båda hållen
- Visa hur man hanterar kortslutning
