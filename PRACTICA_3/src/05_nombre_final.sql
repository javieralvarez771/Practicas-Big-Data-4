-- Ejercicio 5: columna NombreFinal con COALESCE
-- Coge el título original, si es NULL el título y si no 'Sin título'

SELECT production_countries, original_language, title,
COALESCE(original_title, title, 'Sin título') AS NombreFinal
FROM movies
ORDER BY production_countries ASC;
