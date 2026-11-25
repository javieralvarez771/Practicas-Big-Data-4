-- Ejercicio 7: popularidad mayor que 100 y "alien" en el resumen
-- Con LOWER salen también Alien y ALIEN

SELECT title, popularity, release_date, vote_average
FROM movies
WHERE popularity > 100
AND LOWER(overview) LIKE '%alien%';
