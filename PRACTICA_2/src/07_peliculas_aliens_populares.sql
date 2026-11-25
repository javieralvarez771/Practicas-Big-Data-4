-- Práctica 2 - Ejercicio 7 (base: moviebig.db, tabla movies)
-- Nombre, popularidad, fecha de estreno y promedio de votación de las películas
-- con popularidad superior a 100 (> 100) que contienen "alien" en el resumen.
--
-- Interpretación:
--   * "Considerar mayúsculas" se entiende como en los ejercicios 2 y 5: también
--     deben aparecer "Alien" o "ALIEN", por eso se compara en minúsculas (LOWER).
--   * Aquí se busca el texto "alien" dentro del resumen para incluir también
--     "aliens" (las películas que hablan de aliens suelen usar el plural).

SELECT title        AS nombre,
       popularity   AS popularidad,
       release_date AS fecha_estreno,
       vote_average AS promedio_votacion
FROM movies
WHERE popularity > 100
  AND LOWER(overview) LIKE '%alien%'
ORDER BY popularity DESC;
