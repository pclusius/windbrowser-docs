# Updates and troubleshooting

## How updates work

- A background job runs about **hourly** and updates every active tile.
- The app also updates when you bring it to the front, at most every 10 minutes.
- Because Android may put the hourly job to sleep while the phone idles, an **alarm every hour** also asks for an update.
- FMI keeps **only its latest run**, and the app takes only the newest run of ARPEGE too. A run missed because the phone was idle cannot be fetched later, so open the app now and then in the days before you need it.
- A new ARPEGE run takes about three minutes to download, because Météo-France sends it in many small requests ([ARPEGE](arpege.md)).

## Battery use: set the app to Unrestricted

Android saves power by delaying background work, most of all overnight, and a forecast run that appears meanwhile is lost for good, because FMI keeps only the latest one. Letting WindBrowser run without battery restrictions fixed this in practice: the updates arrive on time and the forecast history has no gaps.

The app asks about this **once**, right after you add your first area. **Allow** shows Android's own question ("Let app always run in background?"). The app checks for new forecasts only about once an hour and downloads only when there is a new run, so the extra battery use is small. If you chose **Not now**, or want to undo it, change it any time in Android's settings: **App info → Battery → Unrestricted** (the wording differs between phone makers). The update log tells whether the app is unrestricted at the moment.

## Update log

Menu → **Update log…** lists each job (hourly, alarm or manual, attempt, standby bucket, battery unrestricted or optimised, dozing or not), the result for each tile, and the end. Use it to find out why a run is missing.

## Troubleshooting

| Problem | What to try |
|---|---|
| "Downloading the first forecast…" does not finish | Check the connection; see the update log |
| Tile is grey | Its newest run is older than 24 h. Check that it is active and that the phone is online |
| "No forecast at the tapped point" | The point is outside every tile. Add an area (ECMWF-IFS works anywhere) |
| Runs disappeared | The data limit or history limit pruned them; raise it |
| HARMONIE area refused | Larger than 16 square degrees, or fully covered by existing tiles |
| An ARPEGE tile says it needs a key, or "key was rejected" | Enter a key, or a new one if it expired or was replaced: [ARPEGE](arpege.md) |
| Android delays updates, or runs are missing overnight | Set the app's battery use to Unrestricted (see above); opening the app also triggers an update |
