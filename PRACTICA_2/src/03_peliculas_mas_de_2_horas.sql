-- Práctica 2 - Ejercicio 3 (base: moviebig.db, tabla movies)
-- Nombre, duración y promedio de votación de las películas que duran más de 2 horas.
--
-- runtime está en minutos: 2 horas = 120 minutos.
-- "Más de" => estrictamente mayor (> 120); una película de 120 minutos exactos no entra.

SELECT title        AS nombre,
       runtime      AS duracion_minutos,
       vote_average AS promedio_votacion
FROM movies
WHERE runtime > 120
ORDER BY runtime DESC;
