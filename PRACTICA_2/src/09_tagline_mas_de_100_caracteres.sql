-- Práctica 2 - Ejercicio 9 (base: moviebig.db, tabla movies)
-- Nombre, longitud del tagline, popularidad y tagline de las películas cuyo
-- tagline tiene más de 100 caracteres.
--
-- En SQLite LENGTH cuenta caracteres (en MySQL el equivalente sería CHAR_LENGTH).
-- "Más de 100" => > 100. Las películas sin tagline (NULL) quedan excluidas.

SELECT title           AS nombre,
       LENGTH(tagline) AS longitud_tagline,
       popularity      AS popularidad,
       tagline
FROM movies
WHERE LENGTH(tagline) > 100
ORDER BY longitud_tagline DESC;
