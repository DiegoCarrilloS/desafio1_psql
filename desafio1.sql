CREATE DATABASE posts;
\c posts
CREATE TABLE post(
    id SERIAL,
    nombre_de_usuario VARCHAR(25),
    fecha_de_creacion DATE,
    contenido VARCHAR(100),
    descripcion VARCHAR(100)
);
INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES ('Pamela', '2020-09-19', 'alfa', 'ejercitando postgreSQL');
INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES ('Pamela', '2020-09-20', 'beta', 'agregando filas');
INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES ('Carlos', '2020-09-20', 'gamma', 'feliz 18');
ALTER TABLE post  ADD COLUMN titulo VARCHAR(50) DEFAULT '0' NOT NULL;
INSERT INTO post(titulo) VALUES ('psql') WHERE id=1;