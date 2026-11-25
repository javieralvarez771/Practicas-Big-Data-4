-- Ejercicio 1: películas que fueron un fracaso
-- Quito las que tienen 0 en budget o revenue porque es que no tienen el dato

SELECT title, revenue, budget
FROM movies
WHERE status = 'Released'
AND revenue <= budget
AND budget > 0
AND revenue > 0;
