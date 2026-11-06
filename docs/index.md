# WindBrowser

<!-- version -->
*This manual describes WindBrowser 0.9.73-b.*
<!-- /version -->

*Suomenkielinen ohje (PDF, Finnish manual): <https://pclusius.github.io/windbrowser-docs/WindBrowser-manual-fi.pdf>*

WindBrowser is an Android app that downloads wind forecasts from the Finnish Meteorological Institute (FMI) and, with your own free key, Météo-France for map areas you choose, and **keeps every forecast run** on the phone. It is meant for judging how far a forecast can be trusted, for example before a sail race or a cruise leg on the Baltic Sea.

## Why keep every run?

FMI serves only the latest run of each model. When a new run replaces the old one you cannot see how the forecast has changed. WindBrowser stores each run it downloads, so you can compare successive runs for the same place and time. If they agree, the forecast is probably reliable; if they differ a lot, it is not.

History exists only from the moment the app starts downloading, so add your area a few days before you need it.

## Models

| Model | Resolution | Area size limit | Data per square degree and run |
|---|---|---|---|
| **HARMONIE** | fine (about 2.5 km) | 16 square degrees | about 385 kB |
| **ARPEGE** (Météo-France) | medium (0.1 degree, about 11 km) | 400 square degrees | about 35 kB |
| **ECMWF-IFS** | coarse (0.25 degree) | 400 square degrees | about 2 kB |

HARMONIE covers northern Europe. ARPEGE covers Europe and the Baltic and needs your own Météo-France key ([ARPEGE](arpege.md)). ECMWF-IFS works anywhere in the world. They can be combined: ECMWF-IFS under HARMONIE gives a wide overview with detail where you need it, and a third model shows how far the models agree.

## How to read this manual

The chapters follow the order in which you will use the app:

1. [First start](first-start.md): choose your first area.
2. [The map](map.md): the wind layer and controls.
3. [Charts](charts.md): tap a point and compare runs.
4. [Tiles](tiles.md): manage your areas.
5. [ARPEGE and the key](arpege.md): Météo-France's model and its key.
6. [Stations](stations.md): observed wind.
7. [Settings](settings.md)
8. [Updates and troubleshooting](updates.md)
9. [About and credits](about.md)

!!! note
    The app is for use over the sea. Observation stations are a curated set of marine stations.
