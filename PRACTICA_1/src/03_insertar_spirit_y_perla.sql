-- Ejercicio 3: Spirit y Perla
-- 500 gramos de maíz = 0.5 kg. Perla se pone como herbívoro porque come maíz

INSERT INTO ParaiZooHuesped (id, animal, nombre, sexo, fecha_nacimiento, especie, fecha_incorporacion, comida_kg, jaula, peso_kg)
VALUES (2, 'Caballo', 'Spirit', 'Macho', '2009-08-07', 'Herbivoro', '2019-10-02', 3, 15, 230),
       (3, 'Pava', 'Perla', 'Hembra', '2018-09-21', 'Herbivoro', '2019-10-02', 0.5, 23, 42);
