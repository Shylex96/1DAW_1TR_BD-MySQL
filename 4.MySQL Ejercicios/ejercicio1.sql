-- Crear la Base de Datos.
create database ejercicio1
charset utf8mb4
collate utf8mb4_spanish2_ci;
-- Activar la nueva Base de Datos.
use ejercicio1;
-- Crear la Tabla 'Ciudades'.
CREATE TABLE ciudades (
    idCiudad INT AUTO_INCREMENT,
    nombreCiudad VARCHAR(45),
    PRIMARY KEY (idCiudad)
);
-- Crear la Tabla 'Monumentos'.
CREATE TABLE monumentos (
    idMonumento INT AUTO_INCREMENT,
    nombreMonumento VARCHAR(45),
    fechaConstruccionMonumento DATE,
    idCiudadFK INT,
    PRIMARY KEY (idMonumento),
    FOREIGN KEY (idCiudadFK)
        REFERENCES ciudades (idCiudad)
);

