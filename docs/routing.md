# Routing: plan a passage

The routing part of WindBrowser answers: *if I sail this route, leaving at this time, when do I arrive, how fast do I go, and what wind do I meet?* The route is yours, from your chart plotter or Navionics, and the app sails it on the computer with the forecasts stored on the phone. By default it follows your line exactly. If you tick **Find the best route between the route's points (weather routing)**, it looks for the fastest line (or the one that best avoids what you want to avoid) between your points, using the forecast, the polar and the tacking angles.

Open it from the map menu: **Routing**, or with the routing button in the tools (hammer) button at the top right of the map.

## Import a route

**Import route (GPX)…** reads a GPX file with a route (`rte`), a track (`trk`) or waypoints (`wpt`), up to 5 MB and 2,000 points. Navionics routes work as they are. Imported routes are listed with a checkbox (show or hide on the map), a coloured dot, and **Remove**. Tapping a route zooms the map to it.

**Route points.** Tap a point of a visible route on the map to open its window: the point's number, how weather routing passes it (**Through**, **Leave to port** or **To starboard**; the first and last point are always passed through), and its latitude and longitude, which you can type. **Save** stores the change, **Delete point** removes the point after asking (this cannot be undone), **Cancel** closes the window. A point that is left to port or starboard is drawn with an arrow circling it: clockwise for a mark left to starboard, counter-clockwise for one left to port. The choice matters only to weather routing; a route sailed as drawn goes through every point.

## Boat and routing settings

The boat and routing settings are the lower part of the **Plan a passage…** dialog, below the forecast choices. They belong to the plan: a new plan starts with the settings of the last one, and each saved plan keeps its own, so **Make again with the latest run** and saved plans use the settings they were made with. Nothing about a boat is built into the app: import your own polar.

- **Polar.** Choose the polar in the drop-down. **Import polar (.pol)…** (the last item of the drop-down) reads an Expedition-style table: wind angles in rows, wind speeds in columns, boat speed in knots, separated by tabs or semicolons. You can import several polars and pick one for each plan. **Delete** beside the drop-down removes the chosen polar from the phone after asking; plans made with it keep their results, but to make one of them again you must import the polar again.
- **Upwind.** The boat tacks when the course is closer to the wind than the tack angle. Tick **Optimum tack angle from the polar** to use the best angle for each wind speed, or give a **Minimum tack angle**. With both, the larger is used. **Leeway when beating** (default 4°) makes the track lie further from the wind than the heading; it falls to 2° at 90°, 1° at 130° and 0° at 180°. **Progress when tacking (%)** is the share of the speed along the course that is kept while the boat tacks (default 95 %, blank is 100 %); the loss grows from nothing at the edge of the tacking angle to the full value 3° inside it.
- **Downwind.** The same in reverse: **Optimum downwind angle** (this assumes the boat gybes) and/or a **Maximum downwind angle**. With both, the smaller is used. A maximum like 178° means no gybing until the course is deeper than that, which is slower. **Progress when gybing (%)** works like the tacking one.
- **Engine.** Tick **Motor when the sailing speed is low** and give the motoring speed and the sailing speed under which the engine starts. It stops again when the sailing speed is 0.5 kn above that. Without an engine the boat waits for wind.
- **Performance.** **General boat speed** as a percentage of the polar (blank is 100 %, 90 is ten percent slower), and speeds as a percentage of the polar in light wind (below a wind speed you give), in strong wind (above one) and at nautical night (sun more than 12° below the horizon). The adjustments multiply: they come on top of the general one.
- **Avoid** (for the best route and departure). What the weather routing and *Best departure* below try to avoid; see those sections. The underlined **Parameters** link beside the heading opens the weights and the integration step.
- **When the forecast ends.** Go on with the last wind, or stop the plan there.

The routing, too, uses only the mean wind, not gusts. Where the model forecasts gusts (HARMONIE and ARPEGE, not ECMWF-IFS) they are kept with the plan and shown on the wind graph and in the summary.

## Plan a passage

**Plan a passage…** asks for the route (with **Reverse route** to sail it from the last point to the first, swapping marks left to port and starboard), the weather-routing tick, the departure time (this phone's time) and the forecast model, and holds the boat and routing settings above. **Cancel** takes you back to the **Routing** dialog. The newest run of that model is used; where it has no forecast (outside your tiles, or after the end of its run) the next less detailed model fills in. The plan is worked out in steps of five minutes along the route.

## Weather routing

With **Find the best route between the route's points (weather routing)** ticked, the app searches for the best line along your route. Your points are kept and each is passed as set for it. The route is cut at the points that are passed **Through**, and each part is searched in the way that suits it: a part with points left to port or starboard is searched on a grid by Dijkstra's algorithm, where a point only has to be left on its side and the line does not have to go near it when it need not; a part without such points is searched by the isochrone method (see [About](about.md) for the reference), which gives smoother lines. The cost of a line is its trip time plus, for what you ticked under **Avoid**, the hours that meet each condition times its weight, so with nothing ticked it is simply the fastest line. The search uses the forecast, the polar, the tacking and gybing angles and losses, the engine rule and the other settings of the plan.

- **While it runs**, the map shows the best partial line and, for an isochrone search, the isochrones (the fronts the search has reached) and the stage; for a grid search the grid points that are settled twinkle on the map, spreading from the start, and a bar in the panel under the map shows roughly how far the search is (an estimate that compares the time reached with the time the part takes sailed as drawn). The panel also tells which part of the route is being searched. A search takes from a few seconds to a minute, depending on the route and the phone. **Cancel** stops it.
- **Land.** The app has a coarse land mask (coastline from Natural Earth, lenient near the coast) and routes round it, but it knows no depths, shipping lanes or restrictions. A leg that starts or ends close to land is sailed as drawn. Always check the found line on a chart.
- **The result** is an ordinary plan: the line is drawn on the map and everything below (summary, tables, graphs, save, compare, roadbook) works on it. The line lives in the plan. **Keep this line as a route** in the summary adds it to your routes (named "*name* (best)"). **Make again with the latest run** searches again from your route as drawn, with the same settings.

The result is only as good as the forecast and the polar: a front or sharp wind shift can make a different line better than the one found.

**Forecast run.** By default the newest stored run of the model is used. To see how an older forecast would have told it, choose one of the stored runs in the list; it is used wherever it reaches, and the newest run elsewhere. A plan opened later shows the runs it was made with; **Make again with the latest run** in its summary makes a new plan with the same route, departure and model.

The result has two tabs.

- **Summary:** at the top the figures of the passage: which polar was used and its general adjustment, whether the route was sailed, motored or mixed (with the motoring time and share, or "Motor not started"), waiting for wind if it occurred, the forecast models and runs used, departure, ETA, time, route length and distance really sailed (longer when tacking or gybing). Then *Wind along the route* as a list: highest and lowest TWS, the wind speed that was exceeded or not reached 20 % of the time, the average wind direction with its range, and the **maximum gust** (only if the model forecasts gusts). Then *Boat speed*: average SOG, SOG range and average VMG. Below them is the leg table and two histograms.
- **Leg table.** One row for each hour of a leg (a leg shorter than an hour has one row), with a thick line between legs and a last row, **All**, for the whole passage. Each row shows the mean over its time: **Time** (the first column stays in place when you scroll sideways, and the header stays on top when you scroll down), **Dur** (duration), **TWS** (true wind speed), **TWA** (true wind angle to the course), **TWD** (true wind direction), **SOG** (speed over ground), **VMG** (velocity made good along the route), **DTF** (distance to finish in nautical miles at the start of the row) and **FC** (forecast model: H = HARMONIE, E = ECMWF-IFS, A = ARPEGE, with ">" where it changes within the row). TWA is written `60°<` when the wind comes from starboard and `>123°` when it comes from port; a `!` in front means the boat was tacking or gybing for most of the row. `M` replaces the angle when the engine ran most of the row, and `W` when the boat was waiting for wind. Speeds are whole knots for TWS (SOG and VMG have one decimal), or one decimal in m/s, following the unit in Settings. The table is wider than a narrow phone only if the font is large; then it scrolls sideways.
- **Histograms.** The share of the time in each wind speed class (2 kn, or 1 m/s wide) and in each of eight wind directions.
- **Graphs:** wind speed, boat speed (made good along the route solid, over ground dashed), and wind direction, with strips showing which model is used and how the boat is sailed (tacking, gybing, motoring, waiting). On the wind graph the **gust** is a dashed line in the colour of the model that forecast it (HARMONIE and ARPEGE only). Choose the horizontal axis: **Clock**, **Time since departure** or **Distance along the route**. Touch a graph to put a cursor on all of them: the sailboat symbol moves to that point on the map, the map shows the wind of that moment, and the line above the graphs reads the plan there (with the gust, if there is one).

The panel leaves the map visible and usable.

## Tracks: what the forecast said along a track you sailed

Record the track with your navigation app (Navionics, for example) and import the GPX file with **Routing > Import track (GPX)…**. The file may be large (up to 100 MB; two days at one fix a second is about 50 MB). The app reads it as a stream and keeps one point a minute: the fix nearest the middle of the minute, the speed the recorder wrote for that minute and the distance covered, so the length of the track is exact. Every point must have a time. A silence of over ten minutes splits the track and nothing is invented across it.

The track is looked up in the stored forecasts at once, point by point: the wind, gust and temperature of the newest stored run that covers each time. The result is saved with the track, so it stays after the forecast runs have expired. **Import soon after the trip**: only the runs the phone still holds (the history setting, 1 to 14 days) can be used, and a track older than that shows "Forecast covers 0 %". If a newer run later covers the gaps, "Update with the latest forecast runs" in the track's summary fills them and keeps what was there.

A track is drawn as a plain line, without points, when it is ticked in the Routing menu. **Tap the line**: a small card shows the length, the average speed (as recorded), the average wind and its direction, and the mean temperature. **Tap the card** to open the track in the panel below the map: the summary (figures, leg table by hour with TWS, TWA, TWD, SOG, temperature, distance to the end and forecast model) and the graphs (wind with gust, speed over ground, wind direction, temperature). Touch a graph and the boat is shown on the map at that time, with the map's wind of the time. A hour with no forecast is marked "–" and the lines are broken there.

The same card and panel open when you tap the line of a routing (a ticked saved plan). A track and routings can be ticked together and compared (**Compare ticked plans**), for instance a weather routing against the track actually sailed. The wind and temperature of a track are **forecasts at the place and time of the track**, not measurements; temperature exists only where an ECMWF-IFS or ARPEGE run covers the place.

**CSV.** The CSV button in the panel (and in the comparison) saves the track or plan to Downloads: time (UTC), position, distance along, speed over ground, course, wind speed, wind direction, gust, wind angle, temperature, model and run, with the speeds in the unit chosen in the menu (the column names say `_kn` or `_ms`).

## Save, compare, roadbook

- **Save** keeps the plan on the phone with its figures and the settings it was made with. Saved plans are listed in **Routing**. They can be opened again after the forecasts they used have expired.
- Tick two to six saved plans: their lines appear on the map at once, each in its own colour. **Compare ticked plans (2–6)** shows a table of their figures and their graphs on one axis in the same colours, with one boat per plan on the map. Use it to compare departure times or models.
- **Roadbook** saves a single HTML file in the Downloads folder, with the figures (polar, routing, wind, boat speed), the waypoints with times, the same leg table as the summary, the histograms and the graphs, including the gust. It opens in any browser and can be printed.

## Best departure

In **Plan a passage…**, tick **Find the best departure: try departures from the time above on**, choose how long (12 to 72 hours) and how often (every 30 to 180 minutes), and **Find**. In the **Avoid** part of the settings tick what you want to avoid:

- **Beating in wind above** a limit (beating means a course within 60° of the wind),
- **Wind above** a limit,
- **Night**.

Each departure gets a score: the trip's hours plus, for each ticked condition, the hours that meet it times its weight. Beating in strong wind therefore counts twice and costs more than strong wind downwind. The best departure has the lowest score; with nothing ticked it is the shortest trip.

The result is a panel under the map, like a plan. The bars show the score of each departure, split into trip time and the ticked conditions (in the colours of the conditions); the best is marked. Touch a bar to read that departure, and **Open this plan** to see and save it. A plan opened from the panel shows on top; closing it brings the panel back.

If **Find the best route** is also ticked, every departure is searched for its best route (a quicker search than a single plan's), the trip time of your route as drawn is shown as a dashed line, and a sentence says what the best route saves. The map draws the routes of the departures: the one you touch thickest, its two neighbours on each side thinner. **Open this plan** then searches that departure again in full.

## Parameters

The **Parameters** window (the link beside **Avoid**) holds the general settings of the search:

- **Weights.** Time is the reference: an hour at sea counts as one hour. Three vertical sliders (**Beating**, **Strong wind**, **Night**) say how many hours an hour of that condition adds, from 0 to 3 in tenths; together they can add at most 6, so time always keeps a share. A bar shows the shares and sentences show what an hour of each condition counts as. **Weights to 1** resets them. A weight counts only when its box under **Avoid** is ticked for that plan or sweep. Night is not bad in itself: leave it unticked if you like sailing at night.
- **Integration step.** The isochrone search sails each stage of its search in steps of this length (blank is 10 minutes, 1 to 60). Shorter steps follow the wind more closely and take longer. Leave it blank unless you are trying out how it matters. The grid search has no such setting: its grid is finer on short parts of the route and coarser on long ones, and coarser still in a departure sweep.

## What to remember

The forecast is not certain and the plan assumes the boat sails as the polar says, with no current and no waves beyond what the polar and the adjustments describe. Use it to compare alternatives and to see where the hard parts are, not as the only source.
