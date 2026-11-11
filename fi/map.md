# Kartta

![Map overview](../docs/img/map.png)

## Mitä näet

- **Tuulikerros** (wind layer): värit kuvaavat tuulen nopeutta sinisestä (tyyni) vihreän, keltaisen, oranssin ja punaisen kautta violettiin ja mustaan (35 solmua ja enemmän). Tuulinuolet näyttävät suunnan ja nopeuden solmuina. Kerros on läpinäkymätön.
- **Väriskaala** numeroineen.
- **Lämpötilakartta** (temperature map): valitse **Temp** nopeuskaavion kulmassa olevasta kytkimestä, niin värit näyttävät 2 metrin ilmanlämpötilan -20 °C:sta (musta) violetin, sinisen, syaanin, vihreän, keltaisen ja oranssin kautta punaiseen ja vaaleanharmaaseen 40 °C:ssa ja sen yläpuolella. Tuulinuolet säilyvät aina näkyvissä jos tuulidataa on. Latausten ja datan määrän minimoimiseksi lämpötila on vain ARPEGEssa ja ECMWF-IFS:ssä, ei HARMONIEssa: värit tulevat ARPEGElta, missä se kattaa pisteen, ja muuten ECMWF-IFS:ltä, ja tuulinuolet ylimmältä mallilta, joten kun HARMONIE-alue on jommankumman päällä, värit tulevat sieltä ja tuulinuolet HARMONIElta; HARMONIE-alue, jonka alla ei ole mitään, näyttää vain tuulinuolet. Harmaa maa -asetus säilyy ennallaan, joten kun harmaa maa on päällä, lämpötila näkyy vain merialueella. Valitse **Speed** palataksesi tuulikerrokseen. Lämpötila on purjehduksen kannalta lähinnä mukavuustekijä, jonka arvioiminen voidaan tehdä karkeammalla resoluutiolla ja toisaalta laajemmalla alueella koska se voi vaikuttaa reittisuunnitelmiin pidemmällä aikavälillä. 

![Temperature map with wind barbs](../docs/img/map-temperature.png)

- **Rantaviiva**: harmaa maa ja musta rantaviiva, piirretty mukana tulevasta vektorikartasta, joten karttalaattoja ei tarvita ja kartta toimii ilman verkkoyhteyttä.
- **Paikannimet**: suurempien kaupunkien pienet nimet; lisää tulee näkyviin, kun lähennät.
- **Asemapisteet**: oranssit pisteet ovat havaintoasemia (katso luku **Havaintoasemat**); pieniä loitonnettaessa, suurempia lähennettäessä.
- **Aluerajat**: alueidesi reunat numeromerkillä. Yhtenäinen viiva tarkoittaa aktiivista, katkoviiva tauolla tai pysäytettyä aluetta. Sininen on HARMONIE, vihreä ARPEGE, violetti ECMWF-IFS.

Zoomaustaso vaihtelee välillä 5–15. Siirrä karttaa vetämällä, zoomaa nipistämällä.

## Kuvateksti

Kartan alareunan kuvateksti on esimerkiksi `ECMWF-IFS · Sat 7 20:00 UTC+02 · run 4 Nov 02:00 · tap for now`: malli, näytettävä ennusteaika ja ajo, josta ennuste on peräisin. Lämpötilakartassa siinä lukee lisäksi "2 m temperature" ja, kun tuulinuolet tulevat toiselta malliltä, "wind barbs FMI-HARMONIE". Napautetulle pisteelle se nimeää pisteen kattavan mallin ja lisää "also ECMWF-IFS", kun toinenkin malli yltää siihen. Kun piste on valittuna, napauta kuvatekstiä (**tap for now**) siirtääksesi kaavion kohdistimen todelliseen kellonaikaan; kartta näyttää lähimmän ennustetunnin.

## Vanha data haalenee

Alue, jonka uusin ajo on yli 24 tuntia vanha, haalenee harmaaksi ja on täysin harmaa 48 tunnin kohdalla. Harmaa tarkoittaa vanhentunutta dataa, yleensä siksi, että lataukset ovat tauolla tai epäonnistuvat.

## Kaksi mallia yhdessä

Tarkin malli piirretään päällimmäiseksi: ECMWF-IFS ARPEGEn alle ja ARPEGE HARMONIEn alle, joten näet tarkan mallin siellä missä se on ja karkeammat sen ympärillä. Nähdäksesi peittyneen kerroksen piilota sen päällä olevat napauttamalla niiden nimiä kaavioiden selitteessä (luku **Kaaviot**).

## Reititysnappi

Valikkopainikkeen alla oleva painike (siksak-reitti, jonka kummassakin päässä on piste) avaa saman ikkunan kuin valikon **Routing…**: reittisi, tallennetut suunnitelmat ja "Plan a passage" ([Reititys](routing.md)).

## Paikannuspainike

Reititysnapin alla oleva painike hakee sijaintisi (yksi paikannus; GPS, jos sallit tarkan sijainnin), valitsee pisteen kuin olisit napauttanut sitä ja keskittää kartan siihen. Sijaintia ei tallenneta eikä lähetetä minnekään.

## Jakaja

Kartan ja kaavioiden välissä on vedettävä kahva. Pystysuunnassa: kartta ylhäällä, kaaviot alhaalla. Vaakasuunnassa: kartta vasemmalla, kaaviot oikealla. Kumpikin suunta muistaa oman jakonsa. Tabletilla ja missä tahansa vähintään 840 dp:n levyisessä ikkunassa (myös avattu taittuva puhelin tai jaettu näyttö) kartta ja kaaviot ovat vierekkäin kuten vaakasuunnassa.
