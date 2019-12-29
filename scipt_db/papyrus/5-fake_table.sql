CREATE TABLE "F_COMMANDE" (	
    "NUMCOM" NUMBER(10) NOT NULL ENABLE,
	"NUMFOU" NUMBER(10) NOT NULL ENABLE,
	"OBSCOM" VARCHAR2(25 CHAR),
    "DATECOM" DATE DEFAULT SYSDATE
);

CREATE TABLE "F_VENTE" (	
    "CODART" VARCHAR2(10) NOT NULL ENABLE,
	"NUMFOU" NUMBER(10) NOT NULL ENABLE,
	"DELLIV" NUMBER(6,0) NOT NULL ENABLE, 
	"QTE" NUMBER(6,0), 
	"PRIX" NUMBER(6,2) NOT NULL ENABLE
);

CREATE TABLE "F_LIGCOM"(	
	"NUMCOM" NUMBER(10) NOT NULL ENABLE,
    "CODART" VARCHAR2(10) NOT NULL ENABLE, 
	"NUMLIG" SMALLINT NOT NULL ENABLE,
	"QTECDE" SMALLINT NOT NULL ENABLE, 
	"PRIUNI" SMALLINT NOT NULL ENABLE,
	"QTELIV" NUMBER(10,0),
    "DERLIV" DATE NOT NULL ENABLE
);