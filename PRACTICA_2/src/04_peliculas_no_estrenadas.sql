-- Práctica 2 - Ejercicio 4 (base: moviebig.db, tabla movies)
-- Nombre, estado y presupuesto de las películas que no han sido estrenadas.
--
-- La columna status tiene los valores 'Released', 'Post Production' y 'Rumored'.
-- No estrenadas = cualquier estado distinto de 'Released'.
-- (Un presupuesto 0 indica que no se registró el dato.)

SELECT title  AS nombre,
       status AS estado,
       budget AS presupuesto
FROM movies
WHERE status <> 'Released'
ORDER BY status, title;
