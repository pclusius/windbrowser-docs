# Updates and troubleshooting

## How updates work

- A background job runs about **hourly** and updates every active tile.
- The app also updates when you bring it to the front, at most every 10 minutes.
- FMI keeps **only its latest run**. A run missed because the phone was idle cannot be fetched later, so open the app now and then in the days before you need it.

## Update log

Menu → **Update log…** lists each job (hourly or manual, attempt, standby bucket), the result for each tile, and the end. Use it to find out why a run is missing.

## Troubleshooting

| Problem | What to try |
|---|---|
| "Downloading the first forecast…" does not finish | Check the connection; see the update log |
| Tile is grey | Its newest run is older than 24 h. Check that it is active and that the phone is online |
| "No forecast at the tapped point" | The point is outside every tile. Add an area (ECMWF-IFS works anywhere) |
| Runs disappeared | The data limit or history limit pruned them; raise it |
| HARMONIE area refused | Larger than 16 square degrees, or fully covered by existing tiles |
| Android delays hourly updates | Android power saving; open the app to trigger an update |
