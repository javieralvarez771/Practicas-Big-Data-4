-- Práctica 1 - Ejercicio 3
-- Insertar el caballo "Spirit" y la pava "Perla" en ParaiZooHuesped
-- (requiere la tabla del ejercicio 1).
--
-- Interpretación de los datos:
--   * Ambos llegan el 02.10.2019.
--   * Spirit es un caballo (macho) y Perla una pava (hembra).
--   * Spirit: 3 kg de heno al día. Perla: 500 g de maíz = 0.5 kg al día.
--   * La tabla solo permite carnívoro/herbívoro; ambos se registran como
--     herbívoros porque su dieta asignada es vegetal (heno y maíz).

INSERT INTO ParaiZooHuesped
    (id, animal, nombre, sexo, fecha_nacimiento, especie,
     fecha_incorporacion, comida_diaria_kg, jaula, peso_llegada_kg)
VALUES
    (2, 'Caballo', 'Spirit', 'Macho',  '2009-08-07', 'Herbívoro',
     '2019-10-02', 3.0, 15, 230),
    (3, 'Pava',    'Perla',  'Hembra', '2018-09-21', 'Herbívoro',
     '2019-10-02', 0.5, 23, 42);
