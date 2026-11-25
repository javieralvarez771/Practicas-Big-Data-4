-- Práctica 2 - Ejercicio 5 (base: moviebig.db, tabla movies)
-- Nombre, promedio de votación y resumen de las películas con promedio
-- superior a 7 (> 7) que contienen la palabra "god" en el resumen.
--
-- Interpretación:
--   * Se usa LOWER para aceptar "god", "God" y "GOD".
--   * Se busca la PALABRA "god", no el texto dentro de otras palabras:
--     un simple LIKE '%god%' también devolvería "goddess", "godfather",
--     "godmother" o "Godzilla", que no son de temática religiosa.
--     Para ello se cambian los signos de puntuación por espacios, se añade
--     un espacio al principio y al final, y se busca ' god '.

SELECT title        AS nombre,
       vote_average AS promedio_votacion,
       overview     AS resumen
FROM movies
WHERE vote_average > 7
  AND ' ' || LOWER(
        REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
            overview, '-', ' '), '''', ' '), '"', ' '), ',', ' '), '.', ' '),
            ';', ' '), ':', ' '), '!', ' '), '?', ' ')
      ) || ' ' LIKE '% god %'
ORDER BY vote_average DESC;
