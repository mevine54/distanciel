-- 1. Liste des contacts français
SELECT CompanyName AS Societe, ContactName AS Contact, ContactTitle AS Fonction, Phone AS Telephone
FROM customers
WHERE Country LIKE 'France';

-- 2. La liste des Produits vendus par Exotic Liquids

