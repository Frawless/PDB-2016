-- Polygon - okruh (toto jsou jen dva čtverece)
INSERT INTO mapa (id, geometrie,barva) 
VALUES (mapa_seq.nextval, 
  SDO_GEOMETRY(2003, null, null,
    SDO_ELEM_INFO_ARRAY(1,1003,3),
    SDO_ORDINATE_ARRAY(100,5, 140,90)),
    '#000000'); 
INSERT INTO mapa (id, geometrie,barva) 
VALUES (mapa_seq.nextval, 
  SDO_GEOMETRY(2003, null, null,
    SDO_ELEM_INFO_ARRAY(1,1003,3),
    SDO_ORDINATE_ARRAY(95,90, 145,115)),
    '#000000');      
COMMIT;

-- Lomená čára - linka
INSERT INTO mapa (id, geometrie,barva) 
VALUES (mapa_seq.nextval, 
  SDO_GEOMETRY(2002, null, null,
    SDO_ELEM_INFO_ARRAY(1,2,1),
    SDO_ORDINATE_ARRAY(125,10, 135,20, 110,80, 125,100)),
    '#000000');
    
--BOD - stanice
INSERT INTO mapa (id, geometrie,barva) 
VALUES (mapa_seq.nextval, 
  SDO_GEOMETRY(2001, null, null,
    SDO_ELEM_INFO_ARRAY(1,1,1),
    SDO_ORDINATE_ARRAY(125,10)),
    '#000000');
INSERT INTO mapa (id, geometrie,barva) 
VALUES (mapa_seq.nextval, 
  SDO_GEOMETRY(2001, null, null,
    SDO_ELEM_INFO_ARRAY(1,1,1),
    SDO_ORDINATE_ARRAY(135,20)),
    '#000000');
INSERT INTO mapa (id, geometrie,barva) 
VALUES (mapa_seq.nextval, 
  SDO_GEOMETRY(2001, null, null,
    SDO_ELEM_INFO_ARRAY(1,1,1),
    SDO_ORDINATE_ARRAY(110,80)),
    '#000000');
INSERT INTO mapa (id, geometrie,barva) 
VALUES (mapa_seq.nextval, 
  SDO_GEOMETRY(2001, null, null,
    SDO_ELEM_INFO_ARRAY(1,1,1),
    SDO_ORDINATE_ARRAY(125,100)),
    '#000000');    
COMMIT;
    
-- Linky, stanice, obvody
INSERT INTO obvod (id,nazev,id_objektu) VALUES (OBVOD_SEQ.nextval,'obvod-A',1);
INSERT INTO obvod (id,nazev,id_objektu) VALUES (OBVOD_SEQ.nextval,'obvod-B',2);
INSERT INTO linka (id,nazev,id_objektu) VALUES (LINKA_SEQ.nextval,'linka-A',3);
INSERT INTO stanice (id,nazev,linka,id_objektu) VALUES (STANICE_SEQ.nextval,'stanice-A',1,4);
INSERT INTO stanice (id,nazev,linka,id_objektu) VALUES (STANICE_SEQ.nextval,'stanice-B',1,5);
INSERT INTO stanice (id,nazev,linka,id_objektu) VALUES (STANICE_SEQ.nextval,'stanice-C',1,6);
INSERT INTO stanice (id,nazev,linka,id_objektu) VALUES (STANICE_SEQ.nextval,'stanice-D',1,7);

Insert INTO INCIDENT (ID,STANICE,UDALOST,ZPOZDENI,POPIS,DATUM,PRICINA,ZRANENI,POHLAVI,VEK) values ('2','1','Pád osoby do kolejiště','10','Starší muž spadl do kolejiště poté, co mu tam spadl mobilní telefon.',to_date('10.11.16','DD.MM.RR'),'upadnutí předmětu do kolejiště','lehké','muž','70');
Insert INTO INCIDENT (ID,STANICE,UDALOST,ZPOZDENI,POPIS,DATUM,PRICINA,ZRANENI,POHLAVI,VEK) values ('1','2','Uvíznutí osoby','150','Opilec známý pod jménem Pepa se zasekl mezi dveřmi.',to_date('06.12.16','DD.MM.RR'),'neopatrnost','bez zranění','muž','55');
Insert INTO INCIDENT (ID,STANICE,UDALOST,ZPOZDENI,POPIS,DATUM,PRICINA,ZRANENI,POHLAVI,VEK) values ('3','3','Zaběhnuté zvíře','25','Ženě se zaběhl pes přímo do tunelu. Způsobeno zpoždění z důvodu hledání psa.',to_date('25.07.16','DD.MM.RR'),'neopatrnost','bez zranění','žena','32');
Insert INTO INCIDENT (ID,STANICE,UDALOST,ZPOZDENI,POPIS,DATUM,PRICINA,ZRANENI,POHLAVI,VEK) values ('4','4','Pád osoby do kolejiště','150','Mladá dívka skočila do kolejiště před brzdící vagón.',to_date('19.09.16','DD.MM.RR'),'pokus o sebevraždu','lehké','žena','25');
Insert INTO INCIDENT (ID,STANICE,UDALOST,ZPOZDENI,POPIS,DATUM,PRICINA,ZRANENI,POHLAVI,VEK) values ('5','1','Srážka s osobou','15','Opilý muž spadl přímo na koleje a plazil se do tunelu.',to_date('01.11.16','DD.MM.RR'),'neopatrnost','lehké','muž','35');
Insert INTO INCIDENT (ID,STANICE,UDALOST,ZPOZDENI,POPIS,DATUM,PRICINA,ZRANENI,POHLAVI,VEK) values ('6','2','Pád osoby do kolejiště','10','Chlapci upadl do kolejiště předmět batoh, následně byl vytažen jedním z kolemjdoucích. ',to_date('07.12.16','DD.MM.RR'),'upadnutí předmětu do kolejiště','bez zranění','muž','12');
Insert INTO INCIDENT (ID,STANICE,UDALOST,ZPOZDENI,POPIS,DATUM,PRICINA,ZRANENI,POHLAVI,VEK) values ('10','1','Uvíznutí osoby','10','Muž uvízl mezi vlakovou soupravou a nástupištěm.',to_date('01.12.16','DD.MM.RR'),'pokus o sebevraždu','bez zranění','muž','28');
Insert INTO INCIDENT (ID,STANICE,UDALOST,ZPOZDENI,POPIS,DATUM,PRICINA,ZRANENI,POHLAVI,VEK) values ('7','3','Zachycení osoby soupravou','90','Starší dámě spadla kabelka do kolejiště, následně byla zachycena soupravou.',to_date('27.11.16','DD.MM.RR'),'upadnutí předmětu do kolejiště','smrt','muž','40');
Insert INTO INCIDENT (ID,STANICE,UDALOST,ZPOZDENI,POPIS,DATUM,PRICINA,ZRANENI,POHLAVI,VEK) values ('8','4','Zaběhnuté zvíře','5','Mladík pustil svého psa do kolejiště.',to_date('11.12.16','DD.MM.RR'),'neopatrnost','bez zranění','muž','25');
Insert INTO INCIDENT (ID,STANICE,UDALOST,ZPOZDENI,POPIS,DATUM,PRICINA,ZRANENI,POHLAVI,VEK) values ('9','1','Srážka s osobou','190','Žena se pokusila o sebevraždu skokem před projíždějící vlak.',to_date('12.12.16','DD.MM.RR'),'pokus o sebevraždu','smrt','žena','48');
Insert INTO INCIDENT (ID,STANICE,UDALOST,ZPOZDENI,POPIS,DATUM,PRICINA,ZRANENI,POHLAVI,VEK) values ('11','2','Uvíznutí osoby','15','Starší podnapilý muž uvázl mezi soupravou a nástupištěm',to_date('24.08.16','DD.MM.RR'),'neopatrnost','bez zranění','muž','65');


COMMIT;
