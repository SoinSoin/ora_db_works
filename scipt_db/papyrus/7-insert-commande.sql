insert into commande(id_fournisseur,numcom, obscom, datecom)
select id_fournisseur, numcom, obscom, datecom 
from f_commande, fournisseur 
where f_commande.numfou=fournisseur.numfou;

drop table f_commande;