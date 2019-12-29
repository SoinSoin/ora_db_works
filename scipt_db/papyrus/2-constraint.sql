--
-- Contraintes sur la Table PRODUIT
--
-- Cl� primaire
ALTER TABLE "PRODUIT" 
	ADD CONSTRAINT pk_produit PRIMARY KEY (ID_PRODUIT);
-- Suppression de la contrainte nomm�e pk_produit
-- ALTER TABLE PRODUIT DROP CONSTRAINT pk_produit;

-- Champ STKPHY non NULL
ALTER TABLE "PRODUIT"
	ADD CONSTRAINT chk_produit_stkphy check (STKPHY NOT LIKE NULL);
    
-- Valeur positive sur qteann 
-- ALTER TABLE PRODUIT ADD CONSTRAINT chk_pos CHECK (QTEANN > 0);
-- ALTER TABLE PRODUIT DROP CONSTRAINT chk_pos;



--
-- Contraintes sur la Table FOURNISSEUR
--
-- Cl� primaire
ALTER TABLE "FOURNISSEUR"
	ADD CONSTRAINT pk_fournis primary key (ID_FOURNISSEUR);
  
-- satisf entre 1 et 9
ALTER TABLE "FOURNISSEUR"
	ADD CONSTRAINT chk_fournis_satisf check (satisf between 1 and 10);
   
-- Champ posfou sur 5 chiffres   
ALTER TABLE "FOURNISSEUR"
  ADD CONSTRAINT chk_fournis_posfou check (regexp_like (posfou, '[0-9]{5}'));

-- Champ NOMFOU unique 
ALTER TABLE "FOURNISSEUR"
    ADD CONSTRAINT chk_fournis_nomfou_unique UNIQUE (NOMFOU);



--
-- Contraintes sur la Table COMMANDE
--
-- Cl� primaire
ALTER TABLE "COMMANDE"
	ADD CONSTRAINT pk_commande primary key (ID_COMMANDE);

-- Cl� �trang�re -> r�f�rence cl� primaire de FOURNISSEUR
ALTER TABLE "COMMANDE"	
	ADD CONSTRAINT fk_commande_fournis foreign key (ID_FOURNISSEUR)
	references FOURNISSEUR (ID_FOURNISSEUR);

-- Date syst�me par d�faut
-- ALTER TABLE "COMMANDE" MODIFY (DATECOM DEFAULT SYSDATE);


--
-- Contraintes sur la Table VENTE
--
-- Cl� primaire
ALTER TABLE "VENTE"
	ADD CONSTRAINT pk_vente primary key (ID_VENTE);

-- Cl� �trang�re -> r�f�rence cl� primaire de FOURNISSEUR
ALTER TABLE "VENTE"
	ADD CONSTRAINT fk_vente_fournis foreign key (ID_FOURNISSEUR)
	references FOURNISSEUR (ID_FOURNISSEUR);

-- Cl� �trang�re -> r�f�rence cl� primaire de PRODUIT
ALTER TABLE "VENTE"
	ADD CONSTRAINT fk_vente_produit foreign key (ID_PRODUIT)
	references PRODUIT (ID_PRODUIT);


--
-- Contraintes sur la Table LIGCOM
--

-- Cl� primaire
ALTER TABLE LIGCOM
	ADD CONSTRAINT pk_ligcom primary key (ID_LIGCOM) enable;
-- Suppression de la contrainte
--ALTER TABLE "PAPYRUS"."LIGCOM" DROP CONSTRAINT pk_ligcom;
  
-- Cl� �trang�re -> r�f�rence cl� primaire de PRODUIT
ALTER TABLE LIGCOM	
	ADD CONSTRAINT fk_ligcom_produit foreign key (ID_PRODUIT)
	references "PAPYRUS"."PRODUIT" (ID_PRODUIT);

-- Cl� �trang�re -> r�f�rence cl� primaire de COMMANDE
ALTER TABLE LIGCOM	
	ADD CONSTRAINT fk_ligcom_commande foreign key (ID_COMMANDE)
	references "PAPYRUS"."COMMANDE" (ID_COMMANDE);