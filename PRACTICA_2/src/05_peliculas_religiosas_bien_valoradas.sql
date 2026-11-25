-- Ejercicio 5: películas con nota mayor que 7 y "god" en el resumen
-- Con LOWER salen también God y GOD

SELECT title, vote_average, overview
FROM movies
WHERE vote_average > 7
AND LOWER(overview) LIKE '%god%';
