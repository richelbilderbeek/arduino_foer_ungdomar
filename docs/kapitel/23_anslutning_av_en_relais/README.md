# Lektion 23: Anslutning av en relais

En relais är liksom en knapp som kan blir tryckt elektroniskt.
Vi behöver relais om vi vill skydda vär kära Arduino emot,
bland annat, DC motorer.

Under den här lektion ska vi ser hur den fungerar.

Vi använder en 4-relais kort: en kretskort som har fyra relais.

## 23.1. Koppla spänning till kretskorter

Koppla spänning till relais så här:

![23](23_ansluting_av_en_relais_power.png)

- Koppla `5V` av Arduino med `VCC` av kretskortet
- Koppla `GND` av Arduino med `GND` av kretskortet

Koppla en lysdiod till relaisen som här:

![23](23_ansluting_av_en_relais_one_led.png)

![Bild](EmojiSunglasses.png) | Vi kann koppla nästan allt till en relais: elkretsar är separata!
:-------------:|:----------------------------------------:

![Bild](EmojiBowtie.png) | Självklart använder *vi* bara spänning under 12 volt!
:-------------:|:----------------------------------------:

- Koppla `5V` av batteriet till den långa benen av lysdiodedn
- Koppla korta benen av lysdioden till den ena sida av en 1000 Ohm motstånd
- Koppla den andra sidan av motståndet till hål 3 (den hål mest uppe på figuren)
  av relais 1 
  (den relais mest nere på figuren)
- Koppla `GND` av batteriet med hål 2 av relais 1

Lyser lysdioden? Varför?

### 23.1. Svar

Nej, den lyser inte. Vi har sett det i före lektion också.

## 23.2.

Koppla `GND` av Arduino med `IN1` av relaiskortan.

Vad ser och hör du när du gör det?

![Koppla `GND` av Arduino med `IN1` av relaiskortan](23_ansluting_av_en_relais_connect_1_pin.png)

### 22.2. Svar

Du hör ett klick och en lysdiod (med namnet `D5`)
på kortan börjar att lysa.

Också lysdioden vi har kopplat lyser nu!

## 23.3. En H brygga

Build the following schematic. It is called an H bridge.
It has two LEDs in opposite directions.
All four pins of the relais can now be used.

![23](23_ansluting_av_en_relais_h_bridge.png)

- Which two pins need to be connected to GND to make the blue LED light up?
- Which two pins need to be connected to GND to make the green LED light up?

Exam:

- Explain on the drawing how the H bridge works
- Build the H bridge
- Light up the blue LED
- Light up the green LED
