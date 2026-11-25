-- Ejercicio 9: películas con tagline de más de 100 caracteres

SELECT title, LENGTH(tagline), popularity, tagline
FROM movies
WHERE LENGTH(tagline) > 100;
