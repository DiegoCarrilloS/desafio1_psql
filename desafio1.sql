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
ALTER TABLE post  ADD COLUMN titulo VARCHAR(50);
UPDATE post SET titulo = 'aprendiendo sql' WHERE id=1;
UPDATE post SET titulo = 'agregando data con comando update' WHERE id=2;
UPDATE post SET titulo = 'celebrando 18 sin parada militar ni rodeo' WHERE id=3;
INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES ('Pedro', '2020-09-20', 'epsilon', 'blablabla', 'mas blablabla');
INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES ('Pedro', '2020-09-20', 'theta', 'quiero pedalear', 'andar en bici');
DELETE FROM post WHERE contenido = 'gamma';
INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES ('Carlos', '2020-09-20', 'letra_griega', 'carlos volvio', 'resucito carlos');

CREATE TABLE comentarios(
    id SERIAL,
    fecha_y_hora_de_creacion TIMESTAMP,
    contenido VARCHAR(100)
);
ALTER TABLE post ADD PRIMARY KEY (id);
ALTER TABLE comentarios ADD FOREIGN KEY(id) REFERENCES post(id);
INSERT INTO comentarios(id, fecha_y_hora_de_creacion, contenido) VALUES (1, '2020-09-20 19:10:25', 'daledale');
INSERT INTO comentarios(id, fecha_y_hora_de_creacion, contenido) VALUES (2, '2020-09-20 19:10:25', 'daledaledale');
INSERT INTO comentarios(id, fecha_y_hora_de_creacion, contenido) VALUES (10, '2020-09-20 19:10:25', 'numero1');
INSERT INTO comentarios(id, fecha_y_hora_de_creacion, contenido) VALUES (10, '2020-09-20 19:10:25', 'numero2');
INSERT INTO comentarios(id, fecha_y_hora_de_creacion, contenido) VALUES (10, '2020-09-20 19:10:25', 'numero3');
INSERT INTO comentarios(id, fecha_y_hora_de_creacion, contenido) VALUES (10, '2020-09-20 19:10:25', 'numero4');
INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES ('Margarita', '2020-09-20', 'letra_ejipcia', 'marga', 'la margara');
INSERT INTO comentarios(id, fecha_y_hora_de_creacion, contenido) VALUES (11, '2020-09-20 19:10:25', 'lamarga1');
INSERT INTO comentarios(id, fecha_y_hora_de_creacion, contenido) VALUES (11, '2020-09-20 19:10:25', 'lamarga2');
INSERT INTO comentarios(id, fecha_y_hora_de_creacion, contenido) VALUES (11, '2020-09-20 19:10:25', 'lamarga3');
INSERT INTO comentarios(id, fecha_y_hora_de_creacion, contenido) VALUES (11, '2020-09-20 19:10:25', 'lamarga4');
INSERT INTO comentarios(id, fecha_y_hora_de_creacion, contenido) VALUES (11, '2020-09-20 19:10:25', 'lamarga5');