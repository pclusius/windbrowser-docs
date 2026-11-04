# The map

![Map overview](img/map.png)

## What you see

- **Wind layer**: colours show wind speed, from blue (calm) through green, yellow, orange and red to purple and black (35 knots and more). Wind barbs show direction and speed in knots. The layer is opaque.
- **Colour bar** with the numbers inside it.
- **Coastline**: grey land with a black shoreline, drawn from a bundled vector map, so no map tiles are needed and the map works offline.
- **Place names**: small names of larger towns; more appear as you zoom in.
- **Station dots**: observation stations ([Stations](stations.md)); small when zoomed out, larger when zoomed in.
- **Tile outlines**: the borders of your areas, with a number badge. Solid means active, dashed means paused or stopped. Blue is HARMONIE, purple is ECMWF-IFS.

Zoom runs from level 5 to 15. Drag to pan, pinch to zoom.

## The caption

The caption on the map tells where the data of the tapped point comes from, for example which model covers it, and says "also ECMWF-IFS" when a second model reaches it too. It also shows the forecast time. Tap **now** to put the chart cursor at the actual time of day; the map shows the nearest forecast hour.

## Old data fades

A tile whose newest run is more than 24 hours old fades to grey, fully grey at 48 hours. Grey means the data is stale, usually because downloads are paused or failing.

## Two models together

ECMWF-IFS is drawn below HARMONIE, so you see the fine model where it exists and the coarse one around it.

## Location button

The button under the menu button finds your position (one fix; GPS if you allowed precise location), selects that point as if you had tapped it, and centres the map there. The position is not stored or sent anywhere.

## Divider

Between map and charts there is a drag handle. Portrait: map above, charts below. Landscape: map on the left, charts on the right. Each orientation remembers its own split.
