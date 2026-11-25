-- Práctica 3 - Ejercicio 4 (base: moviebig.db, tabla movies)
-- Películas producidas en Japón, China, India o Corea del Sur,
-- ordenadas ascendentemente por país de producción y por fecha de estreno.
--
-- Notas:
--   * Los países están en inglés dentro de un texto JSON; Corea del Sur aparece
--     como "South Korea", por eso basta con buscar "Korea".
--   * Hong Kong y Taiwán figuran como países distintos de "China" y no se incluyen.
--   * Se ordena por el texto completo de production_countries, porque una
--     película puede tener varios países.

SELECT id,
       title                AS titulo,
       release_date         AS fecha_estreno,
       vote_average         AS promedio_votacion,
       popularity           AS popularidad,
       production_countries AS pais_produccion
FROM movies
WHERE production_countries LIKE '%Japan%'
   OR production_countries LIKE '%China%'
   OR production_countries LIKE '%India%'
   OR production_countries LIKE '%Korea%'
ORDER BY production_countries ASC, release_date ASC;
