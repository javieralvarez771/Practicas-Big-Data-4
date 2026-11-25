-- Práctica 1 - Ejercicio 2
-- Insertar el conejo "Parches" en ParaiZooHuesped (requiere la tabla del ejercicio 1).
--
-- Interpretación de los datos:
--   * Llega el 13.09.2019 y en 7 días (20.09.2019) cumple 2 años,
--     por tanto nació el 20.09.2017.
--   * Ha sido castrado, así que es macho.
--   * 250 gramos de zanahorias al día = 0.25 kg de comida diaria.
--   * El conejo es herbívoro. Pesa 1.5 kg y se le asigna la jaula 24.

INSERT INTO ParaiZooHuesped
    (id, animal, nombre, sexo, fecha_nacimiento, especie,
     fecha_incorporacion, comida_diaria_kg, jaula, peso_llegada_kg)
VALUES
    (1, 'Conejo', 'Parches', 'Macho', '2017-09-20', 'Herbívoro',
     '2019-09-13', 0.25, 24, 1.5);
