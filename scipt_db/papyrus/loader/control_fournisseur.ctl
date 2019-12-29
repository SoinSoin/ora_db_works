load data
 infile '../data/FOURNISSEUR.csv'
 into table FOURNISSEUR
 fields terminated by ";" optionally enclosed by '"'          
 (NUMFOU,NOMFOU,RUEFOU,POSFOU,VILFOU,CONFOU,SATISF)