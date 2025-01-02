# Lektion 1: Blink

Under den här lektionen ska vi göra den enklaste kretsen som finns: Blink!

![Bild](EmojiBowtie.png) | Vi börjar lätt!
:-------------:|:----------------------------------------:

## 1.1 Blink: Ansluta en Arduino

Anslut en Arduino så här:

![Blink utan lysdiod](1_blink_zonder_led.png)

Anslut en USB-kabel till din Arduino och till din dator.

## 1.2 Blink: Uppgift 1

Koppla in Arduino.

![Bild](EmojiSunglasses.png) | Arduino har redan en lampa som du kan programmera.
:-------------:|:----------------------------------------:

\pagebreak

## 1.3 Blink: Startar Arduino IDE

![Bild](EmojiSunglasses.png) | Vi programmerar Arduino med Arduino IDE
:-------------:|:----------------------------------------:

![Bild](EmojiBowtie.png) | 'IDE' uttalas som 'i-d-ee'
:-------------:|:----------------------------------------:

Starta Arduino IDE genom att:

* Klicka på genvägen på skrivbordet
* Tryck på Windows-tangenten (nedre till vänster, mellan `Ctrl` och `Alt`). Typ
   sedan `arduino` (små bokstäver) och sedan Enter

![Logotyp för Arduino IDE](1_blink_ide_logo.png)

![Win tangent](1_win_tangent.jpg)

\pagebreak

Nu ser du Arduino IDEn:

![Arduino IDE](1_blink_ide.png)

![Solglasögon](EmojiSunglasses.png) | IDE betyder 'Integrated Development Environment', mjukvaran du använder för att programmera.
:-------------:|:----------------------------------------:

\pagebreak

## 1.4 Blink: Vårt första program

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
`void setup() { }`|'Kära dator, gör vad som än står inom måsvingarna i början av programmet'

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------:
`void loop() { }`|'Kära dator, gör vad som än står inom måsvingarna hela tiden.'

Skriv in koden i Arduino IDE och klicka på 'Upload' ('Ladda up').

![Här kan du klicka på 'Upload'](1_blink_upload.png)

\pagebreak

## 1.5 Blink: Uppgift 2

Få LEDen att blinka snabbt 10 gånger.

Tips: LED är nu 1000 millisekunder (1 sekund) på och 1000 millisekunder (1 sekund) av.

\pagebreak

## 1.6 Blink: Lösning 2

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

![Bild](EmojiSunglasses.png)| `// ...` betyder 'koden du redan har där'
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


## 1.7 Blink: Uppgift 3

Få LEDen blinka så snabbt du kan. Vad ser du?

![Bild](EmojiSunglasses.png) | Det blir antagligen nåt du inte förväntade dig!
:-------------:|:----------------------------------------:

\pagebreak

## 1.8 Blink: Lösning 3

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

![Bild](EmojiSunglasses.png) | Du kommer inte längre att se lampan blinka!
:-------------:|:----------------------------------------:

\pagebreak

![Bild](EmojiBowtie.png) | Ljuset blinkar, men våra ögon kan inte titta tillräckligt snabbt för att se det.
:-------------:|:----------------------------------------:

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------:
`digitalWrite(13, LOW);`|'Ingen spänning på stift 13'

![Bild](EmojiBowtie.png) | Också bra: `delay(0);` eller ta bort raderna med `delay` helt.
:-------------:|:----------------------------------------:

\pagebreak

## 1.9 Blink: Anslut LED

Nu är det dags att bygga kretsen till Blink:

![Blink](1_blink.png)

* Koppla ur USB-kabeln från datorn, så att Arduino inte längre har ström
* Montera Blinkkretsen enligt bild
* Montera tillbaka USB kabel till datorn
* Om allt är bra kommer nu den röda LED att blinka tillsammans med LEDen på Arduinon.

![Bild](EmojiBowtie.png) | Om LEDen inte lyser, vänd på den
:-------------:|:----------------------------------------:

\pagebreak

## 1.10 Blink: Uppgift 4

Anslut nu din LED till stift 12.

![Bild](EmojiSunglasses.png) | Det är en bra ide att använda stift 12 eller stift 13
:-------------:|:----------------------------------------:

![Bild](EmojiBowtie.png) | Använd inte stift 0 och 1 då de är speciella
:-------------:|:----------------------------------------:

\pagebreak

## 1.11 Blink: Lösning 4

![Blinka med LED på stift 12](1_blink_paa_12.png)

\pagebreak

## 1.12 Blink: Uppgift 5

Se nu till att LEDen på stift 12 börjar blinka dubbel så fort.

![Bild](EmojiSunglasses.png) | LED är en förkortning av 'Light Emitting Diode'
:-------------:|:----------------------------------------:

![Bild](EmojiBowtie.png) | Bra sagt! Bättre sent än aldrig!
:-------------:|:----------------------------------------:

![Bild](EmojiBowtie.png) | LED betyder på svenska: 'Ljus givande diod'
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

Anslut LEDen till stift 11 och få den att blinka 2 gånger per sekund.

![Solglasögon](EmojiSunglasses.png) | Lyckades det? Visa detta för en vuxen för signatur!
:-------------:|:----------------------------------------:

