--PARTE 1
--1. Creo la base de datos
CREATE DATABASE posts;
--2. Creo la tabla "post" dentro de la Base de datos
CREATE TABLE post(
id VARCHAR(255), --"VARCHAR(255) suele ser la definición de tipo de dato más común"
nombre_de_usuario VARCHAR(255),
fecha_de_creacion DATE,
contenido VARCHAR(255),
descripcion VARCHAR(255),
PRIMARY KEY (id) --Aquí defino la llave primaria de esta tabla, que en este caso será la columna "id"
posts(# );
--3. Inserto 3 post, 2 para el usuario "Pamela" y uno para "Carlos"
INSERT INTO post (id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES (1, 'Pamela', 2020-11-10, 'Primer post', 'Este es el primer post');
INSERT INTO post (id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES (2, 'Pamela', 2020-11-10, 'Segundo post', 'Este es el segundo post');
INSERT INTO post (id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES (3, 'Carlos', 2020-11-10, 'Tercer post', 'Este es el tercer post');
--4. Modificar (con ALTER) la tabla post, agregando (ADD) la columna título
ALTER TABLE post ADD titulo VARCHAR(255);
--5. Agregar (UPDATE) título a las publicaciones ya ingresadas
UPDATE post SET titulo='Ella es Pamela' WHERE id=1;
UPDATE post SET titulo='Ella es Pamela' WHERE id=2;
UPDATE post SET titulo='El es Carlos' WHERE id=3;
--6. Insertar 2 post para el usuario "Pedro"
INSERT INTO post (id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES (4, 'Pedro', 11-11-2020, 'Cuarto post', 'Este es el cuarto post');
INSERT INTO post (id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES (5, 'Pedro', 11-11-2020, 'Quinto post', 'Este es el quinto post');
--7. Eliminar el post de Carlos
DELETE FROM post WHERE id=3;
--8. Ingresar un nuevo post para el usuario "Carlos"
INSERT INTO post (id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES (6, 'Carlos', 11-11-2020, 'Sexto post', 'Nuevo post de Carlos');

--PARTE 2
--9. Crear una nueva tabla, llamada comentarios, con los atributos id, fecha y hora de creación, contenido, que se relacione con la tabla post
CREATE TABLE comentarios(
id VARCHAR(255),
fecha_de_creacion DATE,
hora_de_creacion VARCHAR(255),
contenido VARCHAR(255),
FOREIGN KEY (contenido) REFERENCES post(id) --Aquí enlazo (relaciono) la tabla "contenido" con la tabla "post", definiendo la columna "id" como la llave foránea
);
--10. Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos"
INSERT INTO comentarios (id, fecha_de_creacion, hora_de_creacion, contenido) VALUES (1, 2020-11-11, '18:34', 'Primer comentario para Pamela');
INSERT INTO comentarios (id, fecha_de_creacion, hora_de_creacion, contenido) VALUES (1, 2020-11-11, '18:47', 'Segundo comentario para Pamela');
INSERT INTO comentarios (id, fecha_de_creacion, hora_de_creacion, contenido) VALUES (6, 2020-11-11, '18:48', 'Primer comentario para Carlos');
INSERT INTO comentarios (id, fecha_de_creacion, hora_de_creacion, contenido) VALUES (6, 2020-11-11, '18:49', 'Segundo comentario para Carlos');
INSERT INTO comentarios (id, fecha_de_creacion, hora_de_creacion, contenido) VALUES (6, 2020-11-11, '18:50', 'Tercer comentario para Carlos');
INSERT INTO comentarios (id, fecha_de_creacion, hora_de_creacion, contenido) VALUES (6, 2020-11-11, '18:51', 'Cuarto comentario para Carlos');
--11. Crear un nuevo post para "Margarita"
INSERT INTO post (id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES (7, 'Margarita', 11-11-2020, 'Séptimo post', 'Post de Margarita');
--12. Ingresar 5 comentarios para el post de "Margarita"
INSERT INTO comentarios (id, fecha_de_creacion, hora_de_creacion, contenido) VALUES (7, 2020-11-11, '18:52', 'Primer comentario para Margarita');
INSERT INTO comentarios (id, fecha_de_creacion, hora_de_creacion, contenido) VALUES (7, 2020-11-11, '18:53', 'Segundo comentario para Margarita');
INSERT INTO comentarios (id, fecha_de_creacion, hora_de_creacion, contenido) VALUES (7, 2020-11-11, '18:54', 'Tercer comentario para Margarita');
INSERT INTO comentarios (id, fecha_de_creacion, hora_de_creacion, contenido) VALUES (7, 2020-11-11, '18:55', 'Cuarto comentario para Margarita');
INSERT INTO comentarios (id, fecha_de_creacion, hora_de_creacion, contenido) VALUES (7, 2020-11-11, '18:56', 'Quinto comentario para Margarita');