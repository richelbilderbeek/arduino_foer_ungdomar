# Lektion 4: Användning av en lysdiod

Under den här lektionen ska vi använda en lysdiod med en Arduino!

## 4.1. Anslutning på 5V

Anslut en Arduino, lysdiod och motstånd så här:

![](anvaendning_av_en_lysdiod_5v.png)

Avänd 5V hålet av Arduino. Funkar detta?

### Svar

Absolut skulle det funkar! 
Glöm inte att längre benet av lysdioden skulle var
förbunden med `5V` hålet av Arduino.

Om det inte funkar än, fråga om hjälp!

## 4.2. Anslutning på 13

Arduino hålet kallat `5V` alltid funkar: den ger alltid fem volt spänning.
Vad är cool av en Arduino är att det är möjligt att programmera dem.
Här ska vi använder hål `13` som vi kan programmera at ger spännning eller ej.

Anslut en Arduino, lysdiod och motstånd så här:

![](anvaendning_av_en_lysdiod_13.png)

Nu är lysdioden kopplat till hålet `13` på Arduino.

Funkar detta?

### Svar

Detta vit vi inte än! Det beror på om det finns en program i Ardunuinon
kvar som använder hålet `13`. Bara fortsätt!

\pagebreak

## 4.4. Vårt första program

Starta Arduino IDEn och använder den här kod:

```c++
void setup() 
{
  pinMode(13, OUTPUT);
}

void loop() 
{
  digitalWrite(13, HIGH);
  delay(1000);
  digitalWrite(13, LOW);
  delay(1000);
}
```

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`void setup() { }`|'Kära dator, gör vad som än står inom måsvingarna i början av programmet'

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`void loop() { }`|'Kära dator, gör vad som än står inom måsvingarna hela tiden.'

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`pinMode(13, OUTPUT);`|'Se till att spänning kan komma ut ur stift 13'

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`digitalWrite(13, HIGH);`|'Sätt spänning på stift 13'

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`delay(1000);`|'Vänta 1000 millisekunder'

Skriv in koden i Arduino IDE och klicka på 'Upload' ('Ladda up').

Funkar det? Vad gör lysdioden? Vad gör inbyggda lysdioden?

### Svar

Det skulle absolut funkar! Båda lysdioden och inbyggda lysdioden skulle lysa
samtidigt. Båda ska slås av och på varje sekund.

\pagebreak

## 4.5. Uppgift 2

Få LEDen att blinka snabbt 10 gånger.

Tips: LED är nu 1000 millisekunder (1 sekund) på och 1000 millisekunder (1 sekund) av.

\pagebreak

## 4.6. Lösning 2

```c++
void setup()
{
  pinMode(13, OUTPUT);
}

void loop() 
{
  digitalWrite(13, HIGH);
  delay(100);
  digitalWrite(13, LOW);
  delay(100);
}
```

## 4.7. Uppgift 3

Få LEDen blinka så snabbt du kan. Vad ser du?

![](EmojiSunglasses.png) | Det blir antagligen nåt du inte förväntade dig!
:-------------:|:----------------------------------------: 

\pagebreak

## 4.8. Lösning 3

Det finns fler lösningar, det här är en:

```c++
void setup()
{
  pinMode(13, OUTPUT);
}

void loop() 
{
  digitalWrite(13, HIGH);
  delay(1);
  digitalWrite(13, LOW);
  delay(1);
}
```

Du kommer inte längre att se lampan blinka.

![](EmojiSunglasses.png) | Du kommer inte längre att se lampan blinka!
:-------------:|:----------------------------------------: 

\pagebreak

![](EmojiBowtie.png) | Ljuset blinkar, men våra ögon kan inte titta tillräckligt snabbt för att se det.
:-------------:|:----------------------------------------: 

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`digitalWrite(13, LOW);`|'Ingen spänning på stift 13'

![](EmojiBowtie.png) | Också bra: `delay(0);` eller ta bort raderna med `delay` helt.
:-------------:|:----------------------------------------: 

\pagebreak

## 4.10. Uppgift 4

Anslut nu lysdioden till Arduino stift `12`.

![](anvaendning_av_en_lysdiod_12.png)

![](EmojiSunglasses.png) | Det är en bra ide att använda stift 12 eller stift 13
:-------------:|:----------------------------------------: 

![](EmojiBowtie.png) | Använd inte stift 0 och 1 då de är speciella
:-------------:|:----------------------------------------: 

Vad gör lysdioden? Vad gör inbyggda lysdioden?

### Svar

Lysdioden gör (antagligen!) ingenting,
för det finns aldrig spänning på stift 12!
Inbyggda lysdioden blinkar som vanligt.

\pagebreak

## 4.12. Uppgift 5

Ändra programmet så att lysdioden på stift 12 blir använd.
Tip: ändra `13` till `12` för tre gånger.

### Svar

```c++
void setup() 
{
  pinMode(12, OUTPUT);
}

void loop() 
{
  digitalWrite(12, HIGH);
  delay(1000);
  digitalWrite(12, LOW);
  delay(1000);
}
```

## 4.12. Uppgift 5

Se nu till att lysdioden på stift 12 börjar blinka dubbel så fort.

\pagebreak

## 4.13. Lösning 5

```c++
void setup() 
{
  pinMode(12, OUTPUT);
}

void loop() 
{
  digitalWrite(12, HIGH);
  delay(100);
  digitalWrite(12, LOW);
  delay(100);
}
```

## 4.14. Slutuppgift

Försammla:

 * 1 dator
 * 1 Arduino
 * 1 USB sladd
 * 1 kopplingsdäck
 * 1 1.000 Ohm motstånd
 * 1 lysdiod
 * 3 sladdar

På dator: har redo koden!

Läs slutuppgift först, för att du har 5 minuten.

1. Fråga någon för att examinera. Den där person får inte hjälpa dig,
bara fråga frågor.

Start en timer och gör följande:

2. Får lysdioden att lysa på `5V` hålet

3. Examinerare väljar en slumpmässigt hål med numret mellan 2 och 11 
   (så 2 och 11 är också tilllåten).
   Får lysdioden att blinka på den där hålet

