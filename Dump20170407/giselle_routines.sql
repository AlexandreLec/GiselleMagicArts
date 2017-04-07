-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 109.30.147.219    Database: giselle
-- ------------------------------------------------------
-- Server version	5.5.54-0+deb8u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `ListePotion`
--

DROP TABLE IF EXISTS `ListePotion`;
/*!50001 DROP VIEW IF EXISTS `ListePotion`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `ListePotion` AS SELECT 
 1 AS `ID`,
 1 AS `Potion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ListeOnguent`
--

DROP TABLE IF EXISTS `ListeOnguent`;
/*!50001 DROP VIEW IF EXISTS `ListeOnguent`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `ListeOnguent` AS SELECT 
 1 AS `ID`,
 1 AS `Onguent`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Moyenne_ingredient_potion`
--

DROP TABLE IF EXISTS `Moyenne_ingredient_potion`;
/*!50001 DROP VIEW IF EXISTS `Moyenne_ingredient_potion`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `Moyenne_ingredient_potion` AS SELECT 
 1 AS `Valeur`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Somme_ingredient_potion`
--

DROP TABLE IF EXISTS `Somme_ingredient_potion`;
/*!50001 DROP VIEW IF EXISTS `Somme_ingredient_potion`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `Somme_ingredient_potion` AS SELECT 
 1 AS `Produit`,
 1 AS `Valeur`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vue_stockage`
--

DROP TABLE IF EXISTS `vue_stockage`;
/*!50001 DROP VIEW IF EXISTS `vue_stockage`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vue_stockage` AS SELECT 
 1 AS `Ingredient`,
 1 AS `QteTotal`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Fournisseur_produit`
--

DROP TABLE IF EXISTS `Fournisseur_produit`;
/*!50001 DROP VIEW IF EXISTS `Fournisseur_produit`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `Fournisseur_produit` AS SELECT 
 1 AS `Fournisseur`,
 1 AS `Produits`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Produit_prix`
--

DROP TABLE IF EXISTS `Produit_prix`;
/*!50001 DROP VIEW IF EXISTS `Produit_prix`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `Produit_prix` AS SELECT 
 1 AS `Produit`,
 1 AS `Prix`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Proposition_personne`
--

DROP TABLE IF EXISTS `Proposition_personne`;
/*!50001 DROP VIEW IF EXISTS `Proposition_personne`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `Proposition_personne` AS SELECT 
 1 AS `ID_proposition`,
 1 AS `Nom`,
 1 AS `Proposition`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `preparation_recette`
--

DROP TABLE IF EXISTS `preparation_recette`;
/*!50001 DROP VIEW IF EXISTS `preparation_recette`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `preparation_recette` AS SELECT 
 1 AS `ID`,
 1 AS `Onguent`,
 1 AS `IDproduitFinal`,
 1 AS `IDproduit`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `ListePotion`
--

/*!50001 DROP VIEW IF EXISTS `ListePotion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`aurelien`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `ListePotion` AS select `Preparation`.`IDproduit` AS `ID`,`Produit`.`NomProduit` AS `Potion` from (`Preparation` join `Produit` on((`Preparation`.`IDproduit` = `Produit`.`IDproduit`))) where (`Preparation`.`Temperature` is not null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ListeOnguent`
--

/*!50001 DROP VIEW IF EXISTS `ListeOnguent`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`aurelien`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `ListeOnguent` AS select `Preparation`.`IDproduit` AS `ID`,`Produit`.`NomProduit` AS `Onguent` from (`Preparation` join `Produit` on((`Preparation`.`IDproduit` = `Produit`.`IDproduit`))) where isnull(`Preparation`.`Temperature`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Moyenne_ingredient_potion`
--

/*!50001 DROP VIEW IF EXISTS `Moyenne_ingredient_potion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`aurelien`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Moyenne_ingredient_potion` AS select avg(`Somme_ingredient_potion`.`Valeur`) AS `Valeur` from `Somme_ingredient_potion` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Somme_ingredient_potion`
--

/*!50001 DROP VIEW IF EXISTS `Somme_ingredient_potion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`aurelien`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Somme_ingredient_potion` AS select `Preparation`.`IDproduit` AS `Produit`,sum(`se_compose_prepa`.`QteIngredient`) AS `Valeur` from (`Preparation` join `se_compose_prepa` on((`Preparation`.`IDproduit` = `se_compose_prepa`.`IDproduitFinal`))) where (`Preparation`.`Temperature` > 0) group by `Preparation`.`IDproduit` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vue_stockage`
--

/*!50001 DROP VIEW IF EXISTS `vue_stockage`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`aurelien`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vue_stockage` AS select `Produit`.`NomProduit` AS `Ingredient`,sum(`Stock`.`NbStock`) AS `QteTotal` from (`Stock` join `Produit` on((`Stock`.`IDproduit` = `Produit`.`IDproduit`))) group by `Produit`.`NomProduit` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Fournisseur_produit`
--

/*!50001 DROP VIEW IF EXISTS `Fournisseur_produit`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`aurelien`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Fournisseur_produit` AS select `Fournisseur`.`Nom` AS `Fournisseur`,`Produit`.`NomProduit` AS `Produits` from ((`Stock` join `Produit` on((`Produit`.`IDproduit` = `Stock`.`IDproduit`))) join `Fournisseur` on((`Fournisseur`.`IDFournisseur` = `Stock`.`IDFournisseur`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Produit_prix`
--

/*!50001 DROP VIEW IF EXISTS `Produit_prix`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`aurelien`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Produit_prix` AS select `Produit`.`NomProduit` AS `Produit`,`Produit`.`Prix` AS `Prix` from `Produit` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Proposition_personne`
--

/*!50001 DROP VIEW IF EXISTS `Proposition_personne`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`aurelien`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Proposition_personne` AS select `Proposition`.`IDProposition` AS `ID_proposition`,`Personne`.`Nom` AS `Nom`,`Proposition`.`Nom` AS `Proposition` from (`Proposition` join `Personne` on((`Proposition`.`IDPersonne` = `Personne`.`IDPersonne`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `preparation_recette`
--

/*!50001 DROP VIEW IF EXISTS `preparation_recette`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`alexandre`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `preparation_recette` AS select `ListeOnguent`.`ID` AS `ID`,`ListeOnguent`.`Onguent` AS `Onguent`,`se_compose_prepa`.`IDproduitFinal` AS `IDproduitFinal`,`se_compose_prepa`.`IDproduit` AS `IDproduit` from (`ListeOnguent` left join `se_compose_prepa` on((`se_compose_prepa`.`IDproduitFinal` = `ListeOnguent`.`ID`))) union select `ListePotion`.`ID` AS `ID`,`ListePotion`.`Potion` AS `Potion`,`se_compose_prepa`.`IDproduitFinal` AS `IDproduitFinal`,`se_compose_prepa`.`IDproduit` AS `IDproduit` from (`ListePotion` left join `se_compose_prepa` on((`se_compose_prepa`.`IDproduitFinal` = `ListePotion`.`ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-07 10:05:44
