-- Práctica 2 - Ejercicio 2 (base: moviebig.db, tabla movies)
-- Nombre y fecha de estreno de las películas de la saga "Terminator".
--
-- Se pasa el título a minúsculas con LOWER para encontrar también
-- "TERMINATOR", "terminator", etc., sin depender de la configuración del motor.
-- Se busca solo en el título (otras películas mencionan la palabra en su resumen).

SELECT title        AS nombre,
       release_date AS fecha_estreno
FROM movies
WHERE LOWER(title) LIKE '%terminator%'
ORDER BY release_date;
