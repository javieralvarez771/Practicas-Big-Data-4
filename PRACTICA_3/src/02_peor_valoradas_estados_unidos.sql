-- Práctica 3 - Ejercicio 2 (base: moviebig.db, tabla movies)
-- Películas producidas en Estados Unidos con valoración promedio menor o igual a 5,
-- ordenadas de mayor a menor cantidad de votos.
--
-- Interpretación:
--   * "Menor o igual a 5" => vote_average <= 5 (un 5 exacto sí entra).
--   * Las películas con vote_count = 0 tienen vote_average = 0 porque nadie las ha
--     votado: su valoración es desconocida, no mala, así que se excluyen.

SELECT id,
       title                AS titulo,
       popularity           AS popularidad,
       vote_average         AS promedio_votacion,
       vote_count           AS cantidad_votos,
       production_countries AS pais_produccion
FROM movies
WHERE production_countries LIKE '%United States%'
  AND vote_average <= 5
  AND vote_count > 0
ORDER BY vote_count DESC;
