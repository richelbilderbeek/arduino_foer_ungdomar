# Lektion 25: Mätning av en DC motor

En DC motor är en motor som framåt när den får spänning
och åker bakåt när spänningen är tvärtom.

Man får aldrig koppla en DC motor till en Arduino,
även när motorn använder 5 volt!

<!-- 

Maximum ström en Arduino stift får ger är 40 mA.

U = I * R
5V = 0.040 A * R
R = 5 V / 0.040 A = 125 Ohm

-->

Under den här lektionen **mäter** vi varför
vi får aldrig koppla en DC motor till en Arduino.

<!-- För att en DC motor ger spänning! -->

## 25.1. Att koppla en oscilloskop till en LDR

Koppla en oscilloskop till samma ben av en LDR.
Sätt oscilloskopen till att mäta spänning.

![Schematiskt](25_maetning_av_en_dc_motor_koppling_1.png)

![På riktigt](25_maetning_av_en_dc_motor_ldr_1_real.jpg)

Mäta spänningen. Försök förklara vad du mäter.

![Bild](EmojiBowtie.png) | Tips: oscilloskoper är inte perfekta!
:-------------:|:----------------------------------------:

### 25.1. Svar

I grunden mäter du noll volt: en LDR ger ingen spänning.

Men du ser ändå en spänning av 5 millivolt.
Det är konstigt, för att en LDR ger ingen spänning...

![Mätning](25_maetning_av_en_dc_motor_ldr_1_oscilloscope.jpg)

Men det är oscilloskopen som gör detta!
Du mäter bakgrundsspänning av oscilloskopen:
en oscilloskop är en maskin som är inte perfekt.

## 25.2.

Koppla en oscilloskop till den båda ben av en LDR.
Sätt oscilloskopen till att mäta spänning.

![Schematiskt](25_maetning_av_en_dc_motor_koppling_2.png)

![På riktigt](25_maetning_av_en_dc_motor_ldr_2_real.jpg)

Mäta spänningen under att du förljusa/förmörker ljusen. 
Ser du en skilnad? Varför?

### 25.2. Svar

I grunden mäter du noll volt: en LDR ger ingen spänning.
Men, som sagt, du mäter ändå backgrundsspänning av oscilloskopen.

![Mätning](25_maetning_av_en_dc_motor_ldr_2_oscilloscope.jpg)

Om du ljuser eller förmörker LDR gör ingenting: båda med eller utan ljus 
ger en LDR ingen spänning.

Andå, om du tar din hand nära finns en lite skilnad,
men det beror inte på LDRen: det är på grund av din hand (!)

![Bild](EmojiBowtie.png) | I boken 'Kapacitativ knapp' använder vi den här princip!
:-------------:|:----------------------------------------:


## 25.2. Att koppla en oscilloskop till en DC motor

Koppla en oscilloskop till en DC motor.

Sätt oscilloskopen till att mäta spänning.

![Schematiskt](25_maetning_av_en_dc_motor_koppling_3.png)

![På riktigt](25_maetning_av_en_dc_motor_dc_motor_real.jpg)

Vrida motor. Vad händer? 

### 25.3. Svar

När du vrider motorn ger det en spänning:

![Mätning](25_maetning_av_en_dc_motor_dc_motor_osciloscope_fine_scale.jpg)

Om du göra skalen lite bredare (t.ex. 100 mV) kan de ser bättre:

![Mätning](25_maetning_av_en_dc_motor_dc_motor_oscilloscope_wide_scale.jpg)

## 25.4. Varför en DC motor gör skada till en Arduino

Kolla igen på mätningen:

![Mätning](25_maetning_av_en_dc_motor_dc_motor_oscilloscope_wide_scale.jpg)

Det finns en vertikalt linje som går mycket ner, over hälften av höjden.
Vad betyder detta?

### 25.4. Svar

Den vertikala linje betyder att spänningen ändrar sig från plus 150 millivolt
till **minus** 30 millivolt. Det betyder att el går en annat riktning!

På grund av att elriktningen vrider om, gör en DC motor skada till en Arduino.

![Bild](EmojiBowtie.png) | Alltid seperar en Arduino och en DC motor!
:-------------:|:----------------------------------------:

![Bild](EmojiSunglasses.png) | Användt reläer för att skyddar din Arduino
:-------------:|:----------------------------------------:

## 25.5 Slutupgift

- Visa bakgrundsspänning av en LDR
- Visa hur en DC motor kan skada en Arduino








