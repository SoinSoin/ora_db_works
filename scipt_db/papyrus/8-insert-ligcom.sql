insert into ligcom (id_produit, id_commande,numlig, qtecde, priuni, qteliv, derliv)
select id_produit, id_commande,numlig, qtecde, priuni, qteliv, derliv 
from f_ligcom, commande, produit  
where f_ligcom.numcom=commande.numcom 
AND f_ligcom.codart=produit.codart;

drop table f_ligcom;