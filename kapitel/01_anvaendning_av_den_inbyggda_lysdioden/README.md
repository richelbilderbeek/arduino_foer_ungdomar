# Lektion 1: Användning av den inbyggda lysdioden

Under den här lektionen ska vi använda den inbyggda lysdioden
i Arduino.

![](EmojiSunglasses.png) | Arduino har redan en lampa som du kan programmera.
:-------------:|:----------------------------------------: 

## 1.1. Ansluta en Arduino

Anslut en Arduino så här:

![Blink utan lysdiod](anvaendning_av_den_inbyggda_lysdioden_arduino.png)

Anslut en USB-kabel till din Arduino och till din dator.

\pagebreak

## 1.2. Startar Arduino IDE

![](EmojiSunglasses.png) | Vi programmerar Arduino med Arduino IDE
:-------------:|:----------------------------------------: 

![](EmojiBowtie.png) | 'IDE' uttalas som 'i-d-ee'
:-------------:|:----------------------------------------: 

Starta Arduino IDE genom att:

 * Klicka på genvägen på skrivbordet
 * Tryck på Windows-tangenten (nedre till vänster, mellan `Ctrl` och `Alt`). Typ
   sedan `arduino` (små bokstäver) och sedan Enter

![Logotyp för Arduino IDE](anvaendning_av_den_inbyggda_lysdioden_ide_logo.png)

![Win tangent](anvaendning_av_den_inbyggda_lysdioden_win_tangent.jpg)

\pagebreak

Nu ser du Arduino IDEn:

![Arduino IDE](anvaendning_av_den_inbyggda_lysdioden_ide.png)

![Solglasögon](EmojiSunglasses.png) | IDE betyder 'Integrated Development Environment', mjukvaran du använder för att programmera.
:-------------:|:----------------------------------------: 

\pagebreak

## 1.3. Vårt första program

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

![Här kan du klicka på 'Upload'](anvaendning_av_den_inbyggda_lysdioden_upload.png)

\pagebreak

## 1.4. Uppgift 2

Få LEDen att blinka snabbt 10 gånger.

Tips: LED är nu 1000 millisekunder (1 sekund) på och 1000 millisekunder (1 sekund) av.

\pagebreak

## 1.5. Lösning 2

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

## 1.6. Uppgift 3

Få LEDen blinka så snabbt du kan. Vad ser du?

![](EmojiSunglasses.png) | Det blir antagligen nåt du inte förväntade dig!
:-------------:|:----------------------------------------: 

\pagebreak

## 1.7. Lösning 3

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

## 1.8. Slutuppgift

Få lysdioden att blinka så snabbt som en mänklig öga kan ser.

![Solglasögon](EmojiSunglasses.png) | Lyckades det? Visa detta för en vuxen för signatur!
:-------------:|:----------------------------------------: 
