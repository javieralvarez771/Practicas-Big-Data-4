-- Práctica 2 - Ejercicio 1 (base: moviebig.db, tabla movies)
-- Películas consideradas un fracaso: lanzadas (status = 'Released') y cuyos
-- beneficios (revenue) no superan el presupuesto (budget).
--
-- Interpretación:
--   * "No llegaron a ser superiores" => revenue <= budget (se incluye el empate).
--   * En esta tabla un 0 en budget o revenue significa dato no registrado,
--     así que se excluyen esas películas para no contar como fracaso
--     una película de la que no se conocen las cifras.

SELECT title   AS nombre,
       revenue AS beneficios,
       budget  AS presupuesto
FROM movies
WHERE status = 'Released'
  AND budget > 0
  AND revenue > 0
  AND revenue <= budget
ORDER BY title;
