-- NULL est une valeur inconnue
-- NULL ne peut pas être testé avec un = 
-- NULL se test avec un "IS" ou "IS NOT"

-- Les ID_LIVRE dans la table emprunt qui n'ont pas été rendu.

-------- REQUETES IMBRIQUEES --------------------------------------------

-- 00 -- Echauffement -- Quels sont les titre des livres qui n'ont pas été rendu à la bibliotheque ?
SELECT id_livre FROM livre WHERE id_livre IN
(SELECT id_livre FROM emprunt WHERE date_rendu IS NULL); 
+----------+-------------------------+
| id_livre | titre                   |
+----------+-------------------------+
|      105 | Les Trois Mousquetaires |
|      100 | Une vie                 |
+----------+-------------------------+

-- 00 -- Echauffement -- Quels sont les prenom des abonnes n ayant pas encore rendu un livre a la bibliotheque ?

SELECT prenom FROM abonne WHERE id_abonne IN
(SELECT id_abonne FROM emprunt WHERE date_rendu IS NULL);

+--------+
| prenom |
+--------+
| Chloe  |
| Benoit |
+--------+

-- 01 -- Afficher les prénoms des abonnées ayant emprunté un livre le 11/12/2016
SELECT prenom FROM abonne WHERE id_abonne IN
(SELECT id_abonne FROM emprunt WHERE date_sortie='2016-12-11');

 +-----------+
 | prenom    |
 +-----------+
 | Chloe     |
 +-----------+

-- 02 -- Combien de livre guillaume a emprunté à la bibliotheque ?
SELECT COUNT(id_livre) AS nombre_de_livre FROM emprunt WHERE id_abonne IN
(SELECT id_abonne FROM abonne WHERE prenom='Guillaume');

  +-------------------+
  | nombre de livre   |
  +-------------------+
  |                 2 |
  +-------------------+

-- 03 -- Afficher la liste des abonnés ayant déjà emprunté un livre d alphonse daudet.
SELECT prenom FROM abonne WHERE id_abonne IN
(SELECT id_abonne FROM emprunt WHERE id_livre IN 
(SELECT id_livre FROM livre WHERE auteur='ALPHONSE DAUDET'));    

  +--------+
  | prenom |
  +--------+
  | laura  |
  +--------+

-- 04 -- Nous aimerions connaitre les titres de livre que chloé na pas encore emprunté.
SELECT titre FROM livre WHERE id_livre IN
(SELECT id_livre FROM emprunt WHERE id_abonne IN
(SELECT id_abonne FROM abonne WHERE prenom='Chloe'));

  +-------------------------+
  | titre                   |
  +-------------------------+
  | Une vie                 |
  | Les Trois Mousquetaires |
  +-------------------------+

-- 05 -- 🔥 CHALLENGE 🔥 Qui a emprunté le plus de livre a la bibliotheque ?
SELECT prenom, COUNT(id_abonne) FROM emprunt