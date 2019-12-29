load data
 infile '../data/LIGCOM.csv'
 into table F_LIGCOM
 fields terminated by ";" optionally enclosed by '"'          
 (NUMCOM,CODART,NUMLIG,QTECDE,PRIUNI,QTELIV,DERLIV)