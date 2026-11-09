# Reititys: passage-suunnitelma kiinteälle reitille

WindBrowserin reititysosa vastaa kysymykseen: *jos purjehdin tämän reitin ja lähden tähän aikaan, milloin saavun perille, kuinka nopeasti kuljen ja millaista tuulta kohtaan?* Se **ei** etsi parempaa reittiä: reitti on sinun, plotteristasi tai Navionicsista, ja sovellus purjehtii sen laskennallisesti puhelimeen tallennetuilla ennusteilla.

Avaa se kartan valikosta: **Routing…**.

## Reitin tuonti

**Import route (GPX)…** lukee GPX-tiedoston, jossa on reitti (`rte`), jälki (`trk`) tai reittipisteitä (`wpt`), enintään 5 MB ja 2 000 pistettä. Navionics-reitit toimivat sellaisinaan. Tuodut reitit listataan valintaruudun (näytä tai piilota kartalla), värillisen pisteen ja **Remove**-painikkeen kanssa. Reittiä napauttamalla kartta zoomaa siihen.

## Veneen ja reitityksen asetukset

Veneen ja reitityksen asetukset ovat **Plan a passage…** -ikkunan alaosassa, ennustevalintojen alla. Ne kuuluvat suunnitelmaan: uusi suunnitelma alkaa edellisen asetuksilla, ja jokainen tallennettu suunnitelma säilyttää omansa, joten **Make again with the latest run** ja tallennetut suunnitelmat käyttävät asetuksia, joilla ne tehtiin. Sovellukseen ei ole sisäänrakennettu mitään venettä: tuo oma polaarisi.

- **Polar.** Valitse polaari pudotusvalikosta. **Import polar (.pol)…** (pudotusvalikon viimeinen kohta) lukee Expedition-tyylisen taulukon: tuulikulmat riveillä, tuulen nopeudet sarakkeissa, veneen nopeus solmuina, tabulaattorein tai puolipistein erotettuna. Polaareja voi tuoda useita ja valita yhden kullekin suunnitelmalle. **Delete** pudotusvalikon vieressä poistaa valitun polaarin puhelimesta kysyttyään vahvistuksen; sillä tehdyt suunnitelmat säilyttävät tuloksensa, mutta jos haluat tehdä jonkin niistä uudelleen, polaari on tuotava uudelleen.
- **Upwind** (kryssi). Vene kryssii, kun kurssi on lähempänä tuulta kuin kryssikulma. Valitse **Optimum tack angle from the polar** käyttääksesi kullekin tuulen nopeudelle parasta kulmaa, tai anna **Minimum tack angle**. Jos molemmat on annettu, käytetään suurempaa. **Leeway when beating** (oletus 4°) saa jäljen asettumaan kauemmas tuulesta kuin keula; se pienenee 2°:een 90° kulmassa, 1°:een 130° kulmassa ja 0°:een 180° kulmassa.
- **Downwind** (myötätuuli). Sama päinvastoin: **Optimum downwind angle** (olettaa, että vene jiippaa) ja/tai **Maximum downwind angle**. Jos molemmat on annettu, käytetään pienempää. Maksimi kuten 178° tarkoittaa, ettei jiipata ennen kuin kurssi on syvempi kuin se, mikä on hitaampaa.
- **Engine.** Valitse **Motor when the sailing speed is low** ja anna moottoriajonopeus sekä purjehdusnopeus, jonka alittuessa moottori käynnistyy. Se sammuu, kun purjehdusnopeus on 0,5 kn tämän yläpuolella. Ilman moottoria vene odottaa tuulta.
- **Performance.** **General boat speed** prosentteina polaarista (tyhjä on 100 %, 90 on kymmenen prosenttia hitaampi) sekä nopeus prosentteina polaarista heikossa tuulessa (annetun tuulen nopeuden alapuolella), kovassa tuulessa (annetun yläpuolella) ja nautisessa yössä (aurinko yli 12° horisontin alapuolella). Säädöt kertautuvat: ne tulevat yleisen säädön päälle.
- **Avoid.** Käytetään kohdassa *Paras lähtöaika* alla.
- **When the forecast ends.** Jatka viimeisellä tuulella tai lopeta suunnitelma siihen.

Reititys ei käytä puuskia, vain keskituulta. Kun malli ennustaa puuskat (HARMONIE ja ARPEGE, ei ECMWF-IFS), ne tallennetaan suunnitelman mukana ja näytetään tuulikaaviossa ja yhteenvedossa.

## Passage-suunnitelma

**Plan a passage…** kysyy reitin, lähtöajan (tämän puhelimen aika) ja ennustemallin, ja sisältää yllä kuvatut veneen ja reitityksen asetukset. **Cancel** palauttaa **Routing**-ikkunaan. Käytetään kyseisen mallin uusinta ajoa; missä sillä ei ole ennustetta (alueidesi ulkopuolella tai ajon päätyttyä), seuraava vähemmän tarkka malli täydentää. Suunnitelma lasketaan viiden minuutin askelin reitin varrella.

**Forecast run.** Oletuksena käytetään mallin uusinta tallennettua ajoa. Nähdäksesi, mitä vanhempi ennuste olisi kertonut, valitse jokin listan tallennetuista ajoista; sitä käytetään kaikkialla, minne se yltää, ja muualla uusinta ajoa. Myöhemmin avattu suunnitelma näyttää ajot, joilla se tehtiin; yhteenvedon **Make again with the latest run** tekee uuden suunnitelman samalla reitillä, lähtöajalla ja mallilla.

Tuloksessa on kaksi välilehteä.

- **Summary:** ylhäällä passagen tunnusluvut: mitä polaaria käytettiin ja sen yleinen säätö, purjehdittiinko, moottoroitiinko vai sekä että (moottoroinnin aika ja osuus, tai "Motor not started"), tuulta odotettiinko, käytetyt ennustemallit ja ajot, lähtö, ETA, kesto, reitin pituus ja todella purjehdittu matka (pidempi kryssiessä tai jiipatessa). Sitten *Wind along the route* listana: suurin ja pienin TWS, tuulen nopeus, joka ylitettiin tai ei saavutettu 20 % ajasta, keskimääräinen tuulen suunta vaihteluväleineen sekä **suurin puuska** (vain jos malli ennustaa puuskia). Sitten *Boat speed*: keskimääräinen SOG, SOG:n vaihteluväli ja keskimääräinen VMG. Niiden alla ovat osuustaulukko ja kaksi histogrammia.
- **Leg table.** Yksi rivi kunkin osuuden jokaista tuntia kohden (alle tunnin osuudella on yksi rivi), osuuksien välillä paksu viiva ja viimeisenä rivinä **All** koko passagelle. Jokainen rivi näyttää ajan keskiarvon: **Time** (ensimmäinen sarake pysyy paikallaan sivuttain vieritettäessä ja otsikko ylhäällä alas vieritettäessä), **Dur** (kesto), **TWS** (todellisen tuulen nopeus), **TWA** (todellisen tuulen kulma kurssiin), **TWD** (todellisen tuulen suunta), **SOG** (nopeus pohjan suhteen), **VMG** (reittiä pitkin saavutettu nopeus), **DTF** (matka maaliin meripeninkulmina rivin alussa) ja **FC** (ennustemalli: H = HARMONIE, E = ECMWF-IFS, A = ARPEGE, ">" kun se vaihtuu rivin sisällä). TWA kirjoitetaan `60°<`, kun tuuli tulee oikealta, ja `>123°`, kun vasemmalta; edessä oleva `!` tarkoittaa, että vene kryssi tai jiippasi suurimman osan rivistä. `M` korvaa kulman, kun moottori kävi suurimman osan rivistä, ja `W`, kun vene odotti tuulta. Nopeudet ovat TWS:lle kokonaisia solmuja (SOG ja VMG yhdellä desimaalilla) tai m/s yhdellä desimaalilla Asetusten yksikön mukaan. Taulukko on kapeaa puhelinta leveämpi vain, jos kirjasin on suuri; silloin se vierii sivuttain.
- **Histograms.** Ajan osuus kussakin tuulen nopeusluokassa (2 kn tai 1 m/s leveä) ja kussakin kahdeksasta tuulen suunnasta.
- **Graphs:** tuulen nopeus, veneen nopeus (reittiä pitkin saavutettu yhtenäisenä, pohjan suhteen katkoviivalla) ja tuulen suunta, sekä kaistat, jotka näyttävät käytetyn mallin ja veneen kulkutavan (kryssi, jiippi, moottori, odotus). Tuulikaaviossa **puuska** on katkoviiva sen mallin värillä, joka sen ennusti (vain HARMONIE ja ARPEGE). Valitse vaaka-akseli: **Clock**, **Time since departure** tai **Distance along the route**. Kosketa kaaviota asettaaksesi kursorin kaikkiin: purjevene-symboli siirtyy kartalla kyseiseen kohtaan, kartta näyttää sen hetken tuulen ja kaavioiden yläpuolinen rivi kertoo suunnitelman siinä kohdassa (puuskineen, jos sellainen on).

Paneeli jättää kartan näkyviin ja käytettäväksi.

## Tallennus, vertailu, ajopäiväkirja

- **Save** tallentaa suunnitelman puhelimeen lukuineen ja asetuksineen, joilla se tehtiin. Tallennetut suunnitelmat listataan kohdassa **Routing…**. Ne voi avata uudelleen senkin jälkeen, kun niiden käyttämät ennusteet ovat vanhentuneet.
- Valitse kaksi–neljä tallennettua suunnitelmaa ja paina **Compare ticked plans**: taulukko niiden luvuista ja niiden kaaviot samalla akselilla, kukin omalla värillään, kartalla yksi vene kutakin suunnitelmaa kohden. Käytä sitä lähtöaikojen tai mallien vertailuun.
- **Roadbook** tallentaa yhden HTML-tiedoston Downloads-kansioon: tunnusluvut (polaari, reititys, tuuli, veneen nopeus), reittipisteet aikoineen, sama osuustaulukko kuin yhteenvedossa, histogrammit ja kaaviot puuskineen. Se avautuu missä tahansa selaimessa ja sen voi tulostaa.

## Paras lähtöaika

Valitse **Plan a passage…** -ikkunassa **Find the best departure** kokeillaksesi lähtöaikoja 30–180 minuutin välein 12–72 tunnin ajalta annetusta ajasta alkaen. Asetusten **Avoid**-osassa valitse, mitä haluat välttää:

- **Beating in wind above** (kryssi tuulessa, joka ylittää rajan; kryssi tarkoittaa kurssia 60° sisällä tuulesta),
- **Wind above** (tuuli yli rajan),
- **Night** (yö).

Jokainen lähtöaika saa pisteet: kunkin valitun ehdon täyttävät tunnit laskettuna yhteen. Kryssi kovassa tuulessa siis lasketaan kahdesti ja maksaa enemmän kuin kova tuuli myötätuulessa. Paras lähtöaika on pienin pistemäärä; tasatilanteessa lyhin matka voittaa. Kaavio näyttää matka-ajan ja pisteet lähtöajan funktiona, paras merkittynä; kosketa pistettä lukeaksesi sen, ja **Open this plan** näyttää ja tallentaa suunnitelman.

!!! note
    Ehtojen painot (ja matka-ajan paino) ovat oletuksena 1 (ja 0). Niitä voi muuttaa tiedostolla `routing_weights.xml` sovelluksen tiedostokansiossa: `<weights beating="2" wind="1" night="0.5" trip="0.1"/>`.

## Mitä kannattaa muistaa

Ennuste ei ole varma, ja suunnitelma olettaa veneen purjehtivan polaarin mukaan, ilman virtausta ja aallokkoa, lukuun ottamatta sitä, mitä polaari ja säädöt kuvaavat. Käytä sitä vaihtoehtojen vertailuun ja vaikeiden kohtien näkemiseen, älä ainoana lähteenä.
