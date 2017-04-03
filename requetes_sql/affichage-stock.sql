ELIMITER | -- On change le délimiteur
CREATE PROCEDURE affichage_stocks(in NomIngredient_add char(30), in nbr_add int)    
    
BEGIN
    	
    select distinct 'avant',NomProduit, NbStock
    from Stock,Ingredient,Produit
    where Stock.IDproduit = Produit.IDproduit and Produit.NomProduit=NomIngredient_add;


    update Stock 
    join Produit on Stock.Idproduit=Produit.IDproduit and NomProduit=NomIngredient_add 
    set NbStock=NbStock+nbr_add;

	

    select distinct 'aprés',NomProduit, NbStock
    from Stock,Ingredient,Produit
    where Stock.IDproduit = Ingredient.IDproduit and Ingredient.IDproduit = Produit.IDproduit and Produit.NomProduit=NomIngredient_add;
  
END|   
Delimiter ;
