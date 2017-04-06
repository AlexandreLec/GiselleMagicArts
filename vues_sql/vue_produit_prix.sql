-----------------------------------------------
-- Vue : Produit_prix
----------------------------------------------- 

-----------------------------------------------
-- Definition
----------------------------------------------- 

CREATE VIEW Produit_prix
(Produit, Prix)
AS SELECT NomProduit, Prix
FROM Produit;
