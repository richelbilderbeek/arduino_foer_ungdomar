# Lektion 40: ArduinoISP

Under den här lektionen ska vi bränna en bootloader på en ATMega328 chip,
med slutmålet att har en 'bare bone Arduino' (som är nästa lektion).

## 40.1. Ladda up ISP kod

!['ArduinoISP' exempel code](arduino_ide_example.png)

> Den 'ArduinoISP' exempel code

Ladd up 'ArduinoISP' på en Arduino UNO.

## 40.2. Anslutning

![Den hela stromkrets](ansluting_allt.png)

> Den hela stromkrets

Bygga up den stromkrets, från bilden uppåt
eller från tabellen nedåt.

Sändare|Mottagare
-------|----------
5V     |5V
GND    |GND
10     |RESET
11     |11
12     |12
13     |13

> Förbindningar

Glöm inte: mottagare skulle ha en löstagbar chip!

## 40.3. Bränna bootloader

![Bränna bootloader](arduino_ide_burn_bootloader.png)

> Bränna bootloader

- I Arduino IDE, sätter 'Programmer' till 'Arduino as ISP'
- Klick 'Burn Bootloader'

På botten skulle kommer ingen felmeldning.

## 40.4. Slutuppgift

Ladda upp en bootloader och övertyger att den funkade.
