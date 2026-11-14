# Päivitykset ja vianetsintä

## Näin päivitykset toimivat

- Taustatyö suoritetaan noin **tunnin välein** ja päivittää kaikki aktiiviset alueet.
- Sovellus päivittää myös, kun tuot sen etualalle, korkeintaan 10 minuutin välein.
- Koska Android voi panna tunneittaisen työn nukkumaan puhelimen ollessa joutilaana, myös **tunneittainen herätys** pyytää päivitystä.
- FMI säilyttää **vain viimeisimmän ajonsa**, ja sovellus hakee myös ARPEGEsta vain uusimman ajon. Ajoa, joka jäi väliin puhelimen ollessa joutilaana, ei voi hakea jälkikäteen, joten avaa sovellus silloin tällöin niinä päivinä ennen kuin tarvitset sitä.
- Uuden ARPEGE-ajon lataus kestää noin kolme minuuttia, koska Météo-France lähettää sen monena pienenä pyyntönä (luku **ARPEGE ja Météo-Francen avain**).

## Akunkäyttö: aseta sovellus tilaan Unrestricted

Android säästää virtaa viivyttämällä taustatyötä, eniten yöllä, ja sillä välin ilmestyvä ennusteajo menetetään lopullisesti, koska FMI säilyttää vain viimeisimmän. Kun WindBrowser saa toimia ilman akunkäytön rajoituksia, tämä on käytännössä korjaantunut: päivitykset tulevat ajallaan eikä ennustehistoriassa ole aukkoja.

Sovellus kysyy tästä **kerran**, heti ensimmäisen alueen lisäämisen jälkeen. **Allow** näyttää Androidin oman kysymyksen ("Let app always run in background?"). Sovellus tarkistaa uudet ennusteet vain noin kerran tunnissa ja lataa vain, kun uusi ajo on saatavilla, joten lisäkulutus on pieni. Jos valitsit **Not now** tai haluat perua valinnan, muuta sitä milloin tahansa Androidin asetuksissa: **App info → Battery → Unrestricted** (sanamuoto vaihtelee puhelinvalmistajittain). Päivityslokista näkee, onko sovellus tällä hetkellä rajoittamaton.

## Päivitysloki

Valikko → **Update log…** listaa jokaisen työn (tunneittainen, herätys tai manuaalinen, yritys, standby bucket, akku rajoittamaton vai optimoitu, uinuuko puhelin vai ei), tuloksen kunkin alueen osalta ja lopun. Sen avulla selviää, miksi jokin ajo puuttuu.

## Vianetsintä

| Ongelma | Mitä kokeilla |
|---|---|
| "Downloading the first forecast…" ei valmistu | Tarkista verkkoyhteys; katso päivityslokia |
| Alue on harmaa | Sen uusin ajo on yli 24 h vanha. Tarkista, että alue on aktiivinen ja puhelin verkossa |
| "No forecast at the tapped point" | Piste on kaikkien alueiden ulkopuolella. Lisää alue (ECMWF-IFS toimii kaikkialla) |
| Ajot katosivat | Dataraja tai historiaraja karsi ne; nosta rajaa |
| HARMONIE-alue hylättiin | Suurempi kuin 16 neliöastetta tai olemassa olevien alueiden täysin kattama |
| ARPEGE-alue sanoo tarvitsevansa avaimen tai "key was rejected" | Syötä avain tai uusi avain, jos se vanheni tai korvattiin: luku **ARPEGE ja Météo-Francen avain** |
| Android viivästyttää päivityksiä, tai ajoja puuttuu yöltä | Aseta sovelluksen akunkäytöksi Unrestricted (katso yllä); sovelluksen avaaminen käynnistää myös päivityksen |
