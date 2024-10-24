-- EXERCICE 1

-- 1. Liste des hôtels dans chaque ville
SELECT hot_nom AS 'NomHotels', hot_ville AS 'Ville' FROM hotel;

-- 2. Afficher le Nom, Prénom et la ville
-- de Mr White
SELECT cli_nom AS Nom, cli_prenom AS Prenom, cli_ville AS Ville FROM client WHERE cli_nom = 'White';

-- 3. Afficher les ou la Station > 1000m
-- d’altitude
SELECT sta_nom AS NomStation, sta_altitude AS Altitude FROM station WHERE sta_altitude > 1000;

-- 4. afficher les numéros de chambres ayant une Capacité > 1 personne
SELECT cha_numero, cha_capacite FROM chambre WHERE cha_capacite > 1 LIMIT 4, 1000;

-- 5. Liste des clients n'habitant pas à Londres
SELECT cli_nom, cli_ville FROM client WHERE cli_ville <> 'Londres';

-- 6. la liste des hôtels situé à Bretou et de catégorie > 3
SELECT hot_nom, hot_ville, hot_categorie FROM hotel WHERE hot_ville = 'Bretou' AND hot_categorie > 3;

-- 7. le nombre d’Hôtels par station
SELECT sta_nom AS Station, COUNT(hot_sta_id) AS NbrHotels
FROM hotel h
JOIN station s ON h.hot_sta_id = s.sta_id
GROUP BY sta_nom, sta_id;

-- EXERCICE 1

-- 1. le nombre de chambre par station
 SELECT sta_nom AS Station, COUNT(cha_numero) AS totalChambre
 FROM chambre c
 JOIN hotel h ON c.cha_hot_id = h.hot_id
 JOIN station s ON h.hot_sta_id = s.sta_id
 GROUP BY sta_nom;
 
 -- 2. la liste des stations et de leurs hôtels avec leur catégorie et la ville associée
 SELECT sta_nom, hot_nom, hot_categorie, hot_ville
 FROM station s
 JOIN hotel h ON s.sta_id = h.hot_sta_id;
 
--  3. la liste des chambres > 1 place dans la ville de Bretou On souhaite
-- afficher le nom, la catégorie, la ville, le numéro de chambre et sa capacité
SELECT hot_nom, hot_categorie, hot_ville, cha_numero, cha_capacite 
FROM hotel h
JOIN chambre c ON h.hot_id = c.cha_hot_id
WHERE hot_ville LIKE 'Bretou' AND cha_capacite > 1;



 
