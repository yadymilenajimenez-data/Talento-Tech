create database holamundo;
show databases;
use holamundo;
CREATE TABLE animales (
	id int,
    tipo varchar(255),
    estado varchar(255),
    PRIMARY KEY(id)
);

-- INSERT INTO animales(tipo, estado) VALUES('MARRANITO','FELIZ');
-- esta linea no sera ejecutada
ALTER TABLE animales MODIFY COLUMN id int auto_increment;

SHOW CREATE TABLE animales;
CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO animales(tipo, estado) VALUES('MARRANITO','FELIZ');
INSERT INTO animales(tipo, estado) VALUES('dragon','FELIZ');
INSERT INTO animales(tipo, estado) VALUES('felipe','triste');
INSERT INTO animales(tipo, estado) VALUES('yady','FELIZ');

-- para selecionar todos los elementos de una tabla
SELECT * FROM animales;

-- para selecionar un elemento de una tabla
SELECT * FROM animales WHERE id = 5;

-- otra manera de buscar
SELECT * FROM animales WHERE estado = 'FELIZ';

-- ponemos otro condicional a la consulta (otra colunma y un valor especifico)
SELECT * FROM animales WHERE estado = 'FELIZ' AND tipo = 'dragon';

-- actualizar tablas se realiza con UPDATE
UPDATE animales SET estado = 'FELIZ' where id = 4;

-- para eliminar tablas
DELETE from animales where estado = 'feliz';

-- Error Code: 1175. You are using safe update mode and you
-- tried to update a table without a WHERE that uses a KEY column. 
-- To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.

DELETE from animales where id = 3;

