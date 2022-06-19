# 8. LDR

Under den här lektionen använder vi en ljusberoende motstånd, kallas LDR.

## 8.1 Uppgift

Bygg up:

 * en potmeter, på A0

Programmerar:

 * en `const` variabel `potmeter_stift` på riktigt stift
 * att få värd av potmetern med `analogRead`
 * att skrivar värd av potmetern till Serial Monitor
 * vänta 100 millisecond varje `loop`

\pagebreak

## 8.2 Lösning

![](08_potmeter.png)

```
const int potmeter_stift = A0;

void setup() 
{
  pinMode(potmeter_stift, INPUT);
  Serial.begin(9600);
}

void loop() 
{
  Serial.print(analogRead(potmeter_stift));
  delay(100);  
}
```

\pagebreak

## 8.3 Uppgift

Skriv om programmet litegran för att ha en funktion som häter `visar_potmeter`.

`visar_potmeter` kan redan:

 * att få värd av potmetern med `analogRead`
 * att skrivar värd av potmetern till Serial Monitor

Addera till `visar_potmeter`:

```
if (analogRead(potmeter_stift) < 512)
{
  Serial.print("Potmeter ar till vanster");
} 
else 
{
  Serial.print("Potmeter ar till hoger");
}
```

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`<`|'litare än'

![](EmojiBowtie.png) | `512` är bara i mitten från alla möjliga värder `analogRead` kan ger
:-------------:|:----------------------------------------: 

\pagebreak

## 8.4 Lösning

```
const int potmeter_stift = A0;

void setup() 
{
  pinMode(potmeter_stift, INPUT);
  Serial.begin(9600);
}

void loop() 
{
  visar_potmeter();
  delay(100);  
}

void visar_potmeter() 
{
  Serial.print(analogRead(potmeter_stift));
  if (analogRead(potmeter_stift) < 512)
  {
    Serial.print("Potmeter ar till vanster");
  } 
  else 
  {
    Serial.print("Potmeter ar till hoger");
  }
}
```

\pagebreak

## 8.5 Uppgift

Byter potmeter om för en LDR.
En LDR är ansluten sannalikt än en knapp:

 * den första ben åker till 5V
 * den andra ben går till en motstand från 10 kOhm, som går till GND
 * den andra ben går till A0
 
Kör programmet med samma kod.

Vilken värder har LDR om du sta ljus iväg med din hand?
Vilken värder har LDR om ljus är helt på den?

\pagebreak

## 8.6 Lösning

![](08_ldr.png)

\pagebreak

## 8.7 Slutuppgift

Addera en LED på 13.

Om du håller din hand över LDRen:

  * LEDen skulle ljuser upp 
  * Serial monitor skull säga 'Det ar morkt'

Om du inte håller din hand över LDRen:

  * LEDen skulle vara släckt
  * Serial monitor skull säga 'Det ar ljus'

