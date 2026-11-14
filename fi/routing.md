# Reititys: passage-suunnitelma

WindBrowserin reititysosa vastaa kysymykseen: *jos purjehdin tämän reitin ja lähden tähän aikaan, milloin saavun perille, kuinka nopeasti kuljen ja millaista tuulta kohtaan?* Reitti on sinun, plotteristasi tai Navionicsista, ja sovellus purjehtii sen laskennallisesti puhelimeen tallennetuilla ennusteilla. Oletuksena se seuraa linjaasi täsmälleen. Jos valitset **Find the best route between the route's points (weather routing)**, se etsii pisteidesi välille nopeimman linjan (tai sen, joka parhaiten välttää sen, mitä haluat välttää) ennusteen, polaarin ja kryssikulmien avulla.

Avaa se kartan valikosta: **Routing**, tai kartan oikean yläkulman vasaranapin (työkalupainike) reititysnapilla.

## Reitin tuonti

**Import route (GPX)…** lukee GPX-tiedoston, jossa on reitti (`rte`), jälki (`trk`) tai reittipisteitä (`wpt`), enintään 5 MB ja 2 000 pistettä. Navionics-reitit toimivat sellaisinaan. Tuodut reitit listataan valintaruudun (näytä tai piilota kartalla), värillisen pisteen ja **Remove**-painikkeen kanssa. Reittiä napauttamalla kartta zoomaa siihen.

**Reittipisteet.** Napauta näkyvän reitin pistettä kartalla avataksesi sen ikkunan: pisteen numero, miten säähän perustuva reititys ohittaa sen (**Through** eli läpi, **Leave to port** eli jätä paapuuriin tai **To starboard** eli jätä styyrpuuriin; ensimmäinen ja viimeinen piste ohitetaan aina läpi) sekä sen leveys- ja pituusaste, jotka voit kirjoittaa. **Save** tallentaa muutoksen, **Delete point** poistaa pisteen vahvistuksen jälkeen (tätä ei voi perua), **Cancel** sulkee ikkunan. Piste, joka jätetään paapuuriin tai styyrpuuriin, piirretään sitä kiertävällä nuolella: myötäpäivään styyrpuuriin jätettävä merkki, vastapäivään paapuuriin jätettävä. Valinta vaikuttaa vain säähän perustuvaan reititykseen; sellaisenaan piirrettynä purjehdittava reitti kulkee jokaisen pisteen kautta.

## Veneen ja reitityksen asetukset

Veneen ja reitityksen asetukset ovat **Plan a passage…** -ikkunan alaosassa, ennustevalintojen alla. Ne kuuluvat suunnitelmaan: uusi suunnitelma alkaa edellisen asetuksilla, ja jokainen tallennettu suunnitelma säilyttää omansa, joten **Make again with the latest run** ja tallennetut suunnitelmat käyttävät asetuksia, joilla ne tehtiin. Sovellukseen ei ole sisäänrakennettu mitään venettä: tuo oma polaarisi.

- **Polar.** Valitse polaari pudotusvalikosta. **Import polar (.pol)…** (pudotusvalikon viimeinen kohta) lukee Expedition-tyylisen taulukon: tuulikulmat riveillä, tuulen nopeudet sarakkeissa, veneen nopeus solmuina, tabulaattorein tai puolipistein erotettuna. Polaareja voi tuoda useita ja valita yhden kullekin suunnitelmalle. **Delete** pudotusvalikon vieressä poistaa valitun polaarin puhelimesta kysyttyään vahvistuksen; sillä tehdyt suunnitelmat säilyttävät tuloksensa, mutta jos haluat tehdä jonkin niistä uudelleen, polaari on tuotava uudelleen.
- **Upwind** (kryssi). Vene kryssii, kun kurssi on lähempänä tuulta kuin kryssikulma. Valitse **Optimum tack angle from the polar** käyttääksesi kullekin tuulen nopeudelle parasta kulmaa, tai anna **Minimum tack angle**. Jos molemmat on annettu, käytetään suurempaa. **Leeway when beating** (oletus 4°) saa jäljen asettumaan kauemmas tuulesta kuin keula; se pienenee 2°:een 90° kulmassa, 1°:een 130° kulmassa ja 0°:een 180° kulmassa. **Progress when tacking (%)** on se osuus kurssin suuntaisesta nopeudesta, joka säilyy kryssittäessä (oletus 95 %, tyhjä on 100 %); menetys kasvaa nollasta kryssikulman reunalla täyteen arvoonsa 3° sen sisäpuolella.
- **Downwind** (myötätuuli). Sama päinvastoin: **Optimum downwind angle** (olettaa, että vene jiippaa) ja/tai **Maximum downwind angle**. Jos molemmat on annettu, käytetään pienempää. Maksimi kuten 178° tarkoittaa, ettei jiipata ennen kuin kurssi on syvempi kuin se, mikä on hitaampaa. **Progress when gybing (%)** toimii kuten kryssin vastine.
- **Engine.** Valitse **Motor when the sailing speed is low** ja anna moottoriajonopeus sekä purjehdusnopeus, jonka alittuessa moottori käynnistyy. Se sammuu, kun purjehdusnopeus on 0,5 kn tämän yläpuolella. Ilman moottoria vene odottaa tuulta.
- **Performance.** **General boat speed** prosentteina polaarista (tyhjä on 100 %, 90 on kymmenen prosenttia hitaampi) sekä nopeus prosentteina polaarista heikossa tuulessa (annetun tuulen nopeuden alapuolella), kovassa tuulessa (annetun yläpuolella) ja nautisessa yössä (aurinko yli 12° horisontin alapuolella). Säädöt kertautuvat: ne tulevat yleisen säädön päälle.
- **Avoid** (parasta reittiä ja lähtöaikaa varten). Mitä säähän perustuva reititys ja alla oleva *Paras lähtöaika* yrittävät välttää; ks. nuo osiot. Otsikon vieressä oleva alleviivattu **Parameters**-linkki avaa painot ja integrointiaskeleen.
- **When the forecast ends.** Jatka viimeisellä tuulella tai lopeta suunnitelma siihen.

Reititys käyttää sekin vain keskituulta, ei puuskia. Kun malli ennustaa puuskat (HARMONIE ja ARPEGE, ei ECMWF-IFS), ne tallennetaan suunnitelman mukana ja näytetään tuulikaaviossa ja yhteenvedossa.

## Passage-suunnitelma

**Plan a passage…** kysyy reitin (**Reverse route** purjehtii sen viimeisestä pisteestä ensimmäiseen ja vaihtaa paapuuriin ja styyrpuuriin jätettävät merkit keskenään), säähän perustuvan reitityksen valinnan, lähtöajan (tämän puhelimen aika) ja ennustemallin, ja sisältää yllä kuvatut veneen ja reitityksen asetukset. **Cancel** palauttaa **Routing**-ikkunaan. Käytetään kyseisen mallin uusinta ajoa; missä sillä ei ole ennustetta (alueidesi ulkopuolella tai ajon päätyttyä), seuraava vähemmän tarkka malli täydentää. Suunnitelma lasketaan viiden minuutin askelin reitin varrella.

## Säähän perustuva reititys

Kun **Find the best route between the route's points (weather routing)** on valittu, sovellus etsii reittisi varrelta parhaan linjan. Pisteesi säilyvät ja jokainen ohitetaan sille asetetulla tavalla. Reitti katkaistaan **Through**-pisteistä, ja jokainen osa etsitään sille sopivalla tavalla: osa, jossa on paapuuriin tai styyrpuuriin jätettäviä pisteitä, etsitään ruudukolta Dijkstran algoritmilla, jossa piste on vain jätettävä oikealle puolelle eikä linjan tarvitse käydä sen lähellä, jos se ei ole tarpeen; osa ilman sellaisia pisteitä etsitään isokronimenetelmällä (viite kohdassa [Tietoja](about.md)), joka antaa tasaisempia linjoja. Linjan hinta on sen matka-aika plus, valitsemillesi **Avoid**-ehdoille, kunkin ehdon täyttävät tunnit kertaa sen paino; jos mitään ei ole valittu, se on yksinkertaisesti nopein linja. Haku käyttää ennustetta, polaaria, kryssi- ja jiippikulmia ja -menetyksiä, moottorisääntöä ja suunnitelman muita asetuksia.

- **Haun aikana** kartta näyttää parhaan osittaisen linjan ja isokronihaussa isokronit (haun saavuttamat rintamat) ja vaiheen; ruudukkohaussa selvitetyt ruudukkopisteet tuikkivat kartalla levitessään lähdöstä, ja kartan alla olevan paneelin palkki näyttää suurin piirtein, kuinka pitkällä haku on (arvio, joka vertaa saavutettua aikaa siihen, mihin osa menee piirrettynä purjehdittuna). Paneeli kertoo myös, mitä reitin osaa etsitään. Haku kestää muutamasta sekunnista minuuttiin reitistä ja puhelimesta riippuen. **Cancel** keskeyttää sen.
- **Maa.** Sovelluksessa on karkea maamaski (rantaviiva Natural Earthista, lievä rannan lähellä) ja se reitittää maan ympäri, mutta se ei tunne syvyyksiä, väyliä eikä rajoituksia. Osuus, joka alkaa tai päättyy lähellä maata, purjehditaan piirrettynä. Tarkista löydetty linja aina merikortilta.
- **Tulos** on tavallinen suunnitelma: linja piirretään kartalle ja kaikki alla oleva (yhteenveto, taulukot, kaaviot, tallennus, vertailu, ajopäiväkirja) toimii sillä. Linja asuu suunnitelmassa. Yhteenvedon **Keep this line as a route** lisää sen reitteihisi (nimellä "*nimi* (best)"). **Make again with the latest run** hakee uudelleen reitistäsi sellaisenaan piirrettynä, samoilla asetuksilla.

Tulos on yhtä hyvä kuin ennuste ja polaari: rintama tai jyrkkä tuulenkäänne voi tehdä toisesta linjasta paremman kuin löydetty.

**Forecast run.** Oletuksena käytetään mallin uusinta tallennettua ajoa. Nähdäksesi, mitä vanhempi ennuste olisi kertonut, valitse jokin listan tallennetuista ajoista; sitä käytetään kaikkialla, minne se yltää, ja muualla uusinta ajoa. Myöhemmin avattu suunnitelma näyttää ajot, joilla se tehtiin; yhteenvedon **Make again with the latest run** tekee uuden suunnitelman samalla reitillä, lähtöajalla ja mallilla.

Tuloksessa on kaksi välilehteä.

- **Summary:** ylhäällä passagen tunnusluvut: mitä polaaria käytettiin ja sen yleinen säätö, purjehdittiinko, moottoroitiinko vai sekä että (moottoroinnin aika ja osuus, tai "Motor not started"), tuulta odotettiinko, käytetyt ennustemallit ja ajot, lähtö, ETA, kesto, reitin pituus ja todella purjehdittu matka (pidempi kryssiessä tai jiipatessa). Sitten *Wind along the route* listana: suurin ja pienin TWS, tuulen nopeus, joka ylitettiin tai ei saavutettu 20 % ajasta, keskimääräinen tuulen suunta vaihteluväleineen sekä **suurin puuska** (vain jos malli ennustaa puuskia). Sitten *Boat speed*: keskimääräinen SOG, SOG:n vaihteluväli ja keskimääräinen VMG. Niiden alla ovat osuustaulukko ja kaksi histogrammia.
- **Leg table.** Yksi rivi kunkin osuuden jokaista tuntia kohden (alle tunnin osuudella on yksi rivi), osuuksien välillä paksu viiva ja viimeisenä rivinä **All** koko passagelle. Jokainen rivi näyttää ajan keskiarvon: **Time** (ensimmäinen sarake pysyy paikallaan sivuttain vieritettäessä ja otsikko ylhäällä alas vieritettäessä), **Dur** (kesto), **TWS** (todellisen tuulen nopeus), **TWA** (todellisen tuulen kulma kurssiin), **TWD** (todellisen tuulen suunta), **SOG** (nopeus pohjan suhteen), **VMG** (reittiä pitkin saavutettu nopeus), **DTF** (matka maaliin meripeninkulmina rivin alussa) ja **FC** (ennustemalli: H = HARMONIE, E = ECMWF-IFS, A = ARPEGE, ">" kun se vaihtuu rivin sisällä). TWA kirjoitetaan `60°<`, kun tuuli tulee oikealta, ja `>123°`, kun vasemmalta; edessä oleva `!` tarkoittaa, että vene kryssi tai jiippasi suurimman osan rivistä. `M` korvaa kulman, kun moottori kävi suurimman osan rivistä, ja `W`, kun vene odotti tuulta. Nopeudet ovat TWS:lle kokonaisia solmuja (SOG ja VMG yhdellä desimaalilla) tai m/s yhdellä desimaalilla Asetusten yksikön mukaan. Taulukko on kapeaa puhelinta leveämpi vain, jos kirjasin on suuri; silloin se vierii sivuttain.
- **Histograms.** Ajan osuus kussakin tuulen nopeusluokassa (2 kn tai 1 m/s leveä) ja kussakin kahdeksasta tuulen suunnasta.
- **Graphs:** tuulen nopeus, veneen nopeus (reittiä pitkin saavutettu yhtenäisenä, pohjan suhteen katkoviivalla) ja tuulen suunta, sekä kaistat, jotka näyttävät käytetyn mallin ja veneen kulkutavan (kryssi, jiippi, moottori, odotus). Tuulikaaviossa **puuska** on katkoviiva sen mallin värillä, joka sen ennusti (vain HARMONIE ja ARPEGE). Valitse vaaka-akseli: **Clock**, **Time since departure** tai **Distance along the route**. Kosketa kaaviota asettaaksesi kursorin kaikkiin: purjevene-symboli siirtyy kartalla kyseiseen kohtaan, kartta näyttää sen hetken tuulen ja kaavioiden yläpuolinen rivi kertoo suunnitelman siinä kohdassa (puuskineen, jos sellainen on).

Paneeli jättää kartan näkyviin ja käytettäväksi.

## Jäljet: mitä ennuste kertoi purjehtimaltasi jäljeltä

Tallenna jälki navigointisovelluksellasi (esimerkiksi Navionicsilla) ja tuo GPX-tiedosto kohdasta **Routing > Import track (GPX)…**. Tiedosto voi olla suuri (enintään 100 MB; kaksi vuorokautta yhdellä paikannuksella sekunnissa on noin 50 MB). Sovellus lukee sen virtana ja säilyttää yhden pisteen minuutissa: minuutin keskikohtaa lähimmän paikannuksen, tallentimen sille minuutille kirjoittaman nopeuden ja kuljetun matkan, joten jäljen pituus on tarkka. Jokaisella pisteellä on oltava aika. Yli kymmenen minuutin hiljaisuus katkaisee jäljen, eikä sen yli keksitä mitään.

Jälki haetaan heti tallennetuista ennusteista piste pisteeltä: kutakin ajankohtaa kattavan uusimman tallennetun ajon tuuli, puuska ja lämpötila. Tulos tallennetaan jäljen mukana, joten se säilyy sen jälkeenkin, kun ennusteajot ovat vanhentuneet. **Tuo pian matkan jälkeen**: käytettävissä ovat vain ajot, jotka puhelin vielä säilyttää (historia-asetus, 1–14 päivää), ja sitä vanhemmalla jäljellä lukee "Forecast covers 0 %". Jos uudempi ajo myöhemmin kattaa aukot, jäljen yhteenvedon "Update with the latest forecast runs" täyttää ne ja säilyttää sen, mitä siellä jo oli.

Jälki piirretään pelkkänä viivana ilman pisteitä, kun se on valittu Routing-valikossa. **Napauta viivaa**: pieni kortti näyttää pituuden, keskinopeuden (tallennetun), keskituulen ja sen suunnan sekä keskilämpötilan. **Napauta korttia** avataksesi jäljen kartan alla olevassa paneelissa: yhteenveto (tunnusluvut, tuntikohtainen osuustaulukko, jossa TWS, TWA, TWD, SOG, lämpötila, matka loppuun ja ennustemalli) ja kaaviot (tuuli puuskineen, nopeus pohjan suhteen, tuulen suunta, lämpötila). Kosketa kaaviota, niin vene näytetään kartalla kyseisellä hetkellä, ja kartta näyttää sen hetken tuulen. Tunti, jolta ennustetta ei ole, merkitään "–" ja viivat katkeavat siihen.

Sama kortti ja paneeli avautuvat, kun napautat reitityksen (valitun tallennetun suunnitelman) viivaa. Jälki ja reitityksiä voi valita yhtä aikaa ja vertailla (**Compare ticked plans**), esimerkiksi säähän perustuvaa reititystä todella purjehdittuun jälkeen. Jäljen tuuli ja lämpötila ovat **ennusteita jäljen paikassa ja ajassa**, eivät mittauksia; lämpötila on vain siellä, minne ECMWF-IFS- tai ARPEGE-ajo yltää.

**CSV.** Paneelin (ja vertailun) CSV-painike tallentaa jäljen tai suunnitelman Downloads-kansioon: aika (UTC), sijainti, kuljettu matka, nopeus pohjan suhteen, kurssi, tuulen nopeus, tuulen suunta, puuska, tuulikulma, lämpötila, malli ja ajo, nopeudet valikossa valitulla yksiköllä (sarakkeiden nimissä lukee `_kn` tai `_ms`).

## Tallennus, vertailu, ajopäiväkirja

- **Save** tallentaa suunnitelman puhelimeen lukuineen ja asetuksineen, joilla se tehtiin. Tallennetut suunnitelmat listataan kohdassa **Routing**. Ne voi avata uudelleen senkin jälkeen, kun niiden käyttämät ennusteet ovat vanhentuneet.
- Valitse kaksi–kuusi tallennettua suunnitelmaa: niiden linjat ilmestyvät heti kartalle, kukin omalla värillään. **Compare ticked plans (2–6)** näyttää taulukon niiden luvuista ja niiden kaaviot samalla akselilla samoilla väreillä, kartalla yksi vene kutakin suunnitelmaa kohden. Käytä sitä lähtöaikojen tai mallien vertailuun.
- **Roadbook** tallentaa yhden HTML-tiedoston Downloads-kansioon: tunnusluvut (polaari, reititys, tuuli, veneen nopeus), reittipisteet aikoineen, sama osuustaulukko kuin yhteenvedossa, histogrammit ja kaaviot puuskineen. Se avautuu missä tahansa selaimessa ja sen voi tulostaa.

## Paras lähtöaika

Valitse **Plan a passage…** -ikkunassa **Find the best departure: try departures from the time above on**, valitse kuinka pitkältä ajalta (12–72 tuntia) ja kuinka usein (30–180 minuutin välein), ja paina **Find**. Asetusten **Avoid**-osassa valitse, mitä haluat välttää:

- **Beating in wind above** (kryssi tuulessa, joka ylittää rajan; kryssi tarkoittaa kurssia 60° sisällä tuulesta),
- **Wind above** (tuuli yli rajan),
- **Night** (yö).

Jokainen lähtöaika saa pisteet: matkan tunnit plus kunkin valitun ehdon täyttävät tunnit kertaa sen paino. Kryssi kovassa tuulessa siis lasketaan kahdesti ja maksaa enemmän kuin kova tuuli myötätuulessa. Paras lähtöaika on pienin pistemäärä; jos mitään ei ole valittu, se on lyhin matka.

Tulos on kartan alla oleva paneeli, kuten suunnitelmassakin. Palkit näyttävät kunkin lähtöajan pisteet jaettuna matka-aikaan ja valittuihin ehtoihin (ehtojen väreillä); paras on merkitty. Kosketa palkkia lukeaksesi kyseisen lähtöajan, ja **Open this plan** näyttää ja tallentaa suunnitelman. Paneelista avattu suunnitelma näkyy päällimmäisenä; sen sulkeminen tuo paneelin takaisin.

Jos myös **Find the best route** on valittu, jokaiselle lähtöajalle etsitään paras reitti (nopeampi haku kuin yksittäisen suunnitelman), reittisi sellaisenaan piirrettynä kestävä matka-aika näytetään katkoviivalla ja lause kertoo, mitä paras reitti säästää. Kartalle piirretään lähtöaikojen reitit: koskettamasi paksuimpana, sen kaksi naapuria kummallakin puolella ohuempina. **Open this plan** etsii silloin kyseisen lähtöajan uudelleen kokonaan.

## Parameters

**Parameters**-ikkuna (**Avoid**-kohdan vieressä oleva linkki) sisältää haun yleiset asetukset:

- **Weights** (painot). Aika on vertailukohta: merellä vietetty tunti on yksi tunti. Kolme pystyliukusäädintä (**Beating**, **Strong wind**, **Night**) kertovat, kuinka monta tuntia kyseisen ehdon tunti lisää, 0–3 kymmenesosin; yhdessä ne voivat lisätä enintään 6, joten aika säilyttää aina osuutensa. Palkki näyttää osuudet ja lauseet kertovat, miksi kunkin tunti lasketaan. **Weights to 1** palauttaa ne. Paino lasketaan vain, jos sen ruutu on valittu **Avoid**-kohdassa kyseiselle suunnitelmalle tai lähtöaikahaulle. Yö ei ole sinänsä huono: jätä se valitsematta, jos pidät yöpurjehduksesta.
- **Integration step** (integrointiaskel). Isokronihaku purjehtii haun kunkin vaiheen tämän pituisin askelin (tyhjä on 10 minuuttia, 1–60). Lyhyemmät askeleet seuraavat tuulta tarkemmin ja kestävät kauemmin. Jätä tyhjäksi, ellet kokeile, miten sillä on merkitystä. Ruudukkohaulla ei ole tällaista asetusta: sen ruudukko on hienompi reitin lyhyillä osilla ja karkeampi pitkillä, ja vielä karkeampi lähtöaikahaussa.

## Mitä kannattaa muistaa

Ennuste ei ole varma, ja suunnitelma olettaa veneen purjehtivan polaarin mukaan, ilman virtausta ja aallokkoa, lukuun ottamatta sitä, mitä polaari ja säädöt kuvaavat. Käytä sitä vaihtoehtojen vertailuun ja vaikeiden kohtien näkemiseen, älä ainoana lähteenä.
