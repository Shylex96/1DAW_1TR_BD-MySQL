-- Crear la Base de Datos.
create database ejercicio2
charset utf8mb4
collate utf8mb4_spanish2_ci;

-- Activar la Base de Datos.
use ejercicio2;

-- Crear la tabla 'Continentes'.
CREATE TABLE continentes (
    idContinente INT AUTO_INCREMENT,
    nombreContinente VARCHAR(45),
    PRIMARY KEY (idContinente)
);

-- Crear la tabla 'Paises'.
CREATE TABLE paises (
    idPais INT AUTO_INCREMENT,
    nombrePais VARCHAR(45),
    idContinenteFK int,
    PRIMARY KEY (idPais),
    FOREIGN KEY (idContinenteFK)
        REFERENCES continentes (idContinente)
);

-- Crear la tabla 'Ciudades'.
CREATE TABLE ciudades (
    idCiudad INT AUTO_INCREMENT,
    nombreCiudad VARCHAR(45),
    esCapital BIT(1),
    PRIMARY KEY (idCiudad)
);