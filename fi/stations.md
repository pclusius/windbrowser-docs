# Havaintoasemat

![Station](../docs/img/stations.png)

Kartan pienet oranssit pisteet ovat merellisiä havaintoasemia. Napauta pistettä nähdäksesi sen **mitatun tuulen** (ja, jos asemalla on lämpömittari, **ilmanlämpötilan** Temp-kaaviossa) piirrettynä kaavioihin ennusteiden rinnalle, jolloin näet, kuinka hyvin viimeaikaiset ajot osuivat todellisuuteen.

## Lähteet

| Lähde | Data |
|---|---|
| FMI | 10 minuutin havainnot |
| Marine Helsinki | Kruunuvuorenselkä |
| SMHI (Ruotsi) | tunneittain |
| DMI (Tanska) | 10 minuutin; puuska on suurin 3 sekunnin keskiarvo |
| TalTech | Tallinnamadal, vain viimeisimmät arvot |
| Viron ympäristövirasto | vain nykyinen tuuli, tekstimerkintänä |

Viron asemat ja Tallinnamadal näyttävät vain hetkellisen tuulen tekstinä kartalla, eivät kaaviota, koska nämä lähteet eivät tarjoa historiaa. Jos lähteellä ei ole puuskaa tai suuntaa, kyseiset viivat jätetään pois. Katko viivassa tarkoittaa, että asema oli hiljaa.

Asemapisteet ovat 2 dp laajassa näkymässä ja kasvavat 12 dp:hen zoomaustasosta 10 alkaen.
