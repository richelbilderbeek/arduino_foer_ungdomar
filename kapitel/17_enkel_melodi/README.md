# Lektion 17: Enkel melodi

I den här lektionen ska vi göra en enkel melodi, som är Fader Jakob!

!['Vader Jacob' var en hit 1975 av det holländska bandet H2OR](17_vader_jacob.jpg)

\sidbrytning

## Lektion 17: Enkel melodi: Uppgift 1

Anslut figuren 'Ansluta en högtalare'.

![Ansluta en högtalare](17_connecting.png)

Sätt den här koden på din Arduino:

```c++
const int speaker_pin = 8;

void setup()
{
  ton(speaker_pin, 131, 250); // Va
  fördröjning(300);
}

void loop()
{

}
```

Vad hör du?

\sidbrytning

## Lektion 17: Enkel melodi: Lösning 1

Du hör den första tonen av fader Jakob!

I figuren 'The first not of Father Jacob' ser du den första tonen som noter.
Under noten finns texten, därunder tonhöjden i Hertz.

![Fader Jacobs första ton](17_va.png)

![Solglasögon](EmojiSunglasses.png) | 131 Hertz är tonhöjden för tonen C.
:-----------------:|:---------------------- ------- :

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----------------:|:---------------------- ------- :
`tone(..., 131, ...);`| (sjunger) gör!

\sidbrytning

## Lektion 17: Enkel melodi: Uppgift 2

Den första tonen av Vader Jacob har en tonhöjd på 131 Hertz.
Den andra tonen av Vader Jacob har en tonhöjd på 147 Hertz.
Programmera de två första tonerna av Vader Jacob.

![De två första tonerna av Vader Jacob](17_vader.png)

![Nej, låten handlar inte om honom](17_darth-vader.jpg)

\sidbrytning

## Lektion 17: Enkel melodi: Lösning 2

```c++
const int speaker_pin = 8;

void setup()
{
  ton(speaker_pin, 131, 250); // Va
  fördröjning(300);
  ton(speaker_pin, 147, 250); // der
  fördröjning(300);
}

void loop()
{

}
```

![Solglasögon](EmojiSunglasses.png) | 147 Hertz är tonhöjden för tonen D.
:-----------------:|:---------------------- ------- :

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----------------:|:---------------------- ------- :
`tone(..., 147, ...);`| (sjunger) re!

\sidbrytning

## Lektion 17: Enkel melodi: Uppgift 3

Den tredje tonen av Vader Jacob har en tonhöjd på 165 Hertz.
Programmera de tre första tonerna av Fader Jakob.

![De tre första tonerna av Vader Jacob](17_vader_ja.png)

![En riktig Groninger avslutar de flesta meningar med 'ja'](17_kim_feenstra.jpg)

\sidbrytning

## Lektion 17: Enkel melodi: Lösning 3

```c++
const int speaker_pin = 8;

void setup()
{
  ton(speaker_pin, 131, 250); // Va
  fördröjning(300);
  ton(speaker_pin, 147, 250); // der
  fördröjning(300);
  ton(speaker_pin, 165, 250); // Ja
  fördröjning(300);
}

void loop()
{

}
```

![Solglasögon](EmojiSunglasses.png) | 165 Hertz är tonhöjden för noten E.
:-----------------:|:---------------------- ------- :

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----------------:|:---------------------- ------- :
`tone(..., 165, ...);`| (sjunger) mig!

\sidbrytning

## Lektion 17: Enkel melodi: Uppgift 4

Den fjärde tonen av Vader Jacob har samma tonhöjd som den första.
Programmera den fjärde tonen av Fader Jakob.

![De första fyra tonerna av Vader Jacob](17_vader_jacob.png)

![Jacob Black kan förvandlas till en varg](17_jacob_black.jpg)

\sidbrytning

## Lösning 4

```c++
const int speaker_pin = 8;

void setup()
{
  ton(speaker_pin, 131, 250); // Va
  fördröjning(300);
  ton(speaker_pin, 147, 250); // der
  fördröjning(300);
  ton(speaker_pin, 165, 250); // Ja
  fördröjning(300);
  ton(speaker_pin, 131, 250); // cob
  fördröjning(300);
}

void loop()
{

}
```

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----------------:|:---------------------- ------- :
`tone(..., 147, ...);`| (sjunger) re!

\sidbrytning

## Lektion 17: Enkel melodi: Uppgift 5

De femte, sjätte, sjunde och åttonde noterna är desamma som de fyra första. Programmera detta.

![De första åtta tonerna av Vader Jacob](17_vader_jacob_2x.png)

![Tvillingar är typ av återkommande ensamvargar](17_twins.jpeg)

\sidbrytning

## Lektion 17: Enkel melodi: Lösning 5

```c++
const int speaker_pin = 8;

void setup()
{
  ton(speaker_pin, 131, 250); // Va
  fördröjning(300);
  ton(speaker_pin, 147, 250); // der
  fördröjning(300);
  ton(speaker_pin, 165, 250); // Ja
  fördröjning(300);
  ton(speaker_pin, 131, 250); // cob
  fördröjning(300);
  ton(speaker_pin, 131, 250); // Va
  fördröjning(300);
  ton(speaker_pin, 147, 250); // der
  fördröjning(300);
  ton(speaker_pin, 165, 250); // Ja
  fördröjning(300);
  ton(speaker_pin, 131, 250); // cob
  fördröjning(300);
}

void loop()
{

}
```

![Solglasögon](EmojiSunglasses.png) | Du kan också lägga upprepningen i en 'för'-loop!
:-----------------:|:---------------------- ------- :

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----------------:|:---------------------- ------- :
`för (int i = 0; i < 2; ++i) { ... }`| "Gör vad som står i hängslen två gånger"

\sidbrytning

## Lektion 17: Enkel melodi: Uppgift 6

Nu kommer två gånger 'Sover du fortfarande'. 'Sov' samma höjd som 'Ja', 'du' är 175 Hertz, 'fortfarande' är 196 Hertz.
Fram till nu varade alla anteckningar i 250 millisekunder.
Den tredje
