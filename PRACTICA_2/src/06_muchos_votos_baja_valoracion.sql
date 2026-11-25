-- Práctica 2 - Ejercicio 6 (base: moviebig.db, tabla movies)
-- Nombre, número de votaciones, promedio y fecha de lanzamiento de las películas
-- con más de 1000 calificaciones cuyo promedio no ha sido superior a 5.
--
-- "Más de 1000"           => vote_count > 1000
-- "No superior a 5"       => vote_average <= 5 (un 5 exacto sí entra)

SELECT title        AS nombre,
       vote_count   AS numero_votaciones,
       vote_average AS promedio_votacion,
       release_date AS fecha_lanzamiento
FROM movies
WHERE vote_count > 1000
  AND vote_average <= 5
ORDER BY vote_average;
