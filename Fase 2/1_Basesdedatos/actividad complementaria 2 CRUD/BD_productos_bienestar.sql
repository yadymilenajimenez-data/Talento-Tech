-- Crear tabla de pacientes
CREATE TABLE pacientes (
    id_pacientes INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(30),
    apellido VARCHAR(30),
    direccion VARCHAR(30),
    fecha_cumpleanos date,
    telefono INTEGER
    CREATE TABLE Pacientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    edad INT,
    genero VARCHAR(10)
);

);

-- Crear tabla de servicios
CREATE TABLE servicios (
    id_servicios INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255),
    descripcion TEXT,
    duracion INTEGER
);

-- Crear tabla de precios
CREATE TABLE precios (
    id_precios INT AUTO_INCREMENT PRIMARY KEY,
    servicio_id INT,
    precio INTEGER,
    FOREIGN KEY (servicio_id) REFERENCES servicios(id)
);


-- intertar datos
INSERT INTO pacientes(nombre, apellido, direccion, fecha_cumpleanos, telefono) VALUES('Nathaly', 'Sanchez', "Bosques del Cielo", "20-julio-2024")


SELECT * FROM pacientes
