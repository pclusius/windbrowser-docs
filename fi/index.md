# WindBrowser

<!-- version -->
*Tämä ohje kuvaa WindBrowser-version 1.0.190-beta. Suomennos päivitetään vain suurempien muutosten yhteydessä; englanninkielinen ohje on aina ajantasaisin, lisäksi automaattisen käännöksen takia tässä ohjeessa saattaa olla kielivirheitä.*
<!-- /version -->

WindBrowser on Android-sovellus, joka lataa Ilmatieteen laitoksen (FMI) ja, oman ilmaisen avaimesi avulla, Météo-Francen tuuliennusteet valitsemillesi kartta-alueille ja **säilyttää jokaisen ennusteajon** puhelimessa. Sen avulla voi arvioida, kuinka pitkälle ennusteeseen voi luottaa, esimerkiksi ennen purjehduskilpailua tai risteilyetappia Itämerellä.

## Miksi jokainen ajo säilytetään?

FMI tarjoaa kustakin mallista vain viimeisimmän ajon. Kun uusi ajo korvaa vanhan, ennusteen muutosta ei enää näe. WindBrowser tallentaa jokaisen lataamansa ajon, joten voit vertailla peräkkäisiä ennusteajoja samalle paikalle ja ajankohdalle. Jos ajot ovat samoilla linjoilla, ennuste on todennäköisemmin luotettava; jos ne poikkeavat paljon toisistaan, liittyy säätilaan suurempia epävarmuuksia.

Historiaa kertyy vasta siitä hetkestä, kun sovellus aloittaa lataamisen, joten lisää alueesi muutama päivä ennen kuin tarvitset sitä.

## Mallit

| Malli | Erottelukyky | Alueen kokoraja | Dataa neliöastetta ja ajoa kohden |
|---|---|---|---|
| **HARMONIE** | tarkka (noin 2,5 km) | 16 neliöastetta | noin 385 kB |
| **ARPEGE** (Météo-France) | keskitarkka (0,1 astetta, noin 11 km) | 400 neliöastetta | noin 35 kB |
| **ECMWF-IFS** | karkea (0,25 astetta) | 1600 neliöastetta | noin 2 kB |

HARMONIE kattaa Pohjois-Euroopan. ARPEGE kattaa Euroopan ja Itämeren ja vaatii oman Météo-Francen avaimesi (luku **ARPEGE ja Météo-Francen avain**). ECMWF-IFS toimii kaikkialla maailmassa. Malleja voi yhdistää: ECMWF-IFS HARMONIEn alla antaa laajan yleiskuvan ja tarkkuutta siellä, missä sitä tarvitset, ja kolmas malli näyttää, kuinka pitkälle mallit ovat samaa mieltä.

## Näin luet tätä ohjetta

Luvut etenevät siinä järjestyksessä, jossa käytät sovellusta:

1. **Ensimmäinen käynnistys**: valitse ensimmäinen alue.
2. **Kartta**: tuulikerros ja säätimet.
3. **Kaaviot**: napauta pistettä ja vertaile ajoja.
4. **Alueet**: lataamiesi alueiden hallinta.
5. **ARPEGE ja Météo-Francen avain**: Météo-Francen malli ja sen avain.
6. **Havaintoasemat**: mitattu tuuli.
7. **Reititys**: suunnittele passage omalle reitillesi, tai anna sovelluksen etsiä paras reitti ja lähtöaika.
8. **Asetukset**
9. **Päivitykset ja vianetsintä**
10. **Tietoja ja kiitokset**

WindBrowser vaatii Android 10:n tai uudemman ja toimii puhelimissa ja tableteissa.

!!! note
    Sovellus on tarkoitettu käytettäväksi merellä. Havaintoasemat ovat valikoitu joukko merellisiä asemia.

!!! note
    Sovellus ja sen kuvakaappaukset ovat vain englanniksi. Tässä ohjeessa sovelluksen omat tekstit (valikot, painikkeet, ilmoitukset) on jätetty englanniksi ja lihavoitu, jotta ne löytää näytöltä.
