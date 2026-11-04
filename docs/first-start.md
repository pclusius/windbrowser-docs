# First start

When you open WindBrowser for the first time the map is empty. **Nothing is downloaded until you have chosen an area.**

The menu (hamburger button, top left) holds **Add area here…** at the top:

![Menu](img/menu.png){ width=320 }

## Add an area

1. Open the menu with the **hamburger button** at the top left of the map.
2. Pick **Add area here…**.
3. Choose the **model**: HARMONIE (detailed, small areas) or ECMWF-IFS (coarse, large areas, very small downloads).
4. A rectangle appears inside the current view. Drag its **top-left and bottom-right handles** to cover the sea area you want. Touches elsewhere pan the map.
5. The dashed outline around your rectangle is the area that will really be downloaded. It is slightly larger so that points at the edge of your rectangle can still be interpolated.
6. Check the **disk estimate** in the panel. A warning appears if the data limit would be exceeded.
7. Confirm. The first forecast starts downloading ("Downloading the first forecast…"). When data is ready, the panel under the map says "Tap the map, or an orange station").

!!! tip
    For a regatta, choose a HARMONIE area around the course and a larger ECMWF-IFS area around it. Both can be active at once.

## Size limits

An area can hold at most 16 square degrees with HARMONIE and 400 with ECMWF-IFS. Larger rectangles are refused. See [Tiles](tiles.md) for what happens when areas overlap.

## What happens next

The app checks for a new forecast every hour in the background, and also when you bring it to the front (at most every 10 minutes). See [Updates](updates.md).
