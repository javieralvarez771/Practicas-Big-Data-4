-- Ejercicio 3: películas de Japón estrenadas entre las 22 y las 05
-- release_date solo tiene la fecha y no la hora, así que no sale ninguna
-- Si tuviera hora sería 'YYYY-MM-DD HH:MM' y la hora empieza en la posición 12

SELECT id, title, popularity, vote_average, release_date, production_countries
FROM movies
WHERE production_countries LIKE '%Japan%'
AND LENGTH(release_date) > 10
AND (SUBSTR(release_date, 12, 2) >= '22' OR SUBSTR(release_date, 12, 2) < '05');
