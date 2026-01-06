# Lektion 26: Anslutning av en DC motor

En DC motor är en motor som framåt när den får spänning
och åker bakåt när spänningen är trärtom.

Man får aldrig koppla en DC motor **direkt** till en Arduino,
men en DC motor kan blir kopplad till ett relä (som är styrd av en Arduino).

Under den här lektion ska vi koppla en DC motor till ett reläs
(till en Arduino).

## 26.1. Blink

Anslut en Arduino till reläkortet som här:

![26.1. Anslut en Arduino till reläkortet](26_anvaendning_av_ett_relae_1_connection.png)

Anslut andra del av reläkortet till en batteri som här:

![26.1. Anslut reläkortet till batteriet](26_anvaendning_av_ett_relae_led_1_relay.png)

Skriv ett program som få lysdioden att blinka så här:

- lyser 5 sekund
- släcker 1 sekund

![Bild](EmojiBowtie.png) | Ser up: reläet är kopplat till `10`
:-------------:|:----------------------------------------:

![Bild](EmojiSunglasses.png) | Kanske saker är tvärtom mot dina föreväntningar
:-------------:|:----------------------------------------:

### 26.1. Svar

```c++
void setup() {
  pinMode(10, OUTPUT);
}

void loop() {
  digitalWrite(10, HIGH);
  delay(1000);
  digitalWrite(10, LOW);
  delay(5000);
}
```

Tar notis om:

- Vi använder `10` för det är stiftet av Arduinon som är kopplat till relä 1
- Det ar `digitalWrite(10, LOW);` som sätter **på** lysdioden

## 26.2. Två relän

Vi bygger upp en H brygga gradvis (som vanligt). Nu tar vi nästa steg!

Anslut en Arduino till reläkortet som här:

![26.2. Anslut en Arduino till reläkortet](26_anvaendning_av_ett_relae_2_connections.png)

Anslut andra del av reläkortet till en batteri som här:

![26.2. Anslut reläkortet till batteriet](26_anvaendning_av_ett_relae_led_2 _relays.png)

Skriv ett program som få lysdioden att blinka så här:

- lyser 5 sekund
- släcker 1 sekund

### 26.2. Svar

```c++
void setup() {
  pinMode(10, OUTPUT);
}

void loop() {
  digitalWrite(10, HIGH);
  digitalWrite(11, HIGH);
  delay(1000);
  digitalWrite(10, LOW);
  digitalWrite(11, LOW);
  delay(5000);
}
```

Nu behövs båda stift 10 och 11 av Arduino.

## 26.3. Slutupgift

De här slutuppgift har ingen tajming.
Bara visar resultatet till en persom som får ger
en underskrift. Lyckas till!

Anslut en Arduino till reläkortet som här:

![26.3. Anslut en Arduino till reläkortet](26_anvaendning_av_ett_relae_4_connections.png)

Anslut andra del av reläkortet till en batteri som här:

![26.3. Anslut reläkortet till batteriet](26_anvaendning_av_ett_relae_led_4_relays.png)

Skriv ett program som få lysdioden att blinka så här:

- lyser blåa lysdioden 1 sekund
- släcker allt 1 sekund
- lyser gröna lysdioden 1 sekund
- släcker allt 1 sekund

Förklar varför det är viktigt at allt är släckt mellan lysningen?
Vad kan hända om vi det snabbare?

