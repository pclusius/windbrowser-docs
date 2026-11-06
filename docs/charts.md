# Charts

![Charts](img/charts.png)

**Tap anywhere on the map** to select a point (a red crosshair marks it), or tap an orange station dot; the title then shows the station name or the coordinates. The charts show the forecast at that point from **every stored run** of every area that covers it, whether the tile is active or not.

## Reading the charts

- **Speed chart** (top): each run is one line. HARMONIE is blue and solid; ARPEGE is green with long and short dashes; ECMWF-IFS is purple and dashed. Older runs are paler, the newest is darkest. With only one model the legend reads "Forecast runs, old → new".
- **Direction chart**: shown as dots, never lines, because 359 and 1 degrees are neighbours.
- **Speed / Gust / Temp toggle**: small switch in the corner of the speed chart. Gust exists for HARMONIE and ARPEGE and temperature (2 m air temperature, in °C) for ECMWF-IFS and ARPEGE; each option is greyed out where no run has it. Choosing **Temp** also turns the map's colours to temperature (see [The map](map.md)). If you tap a point that no temperature forecast covers, the chart and the map go back to speed.
- **Observed wind** from a tapped station is drawn in orange. With **Temp** chosen it is the observed air temperature (FMI, SMHI, DMI and Marine Helsinki stations).

If the runs lie close together the forecast is consistent. A wide fan means uncertainty.

## The cursor and the readout

Touch a chart with **one finger** to move the cursor. The map follows the cursor in time. The line above each chart reads, for example:

`HARMONIE: 12.2 (11.1-13.0)  ARPEGE: 13.4 (12.0-14.1)  ECMWF-IFS: 15.2 (11.1-15.2)  Observed: 13.2`

Before you touch the chart the models show a dash (–).

For each model it shows the value of the newest run covering that time, and in brackets the lowest and highest of all runs covering it, then the observation.

## Legend

The legend shows each model's name in bold and in the colour of its lines, with its number of runs, and "Observed" in orange. **Tap a name** to hide that model: its lines, dots and readout leave the charts, and its **map layer, wind barbs and caption leave the map**, which is the way to see a layer that lies under another one. Tap again to show it. The names turn grey while a model is hidden. Choosing another point shows everything again.

## Zoom

**Two fingers** zoom and pan the shared time axis. Speed rescales to what is in view and hourly ticks appear when zoomed in. **Tap for now** resets the axis.

## Auto-advance

The clock button with the circular arrow at the right end of the legend moves the cursor, and so the map, forward by itself: a quarter of an hour per quarter second, from the cursor (or from now) to the end of the axis in view. A touch on a chart, the button again, or "now" stops it.

## Sun and moon

The place in the title above the charts, the coordinates or a station's name, is underlined: **tap it** to see the sun and moon for that place.

![Sun and moon](img/solunar.png){ width=320 }

- The pop-up opens on the day of the chart cursor, or on today. The left and right arrows step one day at a time, and **Today** returns to today.
- The **day strip** runs from midnight to midnight and is coloured by how far the sun is below the horizon: night, astronomical, nautical and civil twilight, and day. Red marks show sunrise and sunset, the dot is solar noon, and the bar under the strip shows when the moon is up, with its rise and set marked in red.
- The **table** gives the length of daylight (sunrise to sunset) and of the civil, nautical and astronomical day: the time the sun is more than 6, 12 or 18 degrees below the horizon is the twilight, so the dark time of each kind is the rest of the 24 hours. Where the sun does not cross a level, as on a Baltic summer night, the table says "all day" or "never".
- The **moon** is drawn as it looks that day (flipped in the southern hemisphere), with the phase, the share lit, its age in days, moonrise and moonset, and the next new and full moon.

Everything is calculated from the position and the date, so it works without any forecast or network. The sun is accurate to about 2 minutes and the moon to about 5. The times are on the phone's clock and its UTC offset, and a "day" is the phone's calendar day.

## Units

Speed is shown in knots or m/s ([Settings](settings.md)). Times show the phone's UTC offset, for example `UTC+02`.
