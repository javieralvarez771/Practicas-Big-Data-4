-- Ejercicio 3: películas de más de 2 horas (120 minutos)

SELECT title, runtime, vote_average
FROM movies
WHERE runtime > 120;
