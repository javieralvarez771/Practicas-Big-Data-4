-- Práctica 1 - Ejercicio 1
-- Crear la tabla ParaiZooHuesped para registrar los animales que llegan a ParaiZoo.
--
-- Decisiones:
--   * Se añade un identificador (id) como clave primaria, ya que dos animales
--     podrían tener el mismo nombre.
--   * Las fechas se guardan con tipo DATE en formato 'AAAA-MM-DD'.
--   * Los pesos se guardan siempre en kilos (los gramos se convierten: 250 g = 0.25 kg).
--   * fecha_nacimiento admite NULL porque a veces no se puede determinar la edad.
--   * sexo y especie se limitan con CHECK a los valores indicados en el enunciado.

CREATE TABLE ParaiZooHuesped (
    id                  INTEGER      PRIMARY KEY,
    animal              VARCHAR(50)  NOT NULL,  -- tipo de animal: caballo, conejo, ...
    nombre              VARCHAR(50)  NOT NULL,
    sexo                VARCHAR(6)   NOT NULL CHECK (sexo IN ('Macho', 'Hembra')),
    fecha_nacimiento    DATE,                   -- NULL si se desconoce
    especie             VARCHAR(10)  NOT NULL CHECK (especie IN ('Carnívoro', 'Herbívoro')),
    fecha_incorporacion DATE         NOT NULL,
    comida_diaria_kg    DECIMAL(5,2) NOT NULL,  -- kilos de comida al día
    jaula               INTEGER      NOT NULL,
    peso_llegada_kg     DECIMAL(7,2) NOT NULL   -- peso al llegar a ParaiZoo
);
