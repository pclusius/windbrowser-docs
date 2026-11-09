# Settings

All settings are in the hamburger menu.

![Menu](img/menu.png){ width=320 }

| Setting | Meaning |
|---|---|
| **Add area here…**, tile rows | See [First start](first-start.md) and [Tiles](tiles.md) |
| **Update all active areas** | Starts an update now |
| **Routing…** | Routes, passage plans and saved plans; see [Routing](routing.md) |
| **Export GRIB2 of active tiles to Downloads** | Copies the newest raw GRIB2 of every active tile to Downloads, with the tile number in the name |
| **kn / m/s** | Speed unit, default knots. Barbs are always in knots |
| **Wind colours**, **Wind barbs** | Tick each layer on or off |
| **Grey land** | Untick to show only the shoreline |
| **UI Color theme** | Automatic, light or dark; tap to cycle. The offline manual follows it |
| **Data limit** | 1–5 GB (default 2) |
| **History kept** | 1–14 days of runs to keep, set with a slider (applied when you close the dialog) |
| **ARPEGE key** | Your Météo-France key, needed for ARPEGE; see [ARPEGE](arpege.md) |
| **Update log…** | See [Updates](updates.md) |
| **Manual** | This manual, stored in the app, so it works without a connection |
| **About WindBrowser** | Credits, version, and links to the online manual and the PDF |
| **Clear all tiles** | Removes everything; always asks first |

The boat and routing settings are not in the menu: they belong to each plan and are in **Plan a passage…** ([Routing](routing.md)).

## Backup

The app takes part in Android's backup, so a new phone restored from your Google backup gets your settings, areas (the tile list), routes, polars, saved plans and the routing weights file back. The downloaded forecast runs and the update log are not backed up; they are fetched again, but the history starts over.
