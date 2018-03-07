CREATE TABLE SPELERS(
	spelersnr		NUMBER(5) 					CONSTRAINT spelers_spelersnr_pk PRIMARY KEY,
	naam			VARCHAR2(20)				CONSTRAINT spelers_naam_nn		NOT NULL, /*moet in hoofdletters*/
	voorletter		VARCHAR2(3),
	geslacht		VARCHAR2(1)		DEFAULT 'M' CONSTRAINT spelers_geslacht_nn	NOT NULL,
	gebdatum		DATE						CONSTRAINT spelers_gebdatum_nn	NOT NULL,
	ploegnr			NUMBER(3)
);

CREATE TABLE TEAMS(
	teamnr			NUMBER(3)					CONSTRAINT teams_teamnr_pk PRIMARY KEY,
	teamnaam		VARCHAR2(20)				CONSTRAINT teams_teamnaam_upper CHECK (UPPER(teamnaam) = teamnaam),/*moet in hoofdlettersUPPER(VARCHAR2(20)) ???*/
	kapitein		NUMBER(5)					CONSTRAINT teams_kapitein_nn NOT NULL 	
);

CREATE TABLE BOETES(
	boetenr			NUMBER(3)					CONSTRAINT boetes_boetenr_pk PRIMARY KEY,
	spelersnr		NUMBER(5)					CONSTRAINT boetes_spelersnr_fk REFERENCES SPELERS(spelersnr),
	datum			DATE						CONSTRAINT boetes_datum_nn NOT NULL,
	bedrag			NUMBER(5,2)					CONSTRAINT boetes_bedrag_nn	NOT NULL	CHECK (bedrag >= 100)
);


ALTER TABLE SPELERS ADD CONSTRAINT spelers_ploegnr_fk FOREIGN KEY (ploegnr) REFERENCES TEAMS(teamnr);
ALTER TABLE TEAMS ADD CONSTRAINT teams_kapitein_fk FOREIGN KEY(kapitein) REFERENCES SPELERS(spelersnr);