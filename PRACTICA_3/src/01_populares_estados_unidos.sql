-- Ejercicio 1: películas de Estados Unidos ordenadas por popularidad
-- En esta tabla el id se llama id y no movie_id

SELECT id, title, popularity, vote_average, release_date, production_countries
FROM movies
WHERE production_countries LIKE '%United States%'
ORDER BY popularity DESC;
