-- Crear la tabla tb_pet para mascotas
CREATE TABLE tb_pet(
    id INT AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(3) NOT NULL,
    name VARCHAR(50) NOT NULL,
    born_year INT NOT NULL,
    color VARCHAR(20) NOT NULL,    
    healthStatus VARCHAR(15) NOT NULL
);

-- Crear la tabla tb_cat para gatos
CREATE TABLE tb_cat(
    id_cat INT AUTO_INCREMENT PRIMARY KEY,
    breed VARCHAR(30) NOT NULL,
    id_pet INT NOT NULL,
    FOREIGN KEY (id_pet) REFERENCES tb_pet(id)
);

-- Crear la tabla tb_dog para perros
CREATE TABLE tb_dog(
    id_dog INT AUTO_INCREMENT PRIMARY KEY,
    breed VARCHAR(30) NOT NULL,
    pedigree BOOLEAN NOT NULL DEFAULT 0,
    id_pet INT NOT NULL,
    FOREIGN KEY (id_pet) REFERENCES tb_pet(id)
);

-- EJERCICIO EN CLASE: practicar haciendo CRUD con Mascotas 
-- 1. 10 registros de mascotas (pensar de antemanon los nombres de 5 perros y 5 gatos): 
-- 2. 5 perros específicos-raza/pedigree/id_pet 
-- 3. 5 gatos específicos-raza/id_pet
-- 4. Investigar cómo visualizar en una sola tabla la información completa de cada perro y cada gato
-- 5. Presentar los resultados compartiendo pantalla (voluntarios)

-- 1. Insertar 10 registros de mascotas (5 perros y 5 gatos)
INSERT INTO tb_pet(code, name, born_year, color, healthStatus) VALUES 
('001', 'Rocky', 2017, 'marrón', 'sano'),
('002', 'Buddy', 2015, 'blanco', 'enfermo'),
('003', 'Max', 2019, 'negro', 'sano'),
('004', 'Daisy', 2018, 'marrón y blanco', 'sano'),
('005', 'Luna', 2016, 'gris', 'enfermo'),
('006', 'Whiskers', 2020, 'gris y blanco', 'sano'),
('007', 'Milo', 2019, 'naranja', 'sano'),
('008', 'Simba', 2018, 'amarillo', 'enfermo'),
('009', 'Tiger', 2021, 'atigrado', 'sano'),
('010', 'Mittens', 2017, 'negro', 'sano');

-- 2. Insertar razas y pedigrees para los perros
INSERT INTO tb_dog(breed, pedigree, id_pet) VALUES 
('Labrador', 1, 1),
('Poodle', 0, 2),
('Bulldog', 1, 3),
('German Shepherd', 0, 4),
('Beagle', 1, 5);

-- 3. Insertar razas para los gatos
INSERT INTO tb_cat(breed, id_pet) VALUES 
('Siamese', 6),
('Maine Coon', 7),
('Persian', 8),
('Sphynx', 9),
('Ragdoll', 10);

-- 4. visualizar en una sola tabla la información completa de cada perro y cada gato
SELECT p.id AS pet_id, p.code AS pet_code, p.name AS pet_name, p.born_year AS pet_born_year, p.color AS pet_color, p.healthStatus AS pet_health_status, 
       'Dog' AS pet_type, d.breed AS dog_breed, d.pedigree AS dog_pedigree
FROM tb_pet AS p
INNER JOIN tb_dog AS d ON p.id = d.id_pet

UNION ALL

SELECT p.id AS pet_id, p.code AS pet_code, p.name AS pet_name, p.born_year AS pet_born_year, p.color AS pet_color, p.healthStatus AS pet_health_status, 
       'Cat' AS pet_type, c.breed AS cat_breed, NULL AS dog_pedigree
FROM tb_pet AS p
INNER JOIN tb_cat AS c ON p.id = c.id_pet;

-- 5. Presentar los resultados compartiendo pantalla (voluntarios) 
-- EN EL WORD ADJUNTO OK

