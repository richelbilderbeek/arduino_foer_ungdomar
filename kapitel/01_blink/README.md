# Lektion 1: Blink

Under den här lektionen ska vi göra den enklaste kretsen som finns: Blink!

![](EmojiBowtie.png) | Vi börjar lätt!
:-------------:|:----------------------------------------: 

## 1.1 Blink: Ansluta en Arduino

Anslut en Arduino så här:

![Blink utan lysdiod](1_blink_zonder_led.png)

Anslut en USB-kabel till din Arduino och till din bärbara dator.

## 1.2 Blink: Uppgift 1

Koppla in Arduino.

![](EmojiSunglasses.png) | Arduino har redan ett ljus som du kan programmera.
:-------------:|:----------------------------------------: 

\pagebreak

## 1.3 Blink: Startar Arduino IDE

![](EmojiSunglasses.png) | Vi programmerar Arduino med Arduino IDE
:-------------:|:----------------------------------------: 

![](EmojiBowtie.png) | 'IDE' uttalas som 'ie-dee-ee'
:-------------:|:----------------------------------------: 

Starta Arduino IDE genom att:

 * Klicka på genvägen på skrivbordet
 * Tryck på Windows-tangenten (nedre till vänster, mellan `Ctrl` och `Alt`). Typ
   sedan `arduino` (små bokstäver) och sedan Enter

![Logotyp för Arduino IDE](1_blink_ide_logo.png)

![Win key](1_win_key.jpg)

\pagebreak

Du ser nu Arduino IDE:

![Arduino IDE](1_blink_ide.png)

![Solglasögon](EmojiSunglasses.png) | IDE betyder 'Integrated Development Environment', programmet du använder för att programmera.
:-------------:|:----------------------------------------: 

\pagebreak

## 1.4 Blink: vårt första program

Detta är (en version av) koden för `Blink`:

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
`void setup() { }`|'Kära dator, gör vad som än står inom måsvingarna'

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`void loop() { }`|'Kära dator, gör vad som än står inom måsvingarna hela tiden.'

Skriv in koden i Arduino IDE och klicka på 'Upload' ('Ladda up').

![Här kan du klicka på 'Upload'](1_blink_upload.png)

## 1.5 Blink: Uppgift 2

Få lysdioden att blinka 10 gånger så snabbt.

Tips: LED är nu 1000 millisekunder på och 1000 millisekunder av.

\pagebreak

## 1.6 Blink: lösning 2

```c++
void setup()
{
  // ...
}

void loop() 
{
  digitalWrite(13, HIGH);
  delay(100);
  digitalWrite(13, LOW);
  delay(100);
}
```

![](EmojiSunglasses.png)| `// ...` betyder 'koden du redan har där'
:-------------:|:----------------------------------------: 

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`pinMode(13, OUTPUT);`|'Se till att spänning kan komma ut ur stift 13'

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`digitalWrite(13, HIGH);`|'Sätt spänning på stift 13'

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`delay(1000);`|'Vänta 1000 millisekunder'

##1.7 Blink: Uppgift 3

Låt lysdioden blinka så snabbt du kan. Vad ser du?

\pagebreak

##1.8 Blink: Lösning 3

Det finns fler lösningar, det här är en:

```c++
void setup()
{
  // ...
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

![](EmojiBowtie.png) | Ljuset blinkar, men våra ögon kan inte titta tillräckligt snabbt för att se det.
:-------------:|:----------------------------------------: 

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`digitalWrite(13, LOW);`|'Koppla ur stift 13'

![](EmojiBowtie.png) | Också bra: `delay(0);` eller ta bort raderna med `delay` helt.
:-------------:|:----------------------------------------: 

\pagebreak

## 1.9 Blink: Anslut LED

Nu är det dags att ansluta Blink:

![Blink](1_blink.png)

 * Koppla ur USB-kabeln från datorn, så att Arduino inte längre har ström
 * Anslut Blink enligt bilden
 * Sätt tillbaka strömmen till Arduino
 * Om allt är bra kommer nu den röda lysdioden att blinka tillsammans med lysdioden på Arduino.

![](EmojiBowtie.png) | Om lysdioden inte lyser, vänd på den
:-------------:|:----------------------------------------: 

## 1.10 Blink: Uppgift 4

Anslut nu din LED till stift 12.

![](EmojiSunglasses.png) | Det är coolt att ta tag i stift 12 efter stift 13
:-------------:|:----------------------------------------: 

![](EmojiBowtie.png) | Detta beror också på att stift 0 och 1 är speciella
:-------------:|:----------------------------------------: 

\pagebreak

## 1.11 Blink: Lösning 4

![Blinka med LED på stift 12](1_blink_op_12.png)

## 1.12 Blink: Uppgift 5

Se nu till att lysdioden på stift 12 börjar blinka den andra.

![](EmojiSunglasses.png) | LED är en förkortning av 'Light Emitting Diode'
:-------------:|:----------------------------------------: 

![](EmojiBowtie.png) | Bra sagt! Bättre sent än aldrig!
:-------------:|:----------------------------------------: 

![](EmojiBowtie.png) | LED menar på svensk: 'Ljus givande diod'
:-------------:|:----------------------------------------: 

\pagebreak

## 1.13 Blink: Lösning 5

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

## 1.14 Blink: Slutuppgift

Anslut lysdioden till stift 11 och få den att blinka 2 gånger per sekund.

![Solglasögon](EmojiSunglasses.png) | Framgång? Visa detta för en vuxen för initialer!
:-------------:|:----------------------------------------: 

