# Lektion 30: Användning av en avståndssensor

En avståndssensor är en modul som kan känna om det finns en objekt
före den.

Under den här lektionen ska vi koppla en avståndssensor till en Arduino
och använda den på att smidigt sätt.

## 30.1. Vad att koppla till stift 13

Anslut en Arduino till en avståndssensor och lysdiod så här:

![30.1. Anslut en Arduino till avståndssensor och lysdiod](30_anvaendning_av_en_avstaandssensor.png)

Vi ser att utgången av avståndssensor är kopplat till stift 13.
Vi vet att stift 13 är också kopplad till den lysdioden
som är inbyggd in Arduinon.

Varför är det klokt att koppla avståndssensorn till stift 13 (istället
för att koppla den röda lysioden)?

\pagebreak

## Svar

Det är klokt att koppla avståndssensorn till stift 13,
så att vi kan ser **mer**: den inbyggda lysioden visar när
avståndssensorn ger en signal.

Hade vi kopplat den röda lysdioden kopplat till stift 13,
ser vi när Arduino schickar en signal till lysdioden.
Att visar när en signal till lysdioden händer är dubbelt,
för att en lysdiod lyser redan själva :-) .

## 30.2. Att ladda upp koden

Laddar upp följande kod:

```c++
int n = 0;

void setup()
{
  pinMode(12, OUTPUT);  
  pinMode(13, INPUT);  
}

void loop()
{
  if (digitalRead(13))
  {
    n = 100;
    digitalWrite(12, HIGH);
  }
  n = n - 1;
  if (n == 0)
  {
    digitalWrite(12, LOW);    
  }
  delay(1);  
}
```

Vad händer?

\pagebreak

### Svar

Lysdioden lyser när inget är i närheten
och släcker när något är nära.

## 30.3. Vad gör saker 1?

Letar efter följande radet:

```c++
n = 100;
```

Andrar den till:

```c++
n = 1000;
```

Vad är annorlunda nu?

### Svar

Det tar (10 gånger) längra för lysdioden att släcka efter
en föremål har kommt för nära.

För att vara exakt: efter ändringen tar det
1000 gånger en `delay` av en millisekund -dvs en sekund!-
för lysioden att släcka.

## 30.4. Vad gör saker 2?

Letar efter följande radet:

```c++
delay(1);  
```

Andrar den till:

```c++
delay(10);  
```

Vad är annorlunda nu?

### Svar

Det tar (10 gånger) längra för lysdioden att släcka efter
en föremål har kommt för nära.

För att vara exakt: efter ändringen tar det
100 gånger en `delay` av 10 millisekund -dvs en sekund!-
för lysioden att släcka.

## 30.5. Slutuppgift

Andrär koden så att det tar fyra sekunder för lysdioden att släcka
efter en föremål har kommt för nära.
