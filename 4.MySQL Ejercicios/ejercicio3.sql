-- Crear la Base de Datos.
create database ejercicio3
charset utf8mb4
collate utf8mb4_spanish2_ci;

-- Activar la Base de Datos.
use ejercicio3;

-- Crear la tabla 'Asignaturas'.
CREATE TABLE asignaturas (
    idAsignatura INT AUTO_INCREMENT,
    nombreAsignatura VARCHAR(45),
    PRIMARY KEY (idAsignatura)
);

-- Crear la tabla 'Ciclos'.
CREATE TABLE ciclos (
    idCiclo INT AUTO_INCREMENT,
    nombreCiclo VARCHAR(45),
    PRIMARY KEY (idCiclo)
);

-- Crear la tabla 'Pertenencias'.
CREATE TABLE pertenencias (
    idPertenencia INT AUTO_INCREMENT,
    idAsignaturaFK INT,
    idCicloFK INT,
    PRIMARY KEY (idPertenencia),
    FOREIGN KEY (idCicloFK)
        REFERENCES ciclos (idCiclo),
    FOREIGN KEY (idAsignaturaFK)
        REFERENCES asignaturas (idAsignatura)
);
