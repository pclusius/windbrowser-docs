# The map

![Map overview](img/map.png)

## What you see

- **Wind layer**: colours show wind speed, from blue (calm) through green, yellow, orange and red to purple and black (35 knots and more). Wind barbs show direction and speed in knots. The layer is opaque.
- **Colour bar** with the numbers inside it.
- **Temperature map**: choose **Temp** on the toggle in the speed chart and the colours show the 2 m air temperature from -20 °C (black) through purple, blue, cyan, green, yellow and orange to red and light grey at 40 °C and above (the `nipy_spectral` scale), with its own colour bar in °C. The wind barbs stay. ARPEGE and ECMWF-IFS have temperature, HARMONIE does not: the colours come from ARPEGE where it covers the point and otherwise from ECMWF-IFS, and the barbs from the topmost model, so where a HARMONIE tile lies over one of them the colours come from that one and the barbs from HARMONIE; a HARMONIE tile with nothing under it shows barbs only. The grey land setting is kept as it is, so with grey land on, the temperature shows over the sea only. Choose **Speed** to go back to the wind layer.

![Temperature map with wind barbs](img/map-temperature.png)
- **Coastline**: grey land with a black shoreline, drawn from a bundled vector map, so no map tiles are needed and the map works offline.
- **Place names**: small names of larger towns; more appear as you zoom in.
- **Station dots**: orange dots are observation stations ([Stations](stations.md)); small when zoomed out, larger when zoomed in.
- **Tile outlines**: the borders of your areas, with a number badge. Solid means active, dashed means paused or stopped. Blue is HARMONIE, green is ARPEGE, purple is ECMWF-IFS.

Zoom runs from level 5 to 15. Drag to pan, pinch to zoom.

## The caption

The caption (shown with the (i) button at the bottom right) reads, for example, `ECMWF-IFS · Sat 7 20:00 UTC+02 · run 4 Nov 02:00 `: the model, the forecast time shown and the model run it comes from. In the temperature map it also says "2 m temperature" and, where the barbs come from another model, "wind barbs FMI-HARMONIE". For a tapped point it names the model that covers the point, and adds "also ECMWF-IFS" when a second model reaches it too. Two taps on the clock put the map and the chart cursor at the actual time.

## Old data fades

A tile whose newest run is more than 24 hours old fades to grey, fully grey at 48 hours. Grey means the data is stale, usually because downloads are paused or failing.

## Two models together

The finest model is drawn on top: ECMWF-IFS below ARPEGE below HARMONIE, so you see the fine model where it exists and the coarser ones around it. To look at a layer that is covered, hide the ones above it by tapping their names in the chart legend ([Charts](charts.md)).

## Tools button

The round hammer button at the top right of the map holds three tools. Tap it and the radar, routing and location buttons fan out round it; tap one to use it. Tap the hammer again, or anywhere else on the map, to fold them away. The menu button at the top left stays where it is.

- **Rain radar**: switches the rain radar layer on and off (see below).
- **Routing** (a zigzag route with a dot at each end): opens the same window as **Routing…** in the menu: your routes, saved plans and "Plan a passage" ([Routing](routing.md)).
- **Location**: finds your position (one fix; GPS if you allowed precise location), selects that point as if you had tapped it, and centres the map there. The position is not stored or sent anywhere.

## Rain radar

The radar button is blue while the layer is on and grey while it is off. Switching it on shows the FMI rain radar (Finland and its surroundings) for the time on the clock, and moves the time to now. While the radar is shown it replaces the wind or temperature layer and its colour bar, and the time cannot be moved past now; switch the radar off to get the forecast back. The pictures of the last 6 hours are downloaded when you switch it on (one every 15 minutes), so scrubbing the time needs no network. Colours go from blue to dark red as the rain gets heavier (0.1 mm/h and up to 5 mm/h and more); a greyer tone with a thin line marks where the radars do not reach.

## The clock

The bar at the bottom of the map shows the time of the map and the charts, which are always the same. The time is yellow when it is more than a minute from now.

- The arrow at each end runs the time forward or back by itself (a quarter of an hour every quarter second); the running arrow becomes a pause sign. Press the other arrow to turn the direction round.
- **Double tap** the time to go to now.
- **Press and hold** the time, then move right or left, to scrub; the bar leans a little the way you pull and springs back when you let go.

The small (i) button in the bottom right corner shows the caption; it hides again when you tap the map or the charts.

## Divider

Between map and charts there is a drag handle. Portrait: map above, charts below. Landscape: map on the left, charts on the right. Each orientation remembers its own split. On a tablet, or in any window at least 840 dp wide (also an unfolded foldable or a split screen), the map and the charts are side by side, as in landscape.
