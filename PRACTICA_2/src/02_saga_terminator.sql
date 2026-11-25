-- Ejercicio 2: saga Terminator
-- Uso LOWER para que salgan también si está en mayúsculas

SELECT title, release_date
FROM movies
WHERE LOWER(title) LIKE '%terminator%';
