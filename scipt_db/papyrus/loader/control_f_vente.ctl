load data
 infile '../data/VENTE.csv'
 into table F_VENTE
 fields terminated by ";" optionally enclosed by '"'          
 (CODART,NUMFOU,DELLIV,QTE,PRIX)