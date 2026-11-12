# First start

When you open WindBrowser for the first time the map is empty. **Nothing is downloaded until you have chosen an area.**

The menu (hamburger button, top left) holds **Add new forecast tile** at the top:

![Menu](img/menu.png){ width=320 }

## Add an area

1. Open the menu with the **hamburger button** at the top left of the map.
2. Pick **Add new forecast tile**.
3. Choose the **model**: HARMONIE (detailed, small areas), ARPEGE (medium, Europe and the Baltic, needs your own free Météo-France key, see [ARPEGE](arpege.md)) or ECMWF-IFS (coarse, large areas, very small downloads).
4. A rectangle appears inside the current view. Drag its **top-left and bottom-right handles** to cover the sea area you want. Touches elsewhere pan the map.
5. The dashed outline around your rectangle is the area that will really be downloaded. It is slightly larger so that points at the edge of your rectangle can still be interpolated.
6. For ARPEGE, choose **how many days ahead** it is downloaded with the chips (1–4, default 3); see [ARPEGE](arpege.md). Check the **disk estimate** in the panel. A warning appears if the data limit would be exceeded.
7. Confirm. The first forecast starts downloading ("Downloading the first forecast…"). When data is ready, the panel under the map says "Tap the map, or an orange station").
8. The app now asks once whether it may **run without battery restrictions** ("Keep the forecasts coming?"). Allow it if you want no gaps in the forecast history; see [Updates](updates.md). You can change it later in Android's settings: App info → Battery → Unrestricted.

!!! tip
    For a sail race or just a cruise leg, choose a HARMONIE area around the course and a larger ECMWF-IFS area around it. Both can be active at once.

## Size limits

An area can hold at most 16 square degrees with HARMONIE, 400 with ARPEGE and 1600 with ECMWF-IFS. Larger rectangles are refused. See [Tiles](tiles.md) for what happens when areas overlap.

## What happens next

The app checks for a new forecast every hour in the background, and also when you bring it to the front (at most every 10 minutes). See [Updates](updates.md).
