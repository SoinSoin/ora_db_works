INSERT INTO vente (id_fournisseur, id_produit, delliv,qte, prix)
select id_fournisseur, id_produit, f_vente.delliv, f_vente.qte,  f_vente.prix 
from f_vente, fournisseur, produit  
where f_vente.numfou=fournisseur.numfou 
AND f_vente.codart=produit.codart;

drop table f_vente;