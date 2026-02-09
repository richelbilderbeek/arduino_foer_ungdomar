# Lektion 25: Mätning av en DC-motor

En DC-motor är en motor som snurrar framåt när den får spänning
och bakåt när spänningen vänds om.

Man får aldrig koppla en DC-motor direkt till en Arduino,
inte ens om motorn använder 5 volt!

<!--

Den maximala ström som ett Arduino‑stift får belastas med är 40 mA.

U = I * R
5V = 0.040 A * R
R = 5 V / 0.040 A = 125 Ohm

-->

Under den här lektionen **mäter** vi varför
man aldrig får koppla en DC-motor direkt till en Arduino.

<!-- För att en DC motor ger spänning! -->

## 25.1. Att koppla ett oscilloskop till en LDR

Koppla ett oscilloskop till samma ben på en LDR.
Ställ in oscilloskopet att mäta spänning.

![Schematiskt](25_maetning_av_en_dc_motor_koppling_1.png)

![På riktigt](25_maetning_av_en_dc_motor_ldr_1_real.jpg)

Mät spänningen. Försök förklara vad du mäter.

![Bild](EmojiBowtie.png) | Tips: oscilloskop är inte perfekta!
:-------------:|:----------------------------------------:

### 25.1. Svar

I grunden mäter du noll volt: en LDR ger ingen spänning.

Men du ser ändå en spänning på cirka 5 millivolt.
Det är konstigt, eftersom en LDR inte ger någon spänning...

![Mätning](25_maetning_av_en_dc_motor_ldr_1_oscilloscope.jpg)

Men det är oscilloskopet som orsakar detta!
Du mäter bakgrundsspänning från oscilloskopet:
ett oscilloskop är en maskin som inte är perfekt.

## 25.2. Att koppla ett oscilloskop till båda benen på en LDR

Koppla ett oscilloskop till båda benen på en LDR.
Ställ in oscilloskopet att mäta spänning.

![Schematiskt](25_maetning_av_en_dc_motor_koppling_2.png)

![På riktigt](25_maetning_av_en_dc_motor_ldr_2_real.jpg)

Mät spänningen medan du lyser på/skuggar LDR:en.
Ser du någon skillnad? Varför?

### 25.2. Svar

I grunden mäter du noll volt: en LDR ger ingen spänning.
Men, som sagt, du mäter ändå bakgrundsspänning från oscilloskopet.

![Mätning](25_maetning_av_en_dc_motor_ldr_2_oscilloscope.jpg)

Om du lyser på eller skuggar LDR:en händer ingenting: både med och utan ljus
ger en LDR ingen spänning.

Men om du håller din hand nära syns en liten skillnad,
men det beror inte på LDR:en: det beror på din hand (!)

![Bild](EmojiBowtie.png) | I boken 'Kapacitativ knapp' använder vi den här principen!
:-------------:|:----------------------------------------:


## 25.3. Att koppla ett oscilloskop till en DC-motor

Koppla ett oscilloskop till en DC-motor.

Ställ in oscilloskopet att mäta spänning.

![Schematiskt](25_maetning_av_en_dc_motor_koppling_3.png)

![På riktigt](25_maetning_av_en_dc_motor_dc_motor_real.jpg)

Vrid motorn för hand. Vad händer?

\pagebreak

### 25.3. Svar

När du vrider motorn ger den en spänning:

![Mätning](25_maetning_av_en_dc_motor_dc_motor_osciloscope_fine_scale.jpg)

Om du gör skalan lite bredare (t.ex. 100 mV) syns det bättre:

![Mätning](25_maetning_av_en_dc_motor_dc_motor_oscilloscope_wide_scale.jpg)

## 25.4. Varför en DC-motor skadar en Arduino

Titta igen på mätningen:

![Mätning](25_maetning_av_en_dc_motor_dc_motor_oscilloscope_wide_scale.jpg)

Det finns en vertikal linje som går mycket långt ner, över hälften av höjden.
Vad betyder detta?

\pagebreak

### 25.4. Svar

Den vertikala linjen betyder att spänningen ändras från plus 150 millivolt
till **minus** 30 millivolt. Det betyder att strömmen byter riktning!

Eftersom strömriktningen vänder kan en DC-motor skada en Arduino.

![Bild](EmojiBowtie.png) | Koppla alltid Arduino och DC-motor separerade!
:-------------:|:----------------------------------------:

![Bild](EmojiSunglasses.png) | Använd reläer för att skydda din Arduino
:-------------:|:----------------------------------------:

## 25.5 Slutuppgift

- Visa bakgrundsspänning från en LDR
- Visa hur en DC-motor kan skada en Arduino
