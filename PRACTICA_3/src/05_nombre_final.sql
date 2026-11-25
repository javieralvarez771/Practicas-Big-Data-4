-- Práctica 3 - Ejercicio 5 (base: moviebig.db, tabla movies)
-- País de producción, idioma original, título y columna "NombreFinal":
-- el título original si está informado; si no, el título traducido;
-- y si no hay ninguno, el texto 'Sin título'. Orden ascendente por país.
--
-- COALESCE devuelve el primer valor no NULL. Con NULLIF se convierte también
-- el texto vacío ('') en NULL, para tratarlo como "no informado".
-- (Con los datos actuales todos los títulos están informados.)

SELECT production_countries AS pais_produccion,
       original_language    AS idioma_original,
       title                AS titulo,
       COALESCE(NULLIF(original_title, ''),
                NULLIF(title, ''),
                'Sin título') AS NombreFinal
FROM movies
ORDER BY production_countries ASC;
