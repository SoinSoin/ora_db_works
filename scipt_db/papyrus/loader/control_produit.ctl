load data
 infile '../data/PRODUIT.csv'
 into table PRODUIT
 fields terminated by ";" optionally enclosed by '"'          
 (CODART,LIBART,STKALE,STKPHY,QTEANN,UNIMES)
