-- Ejercicio 4: películas no estrenadas (status distinto de Released)

SELECT title, status, budget
FROM movies
WHERE status <> 'Released';
