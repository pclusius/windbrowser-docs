# Päivitykset ja vianetsintä

## Näin päivitykset toimivat

- Taustatyö suoritetaan noin **tunnin välein** ja päivittää kaikki aktiiviset alueet.
- Sovellus päivittää myös, kun tuot sen etualalle, korkeintaan 10 minuutin välein.
- FMI säilyttää **vain viimeisimmän ajonsa**. Ajoa, joka jäi väliin puhelimen ollessa joutilaana, ei voi hakea jälkikäteen, joten avaa sovellus silloin tällöin niinä päivinä ennen kuin tarvitset sitä.

## Päivitysloki

Valikko → **Update log…** listaa jokaisen työn (tunneittainen tai manuaalinen, yritys, standby bucket), tuloksen kunkin alueen osalta ja lopun. Sen avulla selviää, miksi jokin ajo puuttuu.

## Vianetsintä

| Ongelma | Mitä kokeilla |
|---|---|
| "Downloading the first forecast…" ei valmistu | Tarkista verkkoyhteys; katso päivityslokia |
| Alue on harmaa | Sen uusin ajo on yli 24 h vanha. Tarkista, että alue on aktiivinen ja puhelin verkossa |
| "No forecast at the tapped point" | Piste on kaikkien alueiden ulkopuolella. Lisää alue (ECMWF-IFS toimii kaikkialla) |
| Ajot katosivat | Dataraja tai historiaraja karsi ne; nosta rajaa |
| HARMONIE-alue hylättiin | Suurempi kuin 16 neliöastetta tai olemassa olevien alueiden täysin kattama |
| Android viivästyttää tunneittaisia päivityksiä | Androidin virransäästö; avaa sovellus käynnistääksesi päivityksen |
