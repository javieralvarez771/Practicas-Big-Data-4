-- Ejercicio 6: más de 1000 votos y promedio no superior a 5

SELECT title, vote_count, vote_average, release_date
FROM movies
WHERE vote_count > 1000
AND vote_average <= 5;
