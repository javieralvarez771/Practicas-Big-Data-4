-- Práctica 1 - Ejercicio 5
-- Insertar el cocodrilo "Nilo" en ParaiZooHuesped (requiere la tabla del ejercicio 1).
--
-- Interpretación de los datos:
--   * Llega el 12.12.2019. Es macho y pesa "unos 44 kg" (se guarda 44).
--   * No se pudo determinar su edad: fecha de nacimiento NULL.
--   * Come 5 kg de carne al día (carnívoro) y se le asigna la jaula 47.

INSERT INTO ParaiZooHuesped
    (id, animal, nombre, sexo, fecha_nacimiento, especie,
     fecha_incorporacion, comida_diaria_kg, jaula, peso_llegada_kg)
VALUES
    (5, 'Cocodrilo', 'Nilo', 'Macho', NULL, 'Carnívoro',
     '2019-12-12', 5.0, 47, 44);
