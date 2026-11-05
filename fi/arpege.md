# ARPEGE ja Météo-Francen avain

**ARPEGE** on Météo-Francen globaali ennustemalli. WindBrowser käyttää sen 0,1 asteen (noin 11 km) versiota Euroopan ja Itämeren yllä: tuuli, **puuskat** ja **2 m ilmanlämpötila**. Malli ajetaan neljästi vuorokaudessa (klo 00, 06, 12 ja 18 UTC) ja ennustaa jopa 102 tuntia eteenpäin.

Toisin kuin FMI:n mallien, Météo-Francen datan saa vain **oman ilmaisen avaimen** haltija. Avain säilytetään vain puhelimessasi ja se lähetetään vain Météo-Francelle. Ilman avainta ARPEGEa ei voi valita aluetta lisättäessä, ja jo olemassa oleva ARPEGE-alue ilmoittaa tarvitsevansa avaimen.

## Avaimen hankkiminen

1. Luo ilmainen tili osoitteessa **portail-api.meteofrance.fr**.
2. Tilaa rajapinta nimeltä **API Modèle ARPEGE**.
3. Rajapinnan sivulla kohdassa *Configure API* valitse avaintyypiksi **API Key**, aseta kuinka kauan avain on voimassa (365 päivää käy) ja paina **Generate Token**.
4. **Kopioi koko avain.** Se on yksi hyvin pitkä tekstirivi, noin 1 500 merkkiä, ilman välilyöntejä. Napauta avainkenttää, valitse kaikki (*select all*) ja kopioi; kaksoisnapautus valitsee vain osan.

!!! note
    Uuden avaimen luominen portaalissa voi lakkauttaa vanhan avaimen toiminnan. Jos lataukset pysähtyvät ilmoitukseen "The Météo-France API key was rejected", avain on vanhentunut tai korvattu: luo uusi ja syötä se uudelleen.

## Avaimen syöttäminen sovellukseen

Valikko → **ARPEGE key: not set…**, liitä avain ja paina **Save**. Ikkuna näyttää, montako merkkiä se sai, ja hylkää selvästi liian lyhyen avaimen, mikä yleensä tarkoittaa, että avain katkesi kopioitaessa. Tallennuksen jälkeen valikossa lukee **ARPEGE key: set…**; avaa se uudelleen vaihtaaksesi avaimen tai paina **Remove** poistaaksesi sen. Jos ARPEGE-alue odottaa avainta, päivitys alkaa heti.

## ARPEGE-alueen lisääminen

Valitse **ARPEGE** (vihreä), kun lisäät alueen (luku **Ensimmäinen käynnistys**). Alue voi olla enintään 400 neliöastetta, ja data on pientä: noin 35 kB neliöastetta ja ajoa kohden kolmen päivän ennusteella. ARPEGE kattaa alueen 20°N–72°N ja 32°W–42°E.

## Kuinka pitkälle eteenpäin

Valikko → **ARPEGE forecast: 3 days…** määrää, kuinka pitkälle eteenpäin ARPEGEa ladataan: 1–4 päivää, oletus 3. Météo-France lähettää yhden pienen tiedoston jokaista muuttujaa ja tuntia kohden, joten pidempi ennuste tarkoittaa enemmän pyyntöjä (3 päivää on noin 290) ja pidempää päivitystä. Portaali sallii 100 pyyntöä minuutissa ja sovellus jakaa pyynnöt tasaisesti, joten ajon ensimmäinen lataus kestää noin **kolme minuuttia**. Muutos tulee voimaan seuraavasta ajosta; jo tallennettu säilyy.

## Mitä odottaa

ARPEGE piirretään kaavioissa vihreällä viivalla, jossa on vuorotellen pitkiä ja lyhyitä katkoja, ja sen aluerajat ja karttakerros ovat vihreitä. Se on karkeampi kuin HARMONIE ja tarkempi kuin ECMWF-IFS, joten kartalla se on niiden välissä. Puuska ja lämpötila toimivat ARPEGElle kuten muillekin malleille (luku **Kaaviot**).
