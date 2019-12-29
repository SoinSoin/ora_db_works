ALTER TABLE "PRODUIT"
	ADD CONSTRAINT uni_produit unique (CODART);

ALTER TABLE "FOURNISSEUR"
	ADD CONSTRAINT uni_fournisseur unique (NUMFOU);

ALTER TABLE "VENTE"
	ADD CONSTRAINT uni_vente unique (ID_PRODUIT,ID_FOURNISSEUR);

ALTER TABLE "COMMANDE"
	ADD CONSTRAINT uni_commande unique (NUMCOM);

ALTER TABLE "LIGCOM"
	ADD CONSTRAINT uni_ligcom unique (ID_PRODUIT,ID_COMMANDE);