# Lektion 26: Anslutning av en DC motor

En DC motor är en motor som framåt när den får spänning
och åker bakåt när spänningen är tvärtom.

Man får aldrig koppla en DC motor till en Arduino,
även när motorn använder 5 volt!

Men, med ett relä kan man styra en DC motor ändå.
Under den här lektionen ska vi göra detta.

Vi använder ett 4-relä kort: ett kretskort som har fyra reläer.

## 26.1. Koppla spänning till kretskortet

Koppla spänning till reläerna så här:

![26.1. Koppla spänning till kretskortet](26_anslutning_av_en_dc_motor_1_knapp_1.png)

- Koppla `5V` på Arduino med `VCC` på kretskortet
- Koppla `GND` på Arduino med `GND` på kretskortet

Koppla en DC motor till relä 1 med en knapp så här:

![26.1](26_anslutning_av_en_dc_motor_1.png)

![Bild](EmojiSunglasses.png) | Vi kan koppla nästan vad som helst till ett relä: elkretsarna är separata!
:-------------:|:----------------------------------------:

![Bild](EmojiBowtie.png) | Självklart använder *vi* bara spänning under 12 volt!
:-------------:|:----------------------------------------:

- Koppla `+` från 9V-batteriet till det långa benet på lysdioden
- Koppla det korta benet på lysdioden till ena sidan av ett 1000 Ohm motstånd
- Koppla den andra sidan av motståndet till hål 3 (det hål längst upp på figuren)
  på relä 1
  (reläet längst ner på figuren)
- Koppla `-` från 9V-batteriet med hål 2 på relä 1

Kör DC motor lysdioden? Varför?

\pagebreak

### 26.1. Svar



![26.1. Koppla spänning till kretskortet](26_anslutning_av_en_dc_motor_1_knapp_2.png)

![26.1](26_anslutning_av_en_dc_motor_2.png)

![26.1. Koppla spänning till kretskortet](26_anslutning_av_en_dc_motor_2_knapp_4.png)

![26.1](26_anslutning_av_en_dc_motor_4.png)
