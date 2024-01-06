# Lektion 6: Användning av flera lysdioder

Under den här lektionen ska vi ansluta flera lysdioder till en Arduino!

## 6.1: Blink Blink Blink: Blink

![Blink](02_blink_blink_blink_blink.png)

\pagebreak

Här är `Blink`s kod på ett annat sätt:

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

\pagebreak

## 6.2: Blink Blink Blink: Uppgift 1

Anslut Blinkkretsen (ser uppåt) till stift 12 
och ändra koden så att den blinkar.

\pagebreak

## 6.3: Blink Blink Blink: Lösning 1

![Blinka med LED på 12](02_blink_blink_blink_blink_pa_12.png)

Du behöver bara ändra en rad:

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

## 6.6: Blink Blink Blink: Ansluter Blink Blink Blink

Nu är det dags att ansluta `Blink Blink Blink`:

![BlinkBlinkBlink](02_blink_blink_blink.png)

 * Koppla ur USB-kabeln från datorn, så att Arduino inte längre har ström
 * Bygg kretsen enligt bilden

\pagebreak

## 6.7: Blink Blink Blink: Uppgift 3

Koppla in `Blink Blink Blink`kretsen. 
Byt namn på variabeln `led_stift` till `led_stift_1`.
och se till att det har rätt startvärde.

\pagebreak

## 6.8: Lösning 3

```c++
void setup() 
{
  pinMode(12, OUTPUT);
  pinMode(13, OUTPUT);
}

void loop() 
{
  digitalWrite(13, HIGH);
  delay(1000);
  digitalWrite(13, LOW);
  delay(1000);
  digitalWrite(12, HIGH);
  delay(1000);
  digitalWrite(12, LOW);
  delay(1000);
}
```

\pagebreak

## 6.9: Blink Blink Blink: Uppgift 4

## 6.13: Blink Blink Blink: Slutuppgift

Få nu LEDs lysa i ett 'Knight Rider-mönster': 1-2-3-2. 
Det måste alltid finnas exakt en LED som lyser.

![Solglasögon](EmojiSunglasses.png) | Knight Rider var en TV-serie med en talande bil.
:-------------:|:----------------------------------------: 

![Knight Rider](KnightRider.png)

