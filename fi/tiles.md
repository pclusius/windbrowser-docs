# Alueet

Lataamaasi aluetta kutsutaan sovelluksessa nimellä **tile**, numeroituina. Kaikkea hallitaan hampurilaisvalikosta.

![Tile list](../docs/img/tiles.png){ width=320 }

## Aluelista

Jokaisella rivillä näkyvät alueen numero (sininen merkki HARMONIE, vihreä ARPEGE, violetti ECMWF-IFS), malli, tila, koko, ajojen määrä ja uusin ajo, esimerkiksi `HARMONIE · active · 4.9 MB · 9 runs · 4 Nov 08:00`. Napauta riviä zoomataksesi kartan kyseiselle alueelle.

| Painike | Toiminto |
|---|---|
| **i** | Näyttää tallennetut ajot (mallin ajoaika ja tiedostokoko) |
| **pause / play** | Pause pysäyttää lataukset mutta säilyttää datan; play jatkaa |
| **stop** | Pysäyttää lataukset; alue poistetaan, kun sen data on vanhentunut |
| **delete** | Poistaa alueen ja sen datan. Kysyy aina vahvistuksen |

Tilat: **Active** (aktiivinen) lataa; **Paused** (tauolla) säilyttää datan mutta ei lataa; **Stopped** (pysäytetty) poistetaan, kun sen data on vanhentunut.

## Päällekkäisyys

Vain saman mallin aktiiviset alueet lasketaan.

- Alue, jonka olemassa olevat alueet kattavat kokonaan, hylätään.
- Jos yksi alue kattaa 70 % tai enemmän, sovellus tarjoaa **alueen laajentamista** kattamaan molemmat tai alueen lisäämistä joka tapauksessa.
- Pienempi päällekkäisyys hyväksytään ilmoituksella siitä, että päällekkäinen osa ladataan kahteen kertaan.

## Tallennusrajat

- **Data limit** (dataraja): 1–5 GB (oletus 2). Kun raja ylittyy, vanhimmat ajot poistetaan ensin, ei-aktiivisten alueiden ajot ennen aktiivisten; aktiivisen alueen uusinta ajoa ei koskaan poisteta. Valintaikkuna kertoo kerran, mitä poistettiin ja mitä voit tehdä: lyhyempi historia, pienemmät alueet tai vähemmän alueita, ECMWF-IFS tai korkeampi raja.
- **History** (historia): 1–14 päivää.

**Clear all tiles** (tyhjennä kaikki alueet) kysyy aina vahvistuksen.
