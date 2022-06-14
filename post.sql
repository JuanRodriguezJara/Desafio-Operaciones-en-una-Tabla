--! DESAFIO PARTE 1

-- Creación de  base de datos
CREATE DATABASE posts;

-- Cambio a base de Datos "post".
\c post

--Creación de tabla y atribustos.
CREATE TABLE post (
    id INT PRIMARY KEY,
    nombre VARCHAR(25),
    fecha_creacion DATE,
    contenido VARCHAR(200),
    descripcion VARCHAR(50)
);

--Definimos tabla para insertar datos
--* Primer Post Pamela
INSERT INTO post
-- Columnos a insertar
(id, nombre, fecha_creacion, contenido, descripcion)
-- Valores a insertar asociados a las columnas
VALUES ( '1', 'Pamela', '25/04/2022', 'Primer post en mi primera base de datos', 'post 1');

--* Segundo Post Pamela
INSERT INTO post
-- Columnos a insertar
(id, nombre, fecha_creacion, contenido, descripcion)
-- Valores a insertar asociados a las columnas
VALUES ( '2', 'Pamela', '25/04/2022', 'Segundo post', 'post 2');

--* primer Post Carlos
INSERT INTO post
-- Columnos a insertar
(id, nombre, fecha_creacion, contenido, descripcion)
-- Valores a insertar asociados a las columnas
VALUES ( '3', 'Carlos', '25/04/2022', 'Primer post de Carlos', 'post 1');

--* Añadir Columna Título
ALTER TABLE post
ADD titulo VARCHAR(25);

--* Agregamos titulo a los post existentes.
UPDATE post
SET titulo = 'Presentandome'
WHERE id = '1';

UPDATE post
SET titulo = 'Aqui otra vez'
WHERE id = '2';

UPDATE post
SET titulo = 'Primero'
WHERE id = '3';


--* primer Post Pedro
INSERT INTO post
-- Columnos a insertar
(id, nombre, fecha_creacion, contenido, descripcion, titulo)
-- Valores a insertar asociados a las columnas
VALUES ( '4', 'Pedro', '25/04/2022', 'Agregando post a la tabla y sumando.', 'primer posteo Pedro', 'Sumando');

--* segundo Post Pedro
INSERT INTO post
-- Columnos a insertar
(id, nombre, fecha_creacion, contenido, descripcion, titulo)
-- Valores a insertar asociados a las columnas
VALUES ( '5', 'Pedro', '25/04/2022', 'Agregando post a la tabla y sumando.', 'segundo posteo Pedro', 'Seguimos');

--* Eliminar post de Carlos.
DELETE FROM post WHERE nombre = 'Carlos';

--* Nuevo Post de Carlos
INSERT INTO post
-- Columnos a insertar
(id, nombre, fecha_creacion, contenido, descripcion, titulo)

-- Valores a insertar asociados a las columnas
VALUES ( '6', 'Carlos', '25/04/2022', 'Nuevo post para esta hora', 'Nuevo post de Carlos', 'Volviendo');

-- !-----------------------------------------------------------------------------------------


--! DESAFIO PARTE 2

--* Creación de tabla "comentarios" y sus atribustos.
CREATE TABLE comentario (
    id_comentario SERIAL PRIMARY KEY,
    id INT,
    fecha DATE,
    hora_creacion TIME,
    contenido VARCHAR(200),
    FOREIGN KEY (id) REFERENCES post(id)
);

--* Primer Comentario a post 1 de Pamela.
INSERT INTO comentario
-- Columnos a insertar
(id, fecha, hora_creacion, contenido)
-- Valores a insertar asociados a las columnas
VALUES ( '1', '26/04/2022', '20:31', 'Bienvenida a la conversación...');

--* Segundo Comentario a post 1 de Pamela.
INSERT INTO comentario
-- Columnos a insertar
(id, fecha, hora_creacion, contenido)
-- Valores a insertar asociados a las columnas
VALUES ( '1', '26/04/2022', '20:46', 'Hola Pamela ¿de donde eres?');


--* Primer Comentario a post 1 de Carlos.
INSERT INTO comentario
-- Columnos a insertar
(id, fecha, hora_creacion, contenido)
-- Valores a insertar asociados a las columnas
VALUES ( '6', '26/04/2022', '20:15', 'Carlos ¿Porque eliminaste tu posteo?');

--* Segundo Comentario a post 1 de Carlos.
INSERT INTO comentario
-- Columnos a insertar
(id, fecha, hora_creacion, contenido)
-- Valores a insertar asociados a las columnas
VALUES ( '6', '26/04/2022', '20:21', 'Yo te conozco, estas a puros unos en el bootcamp');

--* Tercer Comentario a post 1 de Carlos.
INSERT INTO comentario
-- Columnos a insertar
(id, fecha, hora_creacion, contenido)
-- Valores a insertar asociados a las columnas
VALUES ( '6', '29/04/2022', '19:25', 'Otra vez por acá... ¿Cuando una partida on-line?');

--* Cuarto Comentario a post 1 de Carlos.
INSERT INTO comentario
-- Columnos a insertar
(id, fecha, hora_creacion, contenido)
-- Valores a insertar asociados a las columnas
VALUES ( '6', '30/04/2022', '1:23', 'Duermete temprano compañero!!!');

--* Nuevo Post de Margarita
INSERT INTO post
-- Columnos a insertar
(id, nombre, fecha_creacion, contenido, descripcion, titulo)
-- Valores a insertar asociados a las columnas
VALUES ( '7', 'Margarita', '26/04/2022', 'Sumandome para compartir conocimiento', 'Javascript', 'Aprendiendo y Enseñando');

--* Primer Comentario a post de Margarita.
INSERT INTO comentario
-- Columnos a insertar
(id, fecha, hora_creacion, contenido)
-- Valores a insertar asociados a las columnas
VALUES ( '7', '30/04/2022', '17:23', 'Hola, me puedes enseñar :)');

--* Segundo Comentario a post de Margarita.
INSERT INTO comentario
-- Columnos a insertar
(id, fecha, hora_creacion, contenido)
-- Valores a insertar asociados a las columnas
VALUES ( '7', '30/04/2022', '18:23', 'Hola, manejas node.js... necesito alguien que lo domine');

--* Tercer Comentario a post de Margarita.
INSERT INTO comentario
-- Columnos a insertar
(id, fecha, hora_creacion, contenido)
-- Valores a insertar asociados a las columnas
VALUES ( '7', '30/04/2022', '18:26', 'Margarita, como estas?... Agregame a mi Whatsup 999888555');

--* Cuarto Comentario a post de Margarita.
INSERT INTO comentario
-- Columnos a insertar
(id, fecha, hora_creacion, contenido)
-- Valores a insertar asociados a las columnas
VALUES ( '7', '30/04/2022', '18:32', 'Vamos por una pizza y cervezas... yo invito');

--* Quinto Comentario a post de Margarita.
INSERT INTO comentario
-- Columnos a insertar
(id, fecha, hora_creacion, contenido)
-- Valores a insertar asociados a las columnas
VALUES ( '7', '30/04/2022', '20:15', 'Necesito entender las promesas y los callbacks... ¿das clases particulares?');