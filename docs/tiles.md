# Tiles

An area you download is called a **tile**. You can have up to **nine**, numbered 1 to 9. Everything is managed from the hamburger menu.

![Tile list](img/tiles.png){ width=320 }

## The tile list

Each row shows the tile's number (blue badge HARMONIE, green ARPEGE, purple ECMWF-IFS), model, state, size, number of runs and newest run, for example `HARMONIE · active · 4.9 MB · 9 runs · 4 Nov 08:00`. Tap a row to zoom the map to that tile.

| Button | Action |
|---|---|
| **i** | List the stored runs (model run time and file size) |
| **pause / play** | Pause stops downloads but keeps the data; play resumes |
| **stop** | Stops downloads; the tile is removed when its data has expired |
| **delete** | Removes the tile and its data. Always asks for confirmation |

States: **Active** downloads; **Paused** keeps data but does not download; **Stopped** is removed once its data has expired.

## Overlap

Only active tiles of the same model count.

- An area completely covered by existing tiles is refused.
- If 70 % or more is covered by one tile, the app offers to **enlarge that tile** to hold both, or to add the area anyway.
- A smaller overlap is accepted with a note that the overlap is downloaded twice.

## Storage limits

- **Data limit**: 1 to 5 GB (default 2). When exceeded, the oldest runs go first, those of non-active tiles before active ones; the newest run of an active tile is never removed. A dialog tells you once what was removed and what you can do: shorter history, smaller areas or fewer tiles, ECMWF-IFS, or a higher limit.
- **History**: 1 to 14 days.

**Clear all tiles** always asks for confirmation.
