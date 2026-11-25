-- Ejercicio 4: películas de Japón, China, India o Corea

SELECT id, title, release_date, vote_average, popularity, production_countries
FROM movies
WHERE production_countries LIKE '%Japan%'
OR production_countries LIKE '%China%'
OR production_countries LIKE '%India%'
OR production_countries LIKE '%Korea%'
ORDER BY production_countries ASC, release_date ASC;
