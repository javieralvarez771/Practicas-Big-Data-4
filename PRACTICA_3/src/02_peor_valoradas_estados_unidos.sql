-- Ejercicio 2: películas de Estados Unidos con nota menor o igual a 5
-- Quito las que tienen 0 votos porque nadie las ha votado

SELECT id, title, popularity, vote_average, vote_count, production_countries
FROM movies
WHERE production_countries LIKE '%United States%'
AND vote_average <= 5
AND vote_count > 0
ORDER BY vote_count DESC;
