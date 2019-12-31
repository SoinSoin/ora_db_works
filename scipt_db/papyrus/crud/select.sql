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