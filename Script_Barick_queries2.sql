SELECT categorie_produit , SUM(quantite* prix_unitaire) as "somme de ventes"
FROM ventes
WHERE categorie_produit like 'tennis';

SELECT SUM(stock) as "les produits rando"
FROM produits
WHERE nom_produit like "%rando%";

SELECT ville,COUNT () 
FROM clients
where ville like "%oma";

SELECT ROUND(AVG(prix),2) as 'le prix moyen des acrticles de combat'
FROM produits
WHERE categorie like "%ombat" and prix BETWEEN 20 and 50;

SELECT ville_client, COUNT(id_vente) as "nombre de vente Lubumbashi"
FROM ventes
WHERE ville_client like 'lubumbashi'and date_vente < '2025-01-01' ;

SELECT categorie_produit,SUM(quantite*prix_unitaire) as "chiffre d'affaires par categorie"
from ventes
GROUP BY categorie_produit ;
