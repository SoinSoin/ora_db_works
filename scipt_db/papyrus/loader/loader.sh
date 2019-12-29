#!/bin/bash

sqlldr PAPYRUS/papyrus@//127.0.0.1:1521/orclcdb control=control_produit.ctl;

sqlldr PAPYRUS/papyrus@//127.0.0.1:1521/orclcdb control=control_fournisseur.ctl;

sqlldr PAPYRUS/papyrus@//127.0.0.1:1521/orclcdb control=control_f_commande.ctl;

sqlldr PAPYRUS/papyrus@//127.0.0.1:1521/orclcdb control=control_f_vente.ctl;

sqlldr PAPYRUS/papyrus@//127.0.0.1:1521/orclcdb control=control_f_ligcom.ctl;