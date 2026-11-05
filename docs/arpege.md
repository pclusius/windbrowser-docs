# ARPEGE and the Météo-France key

**ARPEGE** is the global forecast model of Météo-France. WindBrowser uses its 0.1 degree (about 11 km) version over Europe and the Baltic, with wind, **gusts** and **2 m air temperature**. It gives four runs a day (00, 06, 12 and 18 UTC) and forecasts up to 102 hours ahead.

Unlike FMI's models, Météo-France gives its data only to users who have **their own free key**. The key is kept on your phone only and is sent only to Météo-France. Without one, ARPEGE cannot be chosen when you add an area, and an ARPEGE tile that is already there says it needs a key.

## Get a key

1. Make a free account at **portail-api.meteofrance.fr**.
2. Subscribe to the API called **API Modèle ARPEGE**.
3. On the API's page, under *Configure API*, choose the token type **API Key**, set how long it should last (365 days works) and press **Generate Token**.
4. **Copy all of the key.** It is one very long line of text, about 1,500 characters, with no spaces. Click in the key field, use *select all* and copy; a double click selects only a part of it.

!!! note
    Making a new key on the portal may stop the old one from working. If downloads stop with "The Météo-France API key was rejected", the key has expired or been replaced: make a new one and enter it again.

## Enter the key in the app

Menu → **ARPEGE key: not set…**, paste the key and press **Save**. The dialog shows how many characters it got and refuses a key that is clearly too short, which usually means it was cut when copied. After saving, the menu says **ARPEGE key: set…**; open it again to replace the key, or press **Remove** to delete it. If an ARPEGE tile is waiting, an update starts at once.

## Add an ARPEGE area

Choose **ARPEGE** (green) when you add an area ([First start](first-start.md)). An area can hold at most 400 square degrees, and the data is small, about 35 kB per square degree and run for three days of forecast. ARPEGE covers 20°N to 72°N and 32°W to 42°E.

## How far ahead

Menu → **ARPEGE forecast: 3 days…** sets how far ahead ARPEGE is downloaded: 1 to 4 days, 3 by default. Météo-France sends one small file for every variable and hour, so a longer forecast means more requests (3 days is about 290) and a longer update. The portal allows 100 requests a minute and the app spaces them out, so the first download of a run takes about **three minutes**. A change applies from the next run; what is already stored stays.

## What to expect

ARPEGE is drawn with green lines in the charts, with long and short dashes, and its tile outline and map layer are green. It is coarser than HARMONIE and finer than ECMWF-IFS, so on the map it lies between them. Gust and temperature work for ARPEGE as for the other models ([Charts](charts.md)).
