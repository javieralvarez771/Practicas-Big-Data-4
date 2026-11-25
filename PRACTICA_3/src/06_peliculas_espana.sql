-- Práctica 3 - Ejercicio 6 (base: moviebig.db, tabla movies)
-- Películas producidas en España o por compañías relacionadas con España.
--
-- Cómo están guardados los datos (comprobado en la base):
--   * Los países están en inglés: España aparece como "Spain".
--   * En las compañías la "ñ" está escrita como secuencia JSON ñ, por ejemplo
--     "Canal+ España". Buscar '%España%' no encuentra nada.
--   * Se busca 'Españ' para incluir "España" y también "Española"
--     (Televisión Española). En SQLite la barra \ no es especial dentro de LIKE.
-- La página web (homepage) es NULL cuando no está registrada.

SELECT title                AS titulo,
       production_countries AS pais_produccion,
       original_language    AS idioma_original,
       homepage             AS pagina_web,
       vote_average         AS promedio_votacion
FROM movies
WHERE production_countries LIKE '%Spain%'
   OR production_companies LIKE '%Españ%'
ORDER BY title;
