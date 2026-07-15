# Lektion 33: Användning av en stegmotor

<!-- https://github.com/mgesteiro/fritzing-parts/tree/main/28BYJ-48-driver -->
<!-- https://github.com/mgesteiro/fritzing-parts/tree/main/28BYJ-48-motor -->

## 33.1. Att bygga elkretsen

Bygg upp den här krets:

![Schematiskt](anvaendning_av_en_stegmotor_schematic.png)

![Schematiskt, zoom](anvaendning_av_en_stegmotor_schematic_zoom.png)

\pagebreak

## 33.2. Att ladda upp koden

Ladda upp den här koden:

```bash
#include <Stepper.h>

const int n_steps_per_rotation{48};

Stepper stepper(n_steps_per_rotation, 8, 9, 10, 11);

void setup()
{
  stepper.setSpeed(500);
}

void loop() 
{
  stepper.step(1);
  delay(1);
}
```

Om de inte har installerat `CheapStepper`, so får du en felmeldning så här:

![Felmeldning om du inte har installerat `CheapStepper`](anvaendning_av_en_stegmotor_have_not_installed_cheapstepper.png)

Installera `SteapStepper` so här:

![Installera `SteapStepper`](anvaendning_av_en_stegmotor_install_cheapstepper.png)

\pagebreak

## 33.3. Slutuppgift

Får en stegmotor att fungerar.
