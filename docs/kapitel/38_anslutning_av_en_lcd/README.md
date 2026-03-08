# Lektion 38: Anslutning av en LCD

En LCD är en del för att visa något, som bokstäver och symboler.
LCD är en förkortning av 'Liquid Crystal Display',
som är engelska för 'flytande kristal skärm'.

## 38.1 Gör kapitel 39 först

Gör kapitel 39 först.

## 38.2 Anslut till oscilloskop

- Koppla en LCD skärm som i kapitel 39
- Kör 'Hello World' programmet
- Koppla 'RS' till kanal 1 av en oscilloskop
- Koppla 'E' till kanal 2 av en oscilloskop
- Ställ i oscilloskopen till att visa båda samtidigt

'RS' betyder 'Register Select' och är den viktigaste stift.
När 'RS' är 0V, betyder det att en kommando är färdigt.
När 'RS' är 5V, betyder det att en kommando är 'byggd upp'
av några data delar.

'E' betyder 'Clock Enable' och är den andra viktagaste stift.
Om den faller (dvs. gå ner från 1V till 0V) betyder det
at nästa del av en kommand kan blir byggd.

En kommando är byggd av D4, D5, D6 och D7 delar: den här 4 stiftar
formar kombinationer tillsammans och varje kombinationer betyder
något.

## 38.1 Slutuppgift

- Visar hur mycket delar en kommanda har på en oscilloskop.
  Tip: det finns en knapp 'Run | Stop' för att frysa oscilloskop skärmen
