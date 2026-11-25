-- Práctica 3 - Ejercicio 1 (base: moviebig.db, tabla movies)
-- Películas producidas en Estados Unidos, ordenadas de mayor a menor popularidad.
--
-- Notas:
--   * En esta base el identificador se llama "id" (no "movie_id" como en las diapositivas).
--   * production_countries es un texto JSON con los países, por ejemplo:
--     [{"iso_3166_1": "US", "name": "United States of America"}],
--     por eso se busca el texto "United States" con LIKE.

SELECT id,
       title                AS titulo,
       popularity           AS popularidad,
       vote_average         AS promedio_votacion,
       release_date         AS fecha_estreno,
       production_countries AS pais_produccion
FROM movies
WHERE production_countries LIKE '%United States%'
ORDER BY popularity DESC;
