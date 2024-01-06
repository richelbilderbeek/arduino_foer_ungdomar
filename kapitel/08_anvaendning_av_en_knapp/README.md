# Lektion 8: Användning av en knapp

Under den här lektionen ska vi ansluta knappar till en Arduino!

## 8.1: Krets 1

Bygg upp den här kretsen:

![](anvaendning_av_en_knapp_1.png)

Vila lysdioder skulle alltid lysa? Gör knapporna nåt? 

\pagebreak

### Svar

Lysioden åt vänster skulle alltid lysa.
Lysioderna åt höger skulle lysa om du trycker knappen den är anslutna till.

Om inte, fråga om hjälp!

## 8.2: Krets 2

Bygg upp den här kretsen:

![](anvaendning_av_en_knapp_2.png)

Vila lysdioder skulle alltid lysa? Gör knapporna nåt? 

\pagebreak

### Svar

Lysioden åt vänster kanske lyser, kanske inte: det beror på programmet på Arduinon.

Lysioderna åt höger skulle lysa om du trycker knappen den är anslutna till.

Om inte, fråga om hjälp!

## 8.3: Kod 1

Uploada den här koden:

```c++
void setup() 
{
  pinMode(A0, INPUT);
  pinMode(A1, INPUT);
  pinMode(13, OUTPUT);
}

void loop() 
{
  if (digitalRead(A0)) {
    digitalWrite(13, HIGH);
  }
}
```

Vad gissar du att koden gör? Vad händer? Varför?

### Svar

På början lyser lysdioden inte.
Om du trycker på vänsterknappen lyser upp lysdioden för evigt.
Högerknappen gör ingenting.

## 8.3: Kod 2

Uploada den här koden:

```c++
void setup() 
{
  pinMode(A0, INPUT);
  pinMode(A1, INPUT);
  pinMode(13, OUTPUT);
}

void loop() 
{
  if (digitalRead(A1)) {
    digitalWrite(13, HIGH);
  }
}
```

Vad gissar du att koden gör? Vad händer? Varför?

### Svar

På början lyser lysdioden inte.
Om du trycker på högerknappen lyser upp lysdioden för evigt.
Vänsterknappen gör ingenting.


## 8.3: Kod 3

Uploada den här koden:

```c++
void setup() 
{
  pinMode(A0, INPUT);
  pinMode(A1, INPUT);
  pinMode(13, OUTPUT);
  digitalWrite(13, HIGH);
}

void loop() 
{
  if (digitalRead(A0)) {
    digitalWrite(13, LOW);
  }
}
```

Vad gissar du att koden gör? Vad händer? Varför?

### Svar

På början lyser lysdioden.
Om du trycker på vänsterknappen släcker lysdioden för evigt.
Högerknappen gör ingenting.

## 8.4: Kod 4

Uploada den här koden:

```c++
void setup() 
{
  pinMode(A0, INPUT);
  pinMode(A1, INPUT);
  pinMode(13, OUTPUT);
}

void loop() 
{
  if (digitalRead(A0)) {
    digitalWrite(13, LOW);
  }
  if (digitalRead(A1)) {
    digitalWrite(13, HIGH);
  }
}
```

Vad gissar du att koden gör? Vad händer? Varför?

### Svar

På början lyser lysdioden inte.
Om du du trycker på vänsterknappen, lyser lysdioden för evigt.
Om du du trycker på högerknappen, släcker lysdioden för evigt.

## 8.5: Kod 5

Uploada den här koden:

```c++
void setup() 
{
  pinMode(A0, INPUT);
  pinMode(A1, INPUT);
  pinMode(13, OUTPUT);
}

void loop() 
{
  digitalWrite(13, LOW);
  if (digitalRead(A0)) {
    digitalWrite(13, HIGH);
  }
}
```

Vad gissar du att koden gör? Vad händer? Varför?

### Svar

På början lyser lysdioden inte.
Om du du trycker på vänsterknappen, lyser lysdioden så länge du håller knappen intryckt.
Högerknappen gör ingenting.

## 8.6: Kod 6

Uploada den här koden:

```c++
void setup() 
{
  pinMode(A0, INPUT);
  pinMode(A1, INPUT);
  pinMode(13, OUTPUT);
}

void loop() 
{
  digitalWrite(13, LOW);
  if (digitalRead(A0)) {
    if (digitalRead(A1)) {
      digitalWrite(13, HIGH);
    }
  }
}
```

Vad gissar du att koden gör? Vad händer? Varför?

### Svar

På början lyser lysdioden inte.
Om du du trycker på båda knappor, lyser lysdioden så länge du håller båda intryckt.

## 8.7: Kod 7

Uploada den här koden:

```c++
void setup() 
{
  pinMode(A0, INPUT);
  pinMode(A1, INPUT);
  pinMode(13, OUTPUT);
}

void loop() 
{
  digitalWrite(13, LOW);
  if (digitalRead(A0)) {
    digitalWrite(13, HIGH);
  }
  if (digitalRead(A1)) {
    digitalWrite(13, HIGH);
  }
}
```

Vad gissar du att koden gör? Vad händer? Varför?

### Svar

På början lyser lysdioden inte.
Om du du trycker på en av båda knappor, 
lyser lysdioden så länge du håller en av båda intryckt.

## 8.8: Kod 8

Uploada den här koden:

```c++
void setup() 
{
  pinMode(A0, INPUT);
  pinMode(A1, INPUT);
  pinMode(13, OUTPUT);
}

void loop() 
{
  digitalWrite(13, HIGH);
  if (digitalRead(A0)) {
    digitalWrite(13, LOW);
  }
  if (digitalRead(A1)) {
    digitalWrite(13, LOW);
  }
}
```

Vad gissar du att koden gör? Vad händer? Varför?

### Svar

På början lyser lysdioden.
Om du du trycker på en av båda knappor, 
släcker lysdioden så länge du håller en av båda intryckt.

## 8.13: Slutuppgift

Försammla:

 * 1 dator
 * 1 Arduino
 * 1 USB sladd
 * 1 kopplingsdäck
 * 3 1.000 Ohm motstånd
 * 3 lysdiod
 * tillräckligt mycket sladdar

På dator: har redo koden!

Läs slutuppgift först, för att du har 15 minuten.

1. Fråga någon för att examinera. Den där person får inte hjälpa dig!

Start en timer och gör följande:

2. Bygg upp krets 2 från början

3. Fråga examinerare hur lysdiod skulle reagera. Examinerare får väljer en av den här:

- På början lyser lysdioden. Om du trycker på vänsterknappen släcker lysdioden för evigt. Högerknappen gör ingenting.
- På början lyser lysdioden inte. Om du du trycker på vänsterknappen, lyser lysdioden för evigt. Om du du trycker på högerknappen, släcker lysdioden för evigt.
- På början lyser lysdioden inte. Om du du trycker på båda knappor, lyser lysdioden så länge du håller båda intryckt.
- På början lyser lysdioden. Om du du trycker på en av båda knappor, släcker lysdioden så länge du håller en av båda intryckt.
- På början lyser lysdioden inte. Om du du trycker på en av båda knappor, lyser lysdioden så länge du håller en av båda intryckt.
- På början lyser lysdioden inte. Om du du trycker på vänsterknappen, lyser lysdioden så länge du håller knappen intryckt. Högerknappen gör ingenting.

