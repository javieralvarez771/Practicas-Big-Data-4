-- Ejercicio 8: películas estrenadas antes del 01/01/1980
-- La fecha está guardada como 'YYYY-MM-DD'

SELECT title, vote_average, release_date
FROM movies
WHERE release_date < '1980-01-01';
