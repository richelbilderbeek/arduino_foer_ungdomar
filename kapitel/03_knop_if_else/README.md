# Lektion 3: Knapp om ... annat

I den här lektionen låter vi Arduino ställa frågor till sig själv.

![](EmojiSunglasses.png) | Så Arduino blir en sorts filosof!
:-------------:|:----------------------------------------: 


## 3.1. Om ... annan knapp: Anslut

![Flödesschema](3_knop_if_else.png)

![](EmojiSunglasses.png) | Motståndet mot ratten kallas ett 'Pull Down'-motstånd
:-------------:|:----------------------------------------: 

\pagebreak

\sidbrytning

## 3.2. Knapp om ... annat: Kod

Här är koden för att få ljuset att tändas,
när knappen trycks in:

```c++
const int pin_led = 13;
const int pin_knop = 2;

void setup() 
{
  pinMode(pin_led, OUTPUT);
  pinMode(pin_knop, INPUT);
}

void loop()
{
  digitalWrite(pin_led, digitalRead(pin_knop));
}
```


![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 

`digitalRead(pin_button)` |'Ge mig HIGH om `pin_button` har spänning. Annars ge LÅG'
`digitalWrite(pin_led, digitalRead(pin_button))`|'Sätt spänningen till `pin_led` om `pin_button` har spänning'

![](EmojiBowtie.png) | 'Pull Down'-motståndet ser till att stift 2 är anslutet till GND när knappen inte trycks in
:-------------:|:----------------------------------------: 

\pagebreak

## 3.3. Om ... annan knapp: Fråga

När du trycker på knappen, släcks eller tänds lysdioden?

\sidbrytning

## 3.4. Om ... annan knapp: Svara

Lysdioden tänds då

![](EmojiSunglasses.png) | Lysdioden tänds då
:-------------:|:----------------------------------------: 


## 3.5. Om ... annan knapp: `if`

Med 'om' kan du få Arduino att göra något, om något så här:

```c++
if (digitalRead(pin_knop) == HIGH)
{
  digitalWrite(pin_led_rood, HIGH);
}
else
{
  digitalWrite(pin_led_groen, LOW);
}
```

Denna kod kontrollerar om det finns spänning på `pin_button`.
Om ja, lägg sedan Arduino
spänning på `pin_led_red`.
Annars (`else`) tar Arduino spänningen från `pin_led_green`.

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 

`if (digitalRead(pin_button) == HIGH) {}`|'Bästa dator, om det finns spänning på `pin_button`, sätt den inom parentes'

![](EmojiSunglasses.png) | `=` kan uttalas som "sätta på". "==" kan uttalas som "lika med"
:-------------:|:----------------------------------------: 

\pagebreak

\sidbrytning

##3.6. Knapp om ... annat: Kommando 1

Detta är exempelkoden, som inte är helt färdig:

```c++
void setup() 
{

  pinMode(4, INPUT );
  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);
}


void loop()
{

  if (digitalRead(4) == HIGH)
  {

    digitalWrite(5, HIGH);
  }
  else
  {
    digitalWrite(6, LOW);
  }
}
```

  annan
  :-------------:|:----------------------------------------: 

    digitalWrite(6, LÅG);
  :-------------:|:----------------------------------------: 

:-------------:|:----------------------------------------: 

:-------------:|:----------------------------------------: 


Avsluta koden så att:

 * När du trycker på knappen tänds lampan
 * om du inte trycker på knappen slocknar lampan
 * använd variabler för att namnge stiften

![](EmojiBowtie.png) | Det finns inget semikolon efter de runda parenteserna för "om".
:-------------:|:----------------------------------------: 


\sidbrytning

## 3.7. Om ... annan knapp: Lösning 1

```c++
// ...


void setup() 
{
  // ...
}


void loop()
{
  if (digitalRead(pin_knop) == HIGH)
  {

    digitalWrite(pin_led, HIGH);
  }
  else
  {

    digitalWrite(pin_led, LOW);
  }
}
```

:-------------:|:----------------------------------------: 

:-------------:|:----------------------------------------: 


![](EmojiSunglasses.png)| `// ...` betyder 'koden du redan har där'
:-------------:|:----------------------------------------: 


## 3.8. Knapp om ... annat: Kommando 2

Anslut en andra grön lysdiod. Gör koden så att:

 * när du trycker på knappen tänds den första lampan och den andra lysdioden släcks
 * om du inte trycker på knappen slocknar den första lampan och den andra lysdioden slocknar
 * Namnge variabeln för stiftet på den röda lysdioden `pin_led_rood`, för
   grön LED `pin_led_green`

![](EmojiSunglasses.png)| Du kan skriva flera rader inom de krulliga parenteserna av ett "om". Precis som mellan hängslen i `setup` och `loop`!
:-------------:|:----------------------------------------: 


![](EmojiBowtie.png) | Glöm inte 'annat' ('gör annorlunda')!
:-------------:|:----------------------------------------: 


\sidbrytning

## 3.9. Knapp om ... annat: Lösning 2

Bild `Lösning för 'Knapp med två lysdioder'` visar hur man ansluter detta.

![Lösning för 'Knapp med två lysdioder'](3_knop_if_else_2.png)

Det här är koden:

```c++
const int pin_led_rood = 13;
const int pin_led_groen = 12;
// ...


void setup() 
{
  pinMode(pin_led_rood, OUTPUT);
  pinMode(pin_led_groen, OUTPUT);
  // ...
}


void loop()
{
  if (/* ... */)
  {
    digitalWrite(pin_led_groen, LOW);
    digitalWrite(pin_led_rood, HIGH);
  }

  else
  {
    digitalWrite(pin_led_groen, HIGH);
    digitalWrite(pin_led_rood, LOW);
  }
  delay(10);
}
```

\pagebreak

  fördröjning(10);
:-------------:|:----------------------------------------: 

:-------------:|:----------------------------------------: 


\sidbrytning

![](EmojiBowtie.png)| `/* ... */` betyder också 'koden du redan har där'
:-------------:|:----------------------------------------: 


## 3.10. Om ... annan knapp: Avsluta kommando

Anslut en andra knapp. Göra koden så att

  * om du trycker på den första knappen tänds den första lampan
  * om du inte trycker på den första knappen slocknar den första lampan
  * om du trycker på den andra knappen slocknar den andra lampan
  * om du inte trycker på den andra knappen tänds den andra lampan

![](EmojiSunglasses.png)| Du kan sätta "om" mer än en gång
:-------------:|:----------------------------------------: 


![](EmojiBowtie.png) | För en andra knapp behöver du ett andra motstånd på tio tusen ohm
:-------------:|:----------------------------------------: 


![Avsluta uppdrag](3_knop_if_else_final_assignment.png)
