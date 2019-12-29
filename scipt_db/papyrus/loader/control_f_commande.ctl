load data
 infile '../data/COMMANDE.csv'
 into table F_COMMANDE
 fields terminated by ";" optionally enclosed by '"'          
 (NUMCOM,NUMFOU,OBSCOM,DATECOM)