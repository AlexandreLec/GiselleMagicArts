﻿DELIMITER $
CREATE PROCEDURE envoi_commande(in NumeroCommande int)
BEGIN

SELECT DISTINCT Commande.IDCommande, Commande.Statut, contient.IDproduit, contient.QuantiteCommande, 
Stock.IDstock, Stock.NbStock
FROM Commande, contient,  Stock,  Produit
WHERE Commande.IDCommande = contient.IDCommande AND contient.IDproduit = Produit.IDproduit 
AND Commande.IDCommande = NumeroCommande AND Stock.IDproduit = contient.IDproduit
AND Commande.Statut = 'preparation';



UPDATE Stock, contient, Commande
SET Stock.NbStock = Stock.NbStock-contient.QuantiteCommande
WHERE contient.IDproduit = Stock.IDproduit AND contient.IDCommande = NumeroCommande
AND Commande.Statut = 'preparation';



SELECT DISTINCT Commande.IDCommande, Commande.Statut, contient.IDproduit, contient.QuantiteCommande, 
Stock.IDstock, Stock.NbStock
FROM Commande, contient,  Stock,  Produit
WHERE Commande.IDCommande = contient.IDCommande AND contient.IDproduit = Produit.IDproduit 
AND Commande.IDCommande = NumeroCommande AND Stock.IDproduit = contient.IDproduit;



UPDATE Commande
SET Statut = 'livraison'
WHERE Commande.Statut = 'preparation' AND Commande.IDCommande = NumeroCommande;

END$
DELIMITER ;