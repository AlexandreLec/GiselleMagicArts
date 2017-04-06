-----------------------------------------------
-- Procedure : recette_proposition
----------------------------------------------- 

-----------------------------------------------
-- Definition
----------------------------------------------- 

DELIMITER |
CREATE PROCEDURE recette_proposition(id_propo INT)

BEGIN
	SELECT Proposition.IDProposition, Proposition.Nom, prod2.NomProduit as Ingrédient, se_compose_propo.qteIngredient AS Quantité, se_compose_propo.temps, Proposition.temperature, Diluant.NomDiluant
    FROM (se_compose_propo INNER JOIN Proposition ON se_compose_propo.IDProposition = Proposition.IDProposition
	INNER JOIN Produit as prod2 ON se_compose_propo.IDproduit = prod2.IDproduit
	LEFT JOIN Diluant ON Diluant.IDDiluant = Proposition.Diluant)
	WHERE id_propo = se_compose_propo.IDProposition;
END|
DELIMITER ;