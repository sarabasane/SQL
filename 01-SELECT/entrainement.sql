------------------------------------- -- CHAP 1 -- --------------------------------------
------ UTILISER LE SELECT POUR RÉCUPÉRER TOUTES LES COLONNES DE LA TABLE EMPLOYÉS -------
-----------------------------------------------------------------------------------------
-- USE SELECT ------------------------------------- -- CHAP 1 -- --------------------------------------
------ UTILISER LE SELECT POUR RÉCUPÉRER TOUTES LES COLONNES DE LA TABLE EMPLOYÉS -------
-----------------------------------------------------------------------------------------
-- USE SELECT
SELECT * FROM employes;
-- 
-----------------------------------------------------------------------------------------
----------------------------------- -- RÉSULTAT ATTENDU  -- -----------------------------
-----------------------------------------------------------------------------------------

+-------------+-------------+----------+------+---------------+---------------+---------+
| id_employes | prenom      | nom      | sexe | service       | date_embauche | salaire |
+-------------+-------------+----------+------+---------------+---------------+---------+
|         350 | Jean-pierre | Laborde  | m    | direction     | 1999-12-09    |    5000 |
|         388 | Clement     | Gallet   | m    | commercial    | 2000-01-15    |    2300 |
|         415 | Thomas      | Winter   | m    | commercial    | 2000-05-03    |    3550 |
|         417 | Chloe       | Dubar    | f    | production    | 2001-09-05    |    1900 |
|         491 | Elodie      | Fellier  | f    | secretariat   | 2002-02-22    |    1600 |
|         509 | Fabrice     | Grand    | m    | comptabilite  | 2003-02-20    |    1900 |
|         547 | Melanie     | Collier  | f    | commercial    | 2004-09-08    |    3100 |
|         592 | Laura       | Blanchet | f    | direction     | 2005-06-09    |    4500 |
|         627 | Guillaume   | Miller   | m    | commercial    | 2006-07-02    |    1900 |
|         655 | Celine      | Perrin   | f    | commercial    | 2006-09-10    |    2700 |
|         699 | Guillaume   | Cottet   | m    | secretariat   | 2007-01-18    |    1390 |
|         701 | Mathieu     | Vignal   | m    | informatique  | 2008-12-03    |    2000 |
|         739 | Thierry     | Desprez  | m    | secretariat   | 2009-11-17    |    1500 |
|         780 | Amandine    | Thoyer   | f    | communication | 2010-01-23    |    1500 |
|         802 | Damien      | Durand   | m    | informatique  | 2010-07-05    |    2250 |
|         854 | Daniel      | Chevel   | m    | informatique  | 2011-09-28    |    1700 |
|         876 | Nathalie    | Martin   | f    | juridique     | 2012-01-12    |    3200 |
|         900 | Benoit      | Lagarde  | m    | production    | 2013-01-03    |    2550 |
|         933 | Emilie      | Sennard  | f    | commercial    | 2014-09-11    |    1800 |
|         990 | Stephanie   | Lafaye   | f    | assistant     | 2015-06-02    |    1775 |
+-------------+-------------+----------+------+---------------+---------------+---------+

------------------------------------- -- CHAP 2 -- --------------------------------------
------ RÉCUPÉRER UNIQUEMENT LES COLONNES NOM ET PRÉNOM DE LA TABLE EMPLOYÉS  -------------
-----------------------------------------------------------------------------------------
SELECT nom, prenom FROM employes; 

-----------------------------------------------------------------------------------------
----------------------------------- -- RÉSULTAT ATTENDU  -- -----------------------------
-----------------------------------------------------------------------------------------

+----------+-------------+
| nom      | prenom      |
+----------+-------------+
| Laborde  | Jean-pierre |
| Gallet   | Clement     |
| Winter   | Thomas      |
| Dubar    | Chloe       |
| Fellier  | Elodie      |
| Grand    | Fabrice     |
| Collier  | Melanie     |
| Blanchet | Laura       |
| Miller   | Guillaume   |
| Perrin   | Celine      |
| Cottet   | Julien      |
| Vignal   | Mathieu     |
| Desprez  | Thierry     |
| Thoyer   | Amandine    |
| Durand   | Damien      |
| Chevel   | Daniel      |
| Martin   | Nathalie    |
| Lagarde  | Benoit      |
| Sennard  | Emilie      |
| Lafaye   | Stephanie   |
+----------+-------------+


------------------------------------- -- CHAP 3 -- --------------------------------------
----------- RÉCUPÉRER UNIQUEMENT LA COLONNE SERVICE EN ÉVITANT LES DOUBLONS -------------
-----------------------------------------------------------------------------------------
-- USE DISTINCT
SELECT DISTINCT service FROM employes; 

-----------------------------------------------------------------------------------------
----------------------------------- -- RÉSULTAT ATTENDU -- ------------------------------
-----------------------------------------------------------------------------------------

+---------------+
| service       |
+---------------+
| direction     |
| commercial    |
| production    |
| secretariat   |
| comptabilite  |
| informatique  |
| communication |
| juridique     |
| assistant     |
+---------------+

------------------------------------- -- CHAP 4 -- -------------------------------------------
-- AFFICHER LES NOMS ET PRÉNOM & SERVICE DES EMPLOYÉS QUI SONT DANS LE SERVICE INFORMATIQUE --
----------------------------------------------------------------------------------------------
-- USE WHERE
SELECT nom, prenom FROM employes WHERE service = 'informatique'; 

-----------------------------------------------------------------------------------------
----------------------------------- -- RÉSULTAT ATTENDU -- ------------------------------
-----------------------------------------------------------------------------------------

+--------+---------+--------------+
| nom    | prenom  | service      |
+--------+---------+--------------+
| Vignal | Mathieu | informatique |
| Durand | Damien  | informatique |
| Chevel | Daniel  | informatique |
+--------+---------+--------------+

-------------------------------------------- -- CHAP 5 -- ---------------------------------------------------------
-- AFFICHER LES NOMS, PRENOM ET SERVICE DES EMPLOYES QUI ONT ETE EMBAUCHE ENTRE 2010-01-01 ET 2021-03-16 -------
-------------------------------------------------------------------------------------------------------------------
-- USE BETWEEN
SELECT nom, prenom FROM employes WHERE date_embauche BETWEEN '2010-01-01' AND '2021-03-16'; 

-----------------------------------------------------------------------------------------
----------------------------------- -- RÉSULTAT ATTENDU -- ------------------------------
-----------------------------------------------------------------------------------------

+---------+-----------+---------------+
| nom     | prenom    | service       |
+---------+-----------+---------------+
| Thoyer  | Amandine  | communication |
| Durand  | Damien    | informatique  |
| Chevel  | Daniel    | informatique  |
| Martin  | Nathalie  | juridique     |
| Lagarde | Benoit    | production    |
| Sennard | Emilie    | commercial    |
| Lafaye  | Stephanie | assistant     |
+---------+-----------+---------------+

-------------------------------------------- -- CHAP 6 -- ----------------------------------------------------------
--- - AFFICHER LES NOMS, PRENOM ET SERVICE DES EMPLOYES QUI ONT ÉTÉ EMBAUCHES ENTRE 2015-01-01 ET CURRENT DATE - ---
--------------------------------------------------------------------------------------------------------------------
-- USE CURDATE()

SELECT nom, prenom FROM employes WHERE date_embauche BETWEEN '2015-01-01' AND CURRENT_DATE(); 
----------------------------------------------------------------------------------------------------
---------------------------------------- -- RÉSULTAT ATTENDU -- ------------------------------------
----------------------------------------------------------------------------------------------------

+--------+-----------+-----------+
| nom    | prenom    | service   |
+--------+-----------+-----------+
| Lafaye | Stephanie | assistant |
+--------+-----------+-----------+

---------------------------------- -- CHAP 7 -- ------------------------------
------ -- AFFICHER LES PRÉNOMS DES EMPLOYÉS QUI COMMENCENT PAR UN S -- ----------
------------------------------------------------------------------------------
-- USE WHERE WITH LIKE
SELECT prenom FROM employes WHERE prenom LIKE 's%'; 

----------------------------------------------------------------------------------------------------
---------------------------------------- -- RÉSULTAT ATTENDU -- ------------------------------------
----------------------------------------------------------------------------------------------------

+-----------+
| prenom    |
+-----------+
| Stephanie |
+-----------+

---------------------------------- -- CHAP 8 -- ---------------------------------
------ -- AFFICHER LES PRÉNOMS DES EMPLOYÉS QUI SE TERMINENT PAR UN IE -- ----------
---------------------------------------------------------------------------------
-- USE WHERE WITH LIKE
SELECT prenom FROM employes WHERE prenom LIKE '%ie'; 

----------------------------------------------------------------------------------------------------
---------------------------------------- -- RÉSULTAT ATTENDU -- ------------------------------------
----------------------------------------------------------------------------------------------------

+-----------+
| prenom    |
+-----------+
| Elodie    |
| Melanie   |
| Nathalie  |
| Emilie    |
| Stephanie |
+-----------+

--------------------------------------------- -- CHAP 09 -- ----------------------------------------
------ -- AFFICHER LES PRÉNOMS DES EMPLOYÉS QUI CONTIENNENT IE (début, fin ou milieu) -- ---------------
----------------------------------------------------------------------------------------------------
-- USE WHERE WITH LIKE

SELECT prenom FROM employes WHERE prenom LIKE '%ie%'; 
----------------------------------------------------------------------------------------------------
---------------------------------------- -- RÉSULTAT ATTENDU -- ------------------------------------
----------------------------------------------------------------------------------------------------

+-------------+
| prenom      |
+-------------+
| Jean-pierre |
| Elodie      |
| Melanie     |
| Julien      |
| Mathieu     |
| Thierry     |
| Damien      |
| Daniel      |
| Nathalie    |
| Emilie      |
| Stephanie   |
+-------------+

--------------------------------------------- -- CHAP 10 -- -------------------------------------------------------
------ -- AFFICHER LE NOM, PRÉNOM ET SERVICE DES EMPLOYÉS QUI NE SONT PAS DU SERVICE INFORMATIQUE  -- ------------
------------------------------------------------------------------------------------------------------------------
-- USE OPERATOR WHITE WHERE
-- >  Strictement supérieur à
-- <  Strictement inférieur à 
-- >= supérieur ou égal à 
-- <= Inférieur ou égal à
-- =  Est égal à
-- != Est différent de 

SELECT nom, PRENOM, service FROM employes WHERE service!= 'informatique';

----------------------------------------------------------------------------------------------------
---------------------------------------- -- RÉSULTAT ATTENDU -- ------------------------------------
----------------------------------------------------------------------------------------------------

+----------+-------------+---------------+
| nom      | prenom      | service       |
+----------+-------------+---------------+
| Laborde  | Jean-pierre | direction     |
| Gallet   | Clement     | commercial    |
| Winter   | Thomas      | commercial    |
| Dubar    | Chloe       | production    |
| Fellier  | Elodie      | secretariat   |
| Grand    | Fabrice     | comptabilite  |
| Collier  | Melanie     | commercial    |
| Blanchet | Laura       | direction     |
| Miller   | Guillaume   | commercial    |
| Perrin   | Celine      | commercial    |
| Cottet   | Julien      | secretariat   |
| Desprez  | Thierry     | secretariat   |
| Thoyer   | Amandine    | communication |
| Martin   | Nathalie    | juridique     |
| Lagarde  | Benoit      | production    |
| Sennard  | Emilie      | commercial    |
| Lafaye   | Stephanie   | assistant     |
+----------+-------------+---------------+

--------------------------------------------- -- CHAP 11 -- ------------------------------------------------------
---------------------------- -- AFFICHER LES SALAIRES SUPÉRIEURS À 3000 -- --------------------------------------
-----------------------------------------------------------------------------------------------------------------
-- USE OPERATOR WHITE WHERE
-- >  Strictement supérieur à
-- <  Strictement inférieur à 
-- >= supérieur ou égal à 
-- <= Inférieur ou égal à
-- =  Est égal à
-- != Est différent de 

SELECT * FROM employes WHERE salaire > 3000; 
----------------------------------------------------------------------------------------------------
---------------------------------------- -- RÉSULTAT ATTENDU -- ------------------------------------
----------------------------------------------------------------------------------------------------

+-------------+-------------+----------+------+------------+---------------+---------+
| id_employes | prenom      | nom      | sexe | service    | date_embauche | salaire |
+-------------+-------------+----------+------+------------+---------------+---------+
|         350 | Jean-pierre | Laborde  | m    | direction  | 1999-12-09    |    5000 |
|         415 | Thomas      | Winter   | m    | commercial | 2000-05-03    |    3550 |
|         547 | Melanie     | Collier  | f    | commercial | 2004-09-08    |    3100 |
|         592 | Laura       | Blanchet | f    | direction  | 2005-06-09    |    4500 |
|         876 | Nathalie    | Martin   | f    | juridique  | 2012-01-12    |    3200 |
+-------------+-------------+----------+------+------------+---------------+---------+

--------------------------------------------- -- CHAP 12 -- -----------------------------------------------------
--------------- -- AFFICHER LES EMPLOYES PAR LEUR NOM EN ORDRE ASCENDANT  -- ---------------------------------
-----------------------------------------------------------------------------------------------------------------
-- USE ORDER BY 

SELECT nom FROM employes ORDER BY nom; 
----------------------------------------------------------------------------------------------------
---------------------------------------- -- RÉSULTAT ATTENDU -- ------------------------------------
----------------------------------------------------------------------------------------------------
+----------+
| nom      |
+----------+
| Blanchet |
| Chevel   |
| Collier  |
| Cottet   |
| Desprez  |
| Dubar    |
| Durand   |
| Fellier  |
| Gallet   |
| Grand    |
| Laborde  |
| Lafaye   |
| Lagarde  |
| Martin   |
| Miller   |
| Perrin   |
| Sennard  |
| Thoyer   |
| Vignal   |
| Winter   |
+----------+

--------------------------------------------- -- CHAP 13 -- ------------------------------------------------------
------------------------- -- AFFICHER LES EMPLOYÉS PAR LEUR NOM EN ORDRE DESCENDANT -- ----------------------------
------------------------------------------------------------------------------------------------------------------
-- USE ORDER BY ()

SELECT nom FROM employes ORDER BY nom DESC; 

----------------------------------------------------------------------------------------------------
---------------------------------------- -- RÉSULTAT ATTENDU -- ------------------------------------
----------------------------------------------------------------------------------------------------

+----------+
| nom      |
+----------+
| Winter   |
| Vignal   |
| Thoyer   |
| Sennard  |
| Perrin   |
| Miller   |
| Martin   |
| Lagarde  |
| Lafaye   |
| Laborde  |
| Grand    |
| Gallet   |
| Fellier  |
| Durand   |
| Dubar    |
| Desprez  |
| Cottet   |
| Collier  |
| Chevel   |
| Blanchet |
+----------+

--------------------------------------------- -- CHAP 14 -- ------------------------------------------------------
------- -- AFFICHER LES COLONNES NOM, PRÉNOM & SALAIRE, ORDONNÉS LES SALAIRES EN ASCENDANT ET LES PRÉNOM EN DESCENDANT -- --
------------------------------------------------------------------------------------------------------------------
-- USE ORDER BY
-- Ordonner par salaire puis par prenom car des salaires peuvent être similaires.
SELECT nom, prenom, salaire FROM employes ORDER BY salaire, prenom DESC; 


----------------------------------------------------------------------------------------------------
---------------------------------------- -- RÉSULTAT ATTENDU -- ------------------------------------
----------------------------------------------------------------------------------------------------

+----------+-------------+---------+
| nom      | prenom      | salaire |
+----------+-------------+---------+
| Cottet   | Julien      |    1390 |
| Desprez  | Thierry     |    1500 |
| Thoyer   | Amandine    |    1500 |
| Fellier  | Elodie      |    1600 |
| Chevel   | Daniel      |    1700 |
| Lafaye   | Stephanie   |    1775 |
| Sennard  | Emilie      |    1800 |
| Miller   | Guillaume   |    1900 |
| Grand    | Fabrice     |    1900 |
| Dubar    | Chloe       |    1900 |
| Vignal   | Mathieu     |    2000 |
| Durand   | Damien      |    2250 |
| Gallet   | Clement     |    2300 |
| Lagarde  | Benoit      |    2550 |
| Perrin   | Celine      |    2700 |
| Collier  | Melanie     |    3100 |
| Martin   | Nathalie    |    3200 |
| Winter   | Thomas      |    3550 |
| Blanchet | Laura       |    4500 |
| Laborde  | Jean-pierre |    5000 |
+----------+-------------+---------+

--------------------------------------------- -- CHAP 15 -- ------------------------------------------------------
------------- -- ORDONNER LES PRÉNOMS EN ORDRE DÉCROISSANT PUIS AFFICHER LES TROIS PREMIÈRES LIGNES -- ------------------
------------------------------------------------------------------------------------------------------------------
-- USE ORDER BY
-- USE LIMIT
SELECT * FROM employes ORDER BY prenom DESC LIMIT 3; 

----------------------------------------------------------------------------------------------------
-------------------------------------------- -- RESPONSE  -- ---------------------------------------
----------------------------------------------------------------------------------------------------

+-------------+-----------+---------+------+-------------+---------------+---------+
| id_employes | prenom    | nom     | sexe | service     | date_embauche | salaire |
+-------------+-----------+---------+------+-------------+---------------+---------+
|         415 | Thomas    | Winter  | m    | commercial  | 2000-05-03    |    3550 |
|         739 | Thierry   | Desprez | m    | secretariat | 2009-11-17    |    1500 |
|         990 | Stephanie | Lafaye  | f    | assistant   | 2015-06-02    |    1775 |
+-------------+-----------+---------+------+-------------+---------------+---------+

--------------------------------------------- -- CHAP 16 -- ------------------------------------------------------
-------------------------- -- AFFICHER LES SALAIRES ANNUELS DE CHAQUE EMPLOYÉ -- ---------------------------------
------------------------------------------------------------------------------------------------------------------
-- USE OPERATOR *
-- USE AS (ALIAS)
SELECT nom, salaire*12 AS salaire_annuel FROM employes ; 

----------------------------------------------------------------------------------------------------
-------------------------------------------- -- RESPONSE  -- ---------------------------------------
----------------------------------------------------------------------------------------------------

+----------+----------------+
| nom      | salaire_annuel |
+----------+----------------+
| Laborde  |          60000 |
| Gallet   |          27600 |
| Winter   |          42600 |
| Dubar    |          22800 |
| Fellier  |          19200 |
| Grand    |          22800 |
| Collier  |          37200 |
| Blanchet |          54000 |
| Miller   |          22800 |
| Perrin   |          32400 |
| Cottet   |          16680 |
| Vignal   |          24000 |
| Desprez  |          18000 |
| Thoyer   |          18000 |
| Durand   |          27000 |
| Chevel   |          20400 |
| Martin   |          38400 |
| Lagarde  |          30600 |
| Sennard  |          21600 |
| Lafaye   |          21300 |
+----------+----------------+

--------------------------------------------- -- CHAP 17 -- --------------------------------------------------------
-------------------------- -- AFFICHER LA MASSE SALARIALE ANNUELLE DE L'ENTREPRISE -- --------------------------------
--------------------------------------------------------------------------------------------------------------------
-- USE SUM()
-- USE AS (ALIAS)

SELECT SUM(salaire*12) AS masse_salariale FROM employes ; 

----------------------------------------------------------------------------------------------------
-------------------------------------------- -- RESPONSE  -- ---------------------------------------
----------------------------------------------------------------------------------------------------

+-----------------+
| masse_salariale |
+-----------------+
|          577380 |
+-----------------+

--------------------------------------------- -- CHAP 18 -- ------------------------------------------------------
-------------------------- -- AFFICHER LE SALAIRE MOYEN DE L'ENTREPRISE  -- --------------------------------------
------------------------------------------------------------------------------------------------------------------
-- USE AVG()
-- USE AS (ALIAS)
SELECT AVG(salaire) AS salaire_moyen FROM employes ; 

----------------------------------------------------------------------------------------------------
-------------------------------------------- -- RESPONSE  -- ---------------------------------------
----------------------------------------------------------------------------------------------------

+---------------+
| salaire_moyen |
+---------------+
|     2405.7500 |
+---------------+

--------------------------------------------- -- CHAP 19 -- -----------------------------------------------------
-------------------------- -- AFFICHER LE SALAIRE MOYEN DES INFORMATICIENS -- ----------------------------------
-----------------------------------------------------------------------------------------------------------------
-- USE AVG()
-- USE AS (ALIAS)
-- WHERE
SELECT AVG(salaire) AS salaire_moyen FROM employes  WHERE service = 'informatique'; 
----- -- RESPONSE  -- ---

+---------------+
| salaire_moyen |
+---------------+
|     1983.3333 |
+---------------+

-- ARRONDIR À L'ENTIER LE SALAIRE MOYEN DES INFORMATICIENS

-- USE ROUND()
-- USE AVG()
-- USE AS (ALIAS)
-- WHERE
SELECT ROUND(AVG(salaire)) AS salaire_moyen FROM employes  WHERE service = 'informatique'; 
--------------- -- RESPONSE  -- -----

+---------------+
| salaire_moyen |
+---------------+
|          1983 |
+---------------+

--------------------------------------------- -- CHAP 20 -- -----------------------------------------------------
--------------------- -- AFFICHER LE NOMBRE D'HOMMES ET DE FEMMES DANS L'ENTREPRISE -- -----------------------------
-----------------------------------------------------------------------------------------------------------------
-- USE COUNT()
-- USE AS (ALIAS)
-- WHERE
SELECT COUNT(sexe) AS nb_homme FROM employes WHERE sexe = 'f'; 
SELECT COUNT(sexe) AS nb_femme FROM employes  WHERE sexe = 'm'; 
----------------------------------------------------------------------------------------------------
-------------------------------------------- -- RESPONSE  -- ---------------------------------------
----------------------------------------------------------------------------------------------------
+----------+
| nb_femme |
+----------+
|        9 |
+----------+

+----------+ 
| nb_homme |
+----------+
|       11 |
+----------+


-- TROUVER LE MOYEN D'AFFICHER LES MÊMES RÉSULTATS EN UN SEUL TABLEAU
SELECT sexe, COUNT(sexe) AS nombre FROM employes GROUP BY sexe;
--------------------------------------------- -- CHAP 21 -- -----------------------------------------------------
---- -- AFFICHER UNIQUEMENT LES EMPLOYES DU SERVICE INFORMATIQUE, COMMERCIAL & ASSISTANT -- ---------------------
-----------------------------------------------------------------------------------------------------------------
-- USE WHERE 
-- USE IN () 
SELECT nom, prenom, service FROM employes WHERE service IN('informatique', 'commercial', 'assistant'); 

-----------------------------------------------------------------------------------------------------------------
-------------------------------------------- -- RESPONSE  -- ----------------------------------------------------
-----------------------------------------------------------------------------------------------------------------

+---------+-----------+--------------+
| nom     | prenom    | service      |
+---------+-----------+--------------+
| Gallet  | Clement   | commercial   |
| Winter  | Thomas    | commercial   |
| Collier | Melanie   | commercial   |
| Miller  | Guillaume | commercial   |
| Perrin  | Celine    | commercial   |
| Vignal  | Mathieu   | informatique |
| Durand  | Damien    | informatique |
| Chevel  | Daniel    | informatique |
| Sennard | Emilie    | commercial   |
| Lafaye  | Stephanie | assistant    |
+---------+-----------+--------------+

--------------------------------------------- -- CHAP 22 -- -----------------------------------------------------
---- -- AFFICHER LES EMPLOYES DE TOUS LES SERVICES SAUF (INFORMATIQUE- COMMERCIAL - ASSISTANT)  -- ---------------------
-----------------------------------------------------------------------------------------------------------------
-- USE WHERE
-- USE NOT IN () 
SELECT nom, prenom, service FROM employes WHERE service NOT IN('informatique', 'commercial', 'assistant'); 


-----------------------------------------------------------------------------------------------------------------
-------------------------------------------- -- RESPONSE  -- ----------------------------------------------------
-----------------------------------------------------------------------------------------------------------------

+----------+-------------+---------------+
| nom      | prenom      | service       |
+----------+-------------+---------------+
| Laborde  | Jean-pierre | direction     |
| Dubar    | Chloe       | production    |
| Fellier  | Elodie      | secretariat   |
| Grand    | Fabrice     | comptabilite  |
| Blanchet | Laura       | direction     |
| Cottet   | Julien      | secretariat   |
| Desprez  | Thierry     | secretariat   |
| Thoyer   | Amandine    | communication |
| Martin   | Nathalie    | juridique     |
| Lagarde  | Benoit      | production    |
+----------+-------------+---------------+

--------------------------------------------- -- CHAP 23 -- -----------------------------------------------------
-------------------------------- -- AFFICHER LE SALAIRE LE PLUS ELEVÉ -- ----------------------------------------
-----------------------------------------------------------------------------------------------------------------
-- USE ??
SELECT MAX(salaire) AS plus_haut_salaire FROM employes; 

+-------------------+
| plus_haut_salaire |
+-------------------+
|              5000 |
+-------------------+

-- AFFICHER LE SALAIRE MINIMUM AVEC LE NOM & PRENOM (Requête imbriqué attendu)
-- USE ??
SELECT salaire, nom, prenom FROM employes WHERE salaire IN(SELECT MIN(salaire) FROM employes);
---- EXEMPLE REQUETE IMBRIQUE --------- 
SELECT prenom
FROM employes
WHERE service 
IN (SELECT service FROM employes WHERE service = 'informatique'); 
-- La requête principale sélectionne les prénoms des employés 
-- Dont le service est dans la liste des résultats de la SOUS-REQUETE. 
-- L'opérateur IN permet de filtrer les résultats en fonction de cette liste.

-- Ainsi, la requête complète sélectionne les prénoms des employés 
-- Qui travaillent dans le service 'informatique'. 
-- C'est une manière de filtrer les résultats 
-- En utilisant une liste de valeurs provenant d'une sous-requête.
---- FIN EXEMPLE ----------

+---------+--------+--------+
| salaire | nom    | prenom |
+---------+--------+--------+
|    1390 | Cottet | Julien |
+---------+--------+--------+

----------------------------------------------------------- -- CHAP 24 -- ----------------------------------------------------------------
----------------------------------------- -- AFFICHER LE NOMBRE D'EMPLOYES PAR SERVICE   -- ----------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------
-- USE COUNT()
-- AS
-- GROUP BY

SELECT service, COUNT(*) AS nb_employes FROM employes GROUP BY service;

-----------------------------------------------------------------------------------------------------------------
-------------------------------------------- -- RESPONSE  -- ----------------------------------------------------
-----------------------------------------------------------------------------------------------------------------

+---------------+-------------+
| service       | nb_employes |
+---------------+-------------+
| assistant     |           1 |
| commercial    |           6 |
| communication |           1 |
| comptabilite  |           1 |
| direction     |           2 |
| informatique  |           3 |
| juridique     |           1 |
| production    |           2 |
| secretariat   |           3 |
+---------------+-------------+


----------------------------------------------------------- -- 25 -- ----------------------------------------------------------------
--------------------- -- AFFICHER LE NOMBRE D'EMPLOYES PAR SERVICE A CONDITION D'AVOIR PLUS DE DEUX EMPLOYES  -- --------------------------
-------------------------------------------------------------------------------------------------------------------------------------------
-- USE COUNT()
-- AS
-- GROUP BY
-- HAVING
SELECT service, COUNT(*) nb_employes FROM employes GROUP BY service HAVING nb_employes > 2;

-----------------------------------------------------------------------------------------------------------------
-------------------------------------------- -- RESPONSE  -- ----------------------------------------------------
-----------------------------------------------------------------------------------------------------------------

+--------------+-------------+
| service      | nb_employes |
+--------------+-------------+
| commercial   |           6 |
| informatique |           3 |
| secretariat  |           3 |
+--------------+-------------+
