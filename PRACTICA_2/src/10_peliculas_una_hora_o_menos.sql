-- Práctica 2 - Ejercicio 10 (base: moviebig.db, tabla movies)
-- Nombre, fecha de lanzamiento, duración y promedio de votación de las películas
-- que duran una hora o menos.
--
-- runtime está en minutos: una hora o menos => runtime <= 60.
-- runtime = 0 significa duración no registrada: se excluye con runtime > 0.
-- Las películas con runtime NULL también quedan fuera.

SELECT title        AS nombre,
       release_date AS fecha_lanzamiento,
       runtime      AS duracion_minutos,
       vote_average AS promedio_votacion
FROM movies
WHERE runtime > 0
  AND runtime <= 60
ORDER BY runtime;
