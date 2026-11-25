-- Ejercicio 6: películas de España o de compañías españolas
-- El país está en inglés (Spain) y en las compañías la ñ aparece como \u00f1

SELECT title, production_countries, original_language, homepage, vote_average
FROM movies
WHERE production_countries LIKE '%Spain%'
OR production_companies LIKE '%Espa\u00f1a%';
