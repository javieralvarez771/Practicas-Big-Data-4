-- Ejercicio 10: películas de una hora o menos
-- runtime = 0 significa que no hay dato, por eso pongo runtime > 0

SELECT title, release_date, runtime, vote_average
FROM movies
WHERE runtime <= 60
AND runtime > 0;
