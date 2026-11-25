-- Ejercicio 1: tabla para el registro de animales de ParaiZoo
-- Los pesos y la comida se guardan en kilos

CREATE TABLE ParaiZooHuesped (
    id INT PRIMARY KEY,
    animal VARCHAR(50),
    nombre VARCHAR(50),
    sexo VARCHAR(6),
    fecha_nacimiento DATE,
    especie VARCHAR(10),
    fecha_incorporacion DATE,
    comida_kg DECIMAL(5,2),
    jaula INT,
    peso_kg DECIMAL(6,2)
);
