-- Práctica 3 - Ejercicio 3 (base: moviebig.db, tabla movies)
-- Películas producidas en Japón estrenadas de noche (entre las 22:00 y las 05:00).
--
-- IMPORTANTE: en esta base release_date solo guarda la fecha ('AAAA-MM-DD'),
-- no la hora. Si se calculara la hora sobre una fecha sin hora, el motor
-- devolvería 00:00 y todas las películas parecerían nocturnas, lo cual es falso.
-- Por eso solo se tienen en cuenta las fechas que incluyen hora
-- ('AAAA-MM-DD HH:MM...', más de 10 caracteres). Con los datos actuales la
-- consulta devuelve 0 filas porque no hay ninguna hora registrada.
--
-- El intervalo cruza la medianoche, así que se usa OR:
-- desde las 22:00 hasta las 23:59, o desde las 00:00 hasta las 05:00 (incluidas).

SELECT id,
       title                     AS titulo,
       popularity                AS popularidad,
       vote_average              AS promedio_votacion,
       SUBSTR(release_date, 1, 10) AS fecha_estreno,
       SUBSTR(release_date, 12, 5) AS hora_estreno,
       production_countries      AS pais_produccion
FROM movies
WHERE production_countries LIKE '%Japan%'
  AND LENGTH(release_date) > 10
  AND (SUBSTR(release_date, 12, 5) >= '22:00'
       OR SUBSTR(release_date, 12, 5) <= '05:00')
ORDER BY release_date;
