------
-- 1°)
------

select fou.numfou, fou.nomfou, com.numcom,  com.datecom
from fournisseur fou, commande com
where fou.numfou=09120
AND fou.id_fournisseur=com.id_fournisseur;


------
-- 2°)
------
select distinct fou.numfou
from fournisseur fou, commande com
where fou.id_fournisseur=com.id_fournisseur;

------
-- 3°)
------

select count(distinct fou.numfou) nbr_fourni, count(distinct com.numcom) nbr_cmd
from fournisseur fou, commande com
where fou.id_fournisseur=com.id_fournisseur;

------
-- 4°)
------

select * 
from produit
where stkphy<=stkale 
and qteann < 1000

------
-- 5°)
------

select POSFOU, numfou
from fournisseur
where posfou  between 75000 and 76000
or posfou between 78000 and 79000
or posfou between 92000 and  93000
or posfou between 77000 and 78000
order by numfou asc; -- |dec

------
-- 6°)
------

-- 1
select numcom, datecom
from commande
where to_char(datecom, 'MM') = 03
or to_char(datecom, 'MM') = 04

-- 2
select numcom, datecom
from commande
where  REGEXP_LIKE (datecom, '(/03/|/04/)');

-- 3
select numcom, datecom
from commande
where to_char(datecom, 'MM') between 03 and 04

------
-- 7°)
------

select *
from commande
where obscom IS NOT NULL

------
-- 8°)
------

select qtecde*priuni as alli
from ligcom
group by qtecde , priuni
order by alli desc

------
-- 9°)
------
select qtecde*priuni as val
from ligcom
where qtecde*priuni > 10000
and qtecde >= 1000
group by qtecde , priuni
order by val desc

------
-- 10°)
------

select numcom, nomfou, datecom
from commande
join fournisseur on commande.id_fournisseur = fournisseur.id_fournisseur
order by nomfou asc;

------
-- 11°)
------
select numcom,nomfou, qtecde*priuni as sous_total
from ligcom
join commande on ligcom.id_commande=commande.id_commande
join fournisseur on commande.id_fournisseur=fournisseur.id_fournisseur
where REGEXP_LIKE (upper(trim(commande.obscom)) , '(URGENT)')
group by qtecde , priuni, numcom, nomfou

------
-- 12°)
------

-- 1
select distinct nomfou
from fournisseur, commande, ligcom
where fournisseur.id_fournisseur=vente.id_fournisseur
and vente.qte>1

-- 2

select distinct nomfou
from fournisseur
join vente on  fournisseur.id_fournisseur=vente.id_fournisseur
and vente.qte>1
-- 3

select nomfou
from fournisseur
minus
select distinct nomfou
from fournisseur
join vente on  fournisseur.id_fournisseur=vente.id_fournisseur
and vente.qte like 0

------
-- 13°)
------

-- 1

select nomfou,numcom, datecom
from commande 
join fournisseur on commande.id_fournisseur=fournisseur.id_fournisseur
where commande.numcom like 70210

-- 2

select numcom, datecom
from commande 
minus
select numcom, datecom
from commande 
join fournisseur on commande.id_fournisseur=fournisseur.id_fournisseur
where commande.numcom not like 70210

------
-- 13°)
------

-- 1
