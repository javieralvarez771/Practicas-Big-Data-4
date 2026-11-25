-- Práctica 2 - Ejercicio 8 (base: moviebig.db, tabla movies)
-- Nombre, promedio de votación y fecha de estreno de las películas estrenadas
-- antes del 01.01.1980.
--
-- release_date se guarda como texto con formato 'AAAA-MM-DD', así que la
-- comparación con '1980-01-01' ordena correctamente las fechas.
-- "Antes de" => estrictamente menor; el 01.01.1980 no entra.
-- La película sin fecha (NULL) queda excluida automáticamente.

SELECT title        AS nombre,
       vote_average AS promedio_votacion,
       release_date AS fecha_estreno
FROM movies
WHERE release_date < '1980-01-01'
ORDER BY release_date;
