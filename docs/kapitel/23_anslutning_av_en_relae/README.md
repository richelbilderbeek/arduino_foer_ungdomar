# Lektion 23: Anslutning av en relä

En relä är liksom en knapp som kan blir tryckt elektroniskt.
Vi behöver relä om vi vill skydda vär kära Arduino emot,
bland annat, DC motorer.

Under den här lektion ska vi ser hur den fungerar.

Vi använder en 4-relä kort: en kretskort som har fyra relä.

## 23.1. Koppla spänning till kretskorter

Koppla spänning till relä så här:

![23](23_ansluting_av_en_relae_power.png)

- Koppla `5V` av Arduino med `VCC` av kretskortet
- Koppla `GND` av Arduino med `GND` av kretskortet

Koppla en lysdiod till reläen som här:

![23](23_ansluting_av_en_relae_one_led.png)

![Bild](EmojiSunglasses.png) | Vi kann koppla nästan allt till en relä: elkretsar är separata!
:-------------:|:----------------------------------------:

![Bild](EmojiBowtie.png) | Självklart använder *vi* bara spänning under 12 volt!
:-------------:|:----------------------------------------:

- Koppla `5V` av batteriet till den långa benen av lysdiodedn
- Koppla korta benen av lysdioden till den ena sida av en 1000 Ohm motstånd
- Koppla den andra sidan av motståndet till hål 3 (den hål mest uppe på figuren)
  av relä 1 
  (den relä mest nere på figuren)
- Koppla `GND` av batteriet med hål 2 av relä 1

Lyser lysdioden? Varför?

\pagebreak

### 23.1. Svar

Nej, den lyser inte. Vi har sett det i före lektion också.

## 23.2.

Koppla `GND` av Arduino med `IN1` av reläkortan.

Vad ser och hör du när du gör det?

![Koppla `GND` av Arduino med `IN1` av reläkortan](23_ansluting_av_en_relae_connect_1_pin.png)

\pagebreak

### 22.2. Svar

Du hör ett klick och en lysdiod (med namnet `D5`)
på kortan börjar att lysa.

Också lysdioden vi har kopplat lyser nu!

## 23.3 Två lysdioder

Bygg den kretsen här:

![](23_ansluting_av_en_relae_pre_h_bridge.png)

- Koppla `5V` av batteriet till den ena sida av en 1000 Ohm motstånd
- Koppla den andra sidan av motståndet till det långa benet
  av den blåa lysdiod
- Koppla det korta benet av den blåa lysdiod till `GND` av batteriet
- Koppla det korta ben av en grönt lysdiod till den långa ben av den blåa
  lysdiod.
- Koppla det långa ben av en grönt lysdiod till den korta ben av den blåa
  lysdiod.

Hur mycket lysdioder ska lyser? Varför?

\pagebreak

### 23.3. Svar

En av dem två. Bara en lysdiod lyser för at el har bar en riktning at
gå igenom en lysdiod. För att lysdioderna har olika riktningar,
kan bara en av dem lysa samtidigt.

## 23.4 Den andra lysdiod

Andrar två sladder för att får den andra lysdiod att lysa.

\pagebreak

### 23.4. Svar

Det finns två sladdar kopplat till lysdiodernas ben. Bytta
sladdarna för att vara kopplat till
den tvärtomma <!-- en bra gissning, eller hur! --> ben.

## 23.5. En H brygga

Vi ska nästan bygga en H brygga. 
En H brygga gör det möjligt att el kan styras att går åt båda hål
i en elkrets. Den behöver vi för en DC motor som kan gå fram
och tillbaka!

För att förstå en H brygga,
kolla på den schematiskt ritning här:

![23](23_ansluting_av_en_relae_h_bridge_schematic_2.png)

<!-- Image from https://www.build-electronic-circuits.com/h-bridge/ -->

Schemat ser litegrann ut som bokstavet `H`.

Jag har tagit schemat från [en Engelska Arduino kurs](https://www.build-electronic-circuits.com/h-bridge/)
och den är lite mer formellt:

<!-- markdownlint-disable MD013 --><!-- Table rows must be put on one line, hence 80 chars is unavoidable -->

Tecken|Betydelse
------|------------------------------------------------------------------------------------------------
`VCC` |Matspänningen, t.ex. `5V` av en Arduino, eller `+` av en batteri
`S1`  |`S` är Engelska för 'switch', som är en knapp, relä eller något annat som kan vara på eller av

<!-- markdownlint-enable MD013 -->

Elen går, som alltid,
från plus (dvs `VCC`) till minus (dvs `GND`). Den sladdar med numrarna
kan vara kopplade ja eller nej, likadant effect som att en knapp
är tryckt eller ej.

- I vilken riktning går elen när S1 och S4 är kopplade?
- I vilken riktning går elen när S2 och S3 är kopplade?
- Vad händer när bara S1 och S3 är kopplade?
- Vad händer när bara S2 och S4 är kopplade?
- Varför är en H brygga farligt?

\pagebreak

### 23.5. Svar

Kopplat 1|Kopplat 2|Effect
---------|---------|--------------------------------------
S1       |S4       |Elen går högeråt igenom mittendelen
S2       |S3       |Elen går vänsteråt igenom mittendelen
S1       |S3       |Kortslutning!
S2       |S4       |Kortslutning!

En H brygga är farligt för att det är lätt möjligt att får kortslutning.

![Bild](EmojiSmiley.png) | Kortslutning betyder att el kan går fritt (dvs utan motstånd) från plus till minus
:-------------:|:----------------------------------------:

![Bild](EmojiSunglasses.png) | Fritt gående el värmer upp sladderna
:-------------:|:----------------------------------------:

![Bild](EmojiBowtie.png) | Om din elkrets blir varmt, stäng av elen genast!
:-------------:|:----------------------------------------:

 
## 23.6. En H brygga

Nu byggar vi H bryggan på riktigt:

![23](23_ansluting_av_en_relae_h_bridge_numbered_wires.png)

Vilken relä tillhör vilken sladd i schemat i senaste frågan?
Det är den blåa lysdiod som är viktigast.

Relais|Sladd
------|-----
S1    |?
S2    |?
S3    |?
S4    |?

![Bild](EmojiSunglasses.png) | Det är förvirrande at 'S1' tillhör en relä (istället av en sladd). Inget problem för oss då!
:-------------:|:----------------------------------------:

### 23.6. Svar

Relais|Sladd |Varför
------|------|--------------------------------------------------------------------
S1    |4     |Kopplat till GND och korta benet av blåa motstånd
S2    |1     |Kopplat till 5V och långa benet av blåa motstånd
S3    |3     |Kopplat till GND och 'fel minus sida' (långa benet) av blåa motstånd
S4    |2     |Kopplat till 5V och 'fel plus sida' (korta benet) av blåa motstånd

## 23.7. Slutupgift

20 minuter.

- Bygg upp H bryggan från början
- Lysa den blåa ljusdiod. Berätta hör elen går igenom elkretset
- Lysa den gröna ljusdiod. Berätta hör elen går igenom elkretset
