# Routing: plan a passage on a fixed route

The routing part of WindBrowser answers: *if I sail this route, leaving at this time, when do I arrive, how fast do I go, and what wind do I meet?* It does **not** look for a better route: the route is yours, from your chart plotter or Navionics, and the app sails it on the computer with the forecasts stored on the phone.

Open it from the map menu: **Routing…**.

## Import a route

**Import route (GPX)…** reads a GPX file with a route (`rte`), a track (`trk`) or waypoints (`wpt`), up to 5 MB and 2,000 points. Navionics routes work as they are. Imported routes are listed with a checkbox (show or hide on the map), a coloured dot, and **Remove**. Tapping a route zooms the map to it.

## Boat and routing settings

The boat and routing settings are the lower part of the **Plan a passage…** dialog, below the forecast choices. They belong to the plan: a new plan starts with the settings of the last one, and each saved plan keeps its own, so **Make again with the latest run** and saved plans use the settings they were made with. Nothing about a boat is built into the app: import your own polar.

- **Polar.** Choose the polar in the drop-down. **Import polar (.pol)…** (the last item of the drop-down) reads an Expedition-style table: wind angles in rows, wind speeds in columns, boat speed in knots, separated by tabs or semicolons. You can import several polars and pick one for each plan. **Delete** beside the drop-down removes the chosen polar from the phone after asking; plans made with it keep their results, but to make one of them again you must import the polar again.
- **Upwind.** The boat tacks when the course is closer to the wind than the tack angle. Tick **Optimum tack angle from the polar** to use the best angle for each wind speed, or give a **Minimum tack angle**. With both, the larger is used. **Leeway when beating** (default 4°) makes the track lie further from the wind than the heading; it falls to 2° at 90°, 1° at 130° and 0° at 180°.
- **Downwind.** The same in reverse: **Optimum downwind angle** (this assumes the boat gybes) and/or a **Maximum downwind angle**. With both, the smaller is used. A maximum like 178° means no gybing until the course is deeper than that, which is slower.
- **Engine.** Tick **Motor when the sailing speed is low** and give the motoring speed and the sailing speed under which the engine starts. It stops again when the sailing speed is 0.5 kn above that. Without an engine the boat waits for wind.
- **Performance.** **General boat speed** as a percentage of the polar (blank is 100 %, 90 is ten percent slower), and speeds as a percentage of the polar in light wind (below a wind speed you give), in strong wind (above one) and at nautical night (sun more than 12° below the horizon). The adjustments multiply: they come on top of the general one.
- **Avoid.** Used by *Best departure* below.
- **When the forecast ends.** Go on with the last wind, or stop the plan there.

The routing does not use gusts, only the mean wind. Where the model forecasts gusts (HARMONIE and ARPEGE, not ECMWF-IFS) they are kept with the plan and shown on the wind graph and in the summary.

## Plan a passage

**Plan a passage…** asks for the route, the departure time (this phone's time) and the forecast model, and holds the boat and routing settings above. **Cancel** takes you back to the **Routing** dialog. The newest run of that model is used; where it has no forecast (outside your tiles, or after the end of its run) the next less detailed model fills in. The plan is worked out in steps of five minutes along the route.

**Forecast run.** By default the newest stored run of the model is used. To see how an older forecast would have told it, choose one of the stored runs in the list; it is used wherever it reaches, and the newest run elsewhere. A plan opened later shows the runs it was made with; **Make again with the latest run** in its summary makes a new plan with the same route, departure and model.

The result has two tabs.

- **Summary:** at the top the figures of the passage: which polar was used and its general adjustment, whether the route was sailed, motored or mixed (with the motoring time and share, or "Motor not started"), waiting for wind if it occurred, the forecast models and runs used, departure, ETA, time, route length and distance really sailed (longer when tacking or gybing). Then *Wind along the route* as a list: highest and lowest TWS, the wind speed that was exceeded or not reached 20 % of the time, the average wind direction with its range, and the **maximum gust** (only if the model forecasts gusts). Then *Boat speed*: average SOG, SOG range and average VMG. Below them is the leg table and two histograms.
- **Leg table.** One row for each hour of a leg (a leg shorter than an hour has one row), with a thick line between legs and a last row, **All**, for the whole passage. Each row shows the mean over its time: **Time** (the first column stays in place when you scroll sideways, and the header stays on top when you scroll down), **Dur** (duration), **TWS** (true wind speed), **TWA** (true wind angle to the course), **TWD** (true wind direction), **SOG** (speed over ground), **VMG** (velocity made good along the route), **DTF** (distance to finish in nautical miles at the start of the row) and **FC** (forecast model: H = HARMONIE, E = ECMWF-IFS, A = ARPEGE, with ">" where it changes within the row). TWA is written `60°<` when the wind comes from starboard and `>123°` when it comes from port; a `!` in front means the boat was tacking or gybing for most of the row. `M` replaces the angle when the engine ran most of the row, and `W` when the boat was waiting for wind. Speeds are whole knots for TWS (SOG and VMG have one decimal), or one decimal in m/s, following the unit in Settings. The table is wider than a narrow phone only if the font is large; then it scrolls sideways.
- **Histograms.** The share of the time in each wind speed class (2 kn, or 1 m/s wide) and in each of eight wind directions.
- **Graphs:** wind speed, boat speed (made good along the route solid, over ground dashed), and wind direction, with strips showing which model is used and how the boat is sailed (tacking, gybing, motoring, waiting). On the wind graph the **gust** is a dashed line in the colour of the model that forecast it (HARMONIE and ARPEGE only). Choose the horizontal axis: **Clock**, **Time since departure** or **Distance along the route**. Touch a graph to put a cursor on all of them: the sailboat symbol moves to that point on the map, the map shows the wind of that moment, and the line above the graphs reads the plan there (with the gust, if there is one).

The panel leaves the map visible and usable.

## Save, compare, roadbook

- **Save** keeps the plan on the phone with its figures and the settings it was made with. Saved plans are listed in **Routing…**. They can be opened again after the forecasts they used have expired.
- Tick two to four saved plans and choose **Compare ticked plans**: a table of their figures and their graphs on one axis, each in its own colour, with one boat per plan on the map. Use it to compare departure times or models.
- **Roadbook** saves a single HTML file in the Downloads folder, with the figures (polar, routing, wind, boat speed), the waypoints with times, the same leg table as the summary, the histograms and the graphs, including the gust. It opens in any browser and can be printed.

## Best departure

In **Plan a passage…**, tick **Find the best departure** to try departures every 30 to 180 minutes over 12 to 72 hours from the time given. In the **Avoid** part of the settings tick what you want to avoid:

- **Beating in wind above** a limit (beating means a course within 60° of the wind),
- **Wind above** a limit,
- **Night**.

Each departure gets a score: the hours that meet each ticked condition, added together. Beating in strong wind therefore counts twice and costs more than strong wind downwind. The best departure has the lowest score; of equal ones, the shortest trip wins. The chart shows trip time and score against departure time, with the best marked; touch a point to read it, and **Open this plan** to see and save it.

!!! note
    The weights of the conditions (and a weight for trip time) are all 1 (and 0) by default. They can be changed with a file `routing_weights.xml` in the app's files directory: `<weights beating="2" wind="1" night="0.5" trip="0.1"/>`.

## What to remember

The forecast is not certain and the plan assumes the boat sails as the polar says, with no current and no waves beyond what the polar and the adjustments describe. Use it to compare alternatives and to see where the hard parts are, not as the only source.
