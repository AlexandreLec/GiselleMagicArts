DELIMITER |
CREATE PROCEDURE recette_potion(id_potion INT)

BEGIN
	SELECT prod1.IDproduit, prod1.NomProduit, prod2.NomProduit as Ingrédient, se_compose_prepa.qteIngredient AS Quantité, se_compose_prepa.temps, Preparation.temperature, Diluant.NomDiluant
    FROM (Preparation INNER JOIN Produit as prod1 ON Preparation.IDproduit = prod1.IDproduit 
	INNER JOIN se_compose_prepa ON se_compose_prepa.IDproduitFinal = Preparation.IDproduit
	INNER JOIN Produit as prod2 ON se_compose_prepa.IDproduit = prod2.IDproduit
	LEFT JOIN Diluant ON Preparation.IDDiluant = Diluant.IDDiluant)
	WHERE id_potion = prod1.IDproduit;
END|
DELIMITER ;