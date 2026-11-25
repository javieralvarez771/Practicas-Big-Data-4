-- Práctica 1 - Ejercicio 4
-- Insertar la tigresa "Fresa" en ParaiZooHuesped (requiere la tabla del ejercicio 1).
--
-- Interpretación de los datos:
--   * Es una tigresa: animal 'Tigre' y sexo 'Hembra'.
--   * No se pudo determinar su edad, por lo que la fecha de nacimiento es NULL.
--   * Llega el 20.11.2019, pesa 42 kg, come 4 kg de carne al día (carnívora)
--     y se le asigna la jaula 31.

INSERT INTO ParaiZooHuesped
    (id, animal, nombre, sexo, fecha_nacimiento, especie,
     fecha_incorporacion, comida_diaria_kg, jaula, peso_llegada_kg)
VALUES
    (4, 'Tigre', 'Fresa', 'Hembra', NULL, 'Carnívoro',
     '2019-11-20', 4.0, 31, 42);
