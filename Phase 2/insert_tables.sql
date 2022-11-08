-- Inserciones minimas para un AÑO --
-- Insert values into tables

-- Insertar universidades
INSERT INTO universidad -- 1
(nombre, fecha_creacion, acronimo,descripcion)
VALUES(
    'Universidad Central de Venezuela',
    '22/12/1721',
    'UCV',
    'Descripcion'
);
INSERT INTO universidad -- 2
(nombre, fecha_creacion, acronimo,descripcion)
VALUES(
    'Universidad Simon Bolivar',
    '22/12/1721',
    'USB',
    'Descripcion'
);
INSERT INTO universidad -- 3
(nombre, fecha_creacion, acronimo,descripcion)
VALUES(
    'Universidad Catolica Andres Bello',
    '22/12/1721',
    'UCAB',
    'Descripcion'
);

-- Insertar usuarios
INSERT INTO usuario -- 1
(correo, nombre, apellido, telefono, direccion, contrasena, type_user)
VALUES(
    'silvio@silvio.com',
    'silvio',
    'pestana',
    '+58123456789',
    'caracas, venezuela',
    'contra1',
    'expositor'
);
INSERT INTO usuario -- 2
(correo, nombre, apellido, telefono, direccion, contrasena, type_user)
VALUES(
    'justin@justin.com',
    'justin',
    'quiles',
    '+58987645321',
    'caracas, venezuela',
    'contra2',
    'expositor'
);
INSERT INTO usuario -- 3
(correo, nombre, apellido, telefono, direccion, contrasena, type_user)
VALUES(
    'cesar@cesar.com',
    'cesar',
    'apellido',
    '+584241712124',
    'caracas, venezuela',
    'contra3',
    'participante'
);
INSERT INTO usuario -- 4
(correo, nombre, apellido, telefono, direccion, contrasena, type_user)
VALUES(
    'edwin@edwin.com',
    'edwin',
    'quiles',
    '+58987645321',
    'caracas, venezuela',
    'contra4',
    'participante'
);

-- Insertar areas de conocimiento
INSERT INTO area_conocimiento -- 1
(nombre)
VALUES(
    'Tecnologia'
);
INSERT INTO area_conocimiento -- 2
(nombre)
VALUES(
    'Ecologia'
);
INSERT INTO area_conocimiento -- 3
(nombre)
VALUES(
    'Arte'
);
INSERT INTO area_conocimiento -- 4
(nombre)
VALUES(
    'Criptomoneda'
);
INSERT INTO area_conocimiento -- 5
(nombre)
VALUES(
    'Educacion'
);
INSERT INTO area_conocimiento -- 6
(nombre)
VALUES(
    'Musica'
);

INSERT INTO area_conocimiento -- 7
(nombre)
VALUES(
    'Derecho'
);
INSERT INTO area_conocimiento -- 8
(nombre)
VALUES(
    'Filosofia'
);
INSERT INTO area_conocimiento -- 9
(nombre)
VALUES(
    'Comunicacion'
);
INSERT INTO area_conocimiento -- 10
(nombre)
VALUES(
    'Salud'
);

-- Insertar eventos
-- Eventos validos
INSERT INTO evento -- 1
(nombre, fecha_inicio, fecha_fin, id_area)
VALUES(
    'Evento tecnologico 2019',
    '10/01/2019',
    '15/01/2019',
    1
);
INSERT INTO evento -- 2
(nombre, fecha_inicio, fecha_fin, id_area)
VALUES(
    'Evento tecnologico 2021',
    '10/02/2021',
    '15/02/2021',
    1
);
INSERT INTO evento -- 3
(nombre, fecha_inicio, fecha_fin, id_area)
VALUES(
    'Evento Filosofia 2019',
    '10/03/2019',
    '15/03/2019',
    8
);
INSERT INTO evento -- 4
(nombre, fecha_inicio, fecha_fin, id_area)
VALUES(
    'Evento Filosofia 2020',
    '10/03/2020',
    '15/03/2020',
    8
);
INSERT INTO evento -- 5
(nombre, fecha_inicio, fecha_fin, id_area)
VALUES(
    'Evento Filosofia 2021',
    '10/03/2021',
    '15/03/2021',
    8
);
INSERT INTO evento -- 6
(nombre, fecha_inicio, fecha_fin, id_area)
VALUES(
    'Evento Arte 2019',
    '10/03/2019',
    '15/03/2019',
    3
);
INSERT INTO evento -- 7
(nombre, fecha_inicio, fecha_fin, id_area)
VALUES(
    'Evento Arte 2021',
    '10/03/2021',
    '15/03/2021',
    3
);
INSERT INTO evento -- 8
(nombre, fecha_inicio, fecha_fin, id_area)
VALUES(
    'Evento Musica 2020',
    '10/03/2020',
    '15/03/2020',
    6
);
INSERT INTO evento -- 9
(nombre, fecha_inicio, fecha_fin, id_area)
VALUES(
    'Evento Ecologia 2020',
    '10/03/2020',
    '15/03/2020',
    2
);

-- Insertar empresas
-- Empresas validas
INSERT INTO empresa -- 1
(nombre, direccion, telefono, tipo)
VALUES(
    'CocaCola',
    'Direccion 1',
    '+58CocaCola',
    'privada'
);
INSERT INTO empresa -- 2
(nombre, direccion, telefono, tipo)
VALUES(
    'Digimart',
    'Direccion 2',
    '+58DigiMart',
    'privada'
);
INSERT INTO empresa -- 3
(nombre, direccion, telefono, tipo)
VALUES(
    'Capcom',
    'Direccion 3',
    '+58Capcom',
    'privada'
);
INSERT INTO empresa -- 4
(nombre, direccion, telefono, tipo)
VALUES(
    'Global museum',
    'Direccion 4',
    '+58GlobalMuseum',
    'publica'
);
INSERT INTO empresa -- 5
(nombre, direccion, telefono, tipo)
VALUES(
    'FundaVen',
    'Direccion 5',
    '+58FundaVen',
    'publica'
);

-- Relaciones --

-- Universidad / Usuario
INSERT INTO rel_univ_usuario
(id_univ, id_usuario, fecha_ingreso)
VALUES(
    1, -- UCV
    1, -- Silvio
    '01/01/2017'
);
INSERT INTO rel_univ_usuario
(id_univ, id_usuario, fecha_ingreso)
VALUES(
    2, -- USB
    2, -- Justin
    '01/01/2018'
);
INSERT INTO rel_univ_usuario
(id_univ, id_usuario, fecha_ingreso)
VALUES(
    1, -- UCV
    3, -- Cesar
    '01/01/2020'
);
INSERT INTO rel_univ_usuario
(id_univ, id_usuario, fecha_ingreso)
VALUES(
    3, -- UCAB
    4, -- Edwin
    '01/01/2017'
);

-- Evento / Univ
INSERT INTO rel_evento_univ 
(id_univ, id_evento)
VALUES(
    1, -- UCV
    1 -- Evento de tecnologia 2019
);
INSERT INTO rel_evento_univ 
(id_univ, id_evento)
VALUES(
    2, -- USB
    2 -- Evento de tecnologia 2021
);
INSERT INTO rel_evento_univ 
(id_univ, id_evento)
VALUES(
    1, -- UCV
    3 -- Evento Filosofia 2019
);
INSERT INTO rel_evento_univ 
(id_univ, id_evento)
VALUES(
    2, -- USB
    4 -- Evento Filosofia 2020
);
INSERT INTO rel_evento_univ 
(id_univ, id_evento)
VALUES(
    3, -- UCAB
    5 -- Evento Filosofia 2021
);
INSERT INTO rel_evento_univ 
(id_univ, id_evento)
VALUES(
    1, -- UCV
    6 -- Evento Arte 2019
);
INSERT INTO rel_evento_univ 
(id_univ, id_evento)
VALUES(
    1, -- UCV
    7 -- Evento Arte 2021
);
INSERT INTO rel_evento_univ 
(id_univ, id_evento)
VALUES(
    2, -- USB
    8 -- Evento Musica 2020
);
INSERT INTO rel_evento_univ 
(id_univ, id_evento)
VALUES(
    3, -- UCAB
    9 -- Evento Ecologia 2020
);

-- Evento / Empresa
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    1, -- CocaCola
    1, -- Evento de Tecnologia 2019
    5000,
    '05/01/2019'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    2, -- Digimart
    1, -- Evento de Tecnologia 2019
    2500,
    '06/01/2019'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    3, -- Capcom
    1, -- Evento de Tecnologia 2019
    1234,
    '05/01/2019'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    4, -- Global museum
    1, -- Evento de Tecnologia 2019
    500,
    '03/01/2019'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    5, -- FundaVen
    1, -- Evento de Tecnologia 2019
    800,
    '04/01/2019'
);

--
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    1, -- CocaCola
    2, -- Evento de Tecnologia 2021
    5000,
    '04/01/2021'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    2, -- Digimart
    2, -- Evento de Tecnologia 2021
    5000,
    '04/02/2021'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    3, -- Capcom
    2, -- Evento de Tecnologia 2021
    5000,
    '20/01/2021'
);

--
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    1, -- CocaCola
    3, -- Evento Filosofia 2019
    2800,
    '05/02/2019'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    4, -- Global museum
    3, -- Evento Filosofia 2019
    500,
    '03/02/2019'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    5, -- FundaVen
    3, -- Evento Filosofia 2019
    800,
    '04/02/2019'
);

--
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    1, -- CocaCola
    4, -- Evento Filosofia 2020
    2000,
    '05/02/2020'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    2, -- Digimart
    4, -- Evento Filosofia 2020
    1500,
    '06/02/2020'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    3, -- Capcom
    4, -- Evento Filosofia 2020
    1234,
    '05/02/2020'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    4, -- Global museum
    4, -- Evento Filosofia 2020
    500,
    '03/02/2020'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    5, -- FundaVen
    4, -- Evento Filosofia 2020
    800,
    '04/02/2020'
);

--
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    1, -- CocaCola
    5, -- Evento Filosofia 2021
    1500,
    '05/02/2020'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    2, -- Digimart
    5, -- Evento Filosofia 2021
    1500,
    '06/02/2020'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    3, -- Capcom
    5, -- Evento Filosofia 2021
    1234,
    '05/02/2020'
);

--
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    1, -- CocaCola
    6, -- Evento Arte 2019
    900,
    '05/02/2019'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    2, -- Digimart
    6, -- Evento Arte 2019
    700,
    '06/01/2019'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    3, -- Capcom
    6, -- Evento Arte 2019
    1234,
    '05/01/2019'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    4, -- Global museum
    6, -- Evento Arte 2019
    500,
    '03/02/2019'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    5, -- FundaVen
    6, -- Evento Arte 2019
    800,
    '04/02/2019'
);

--
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    1, -- CocaCola
    7, -- Evento Arte 2021
    900,
    '05/02/2021'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    2, -- Digimart
    7, -- Evento Arte 2021
    700,
    '06/01/2021'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    3, -- Capcom
    7, -- Evento Arte 2021
    1234,
    '05/01/2021'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    4, -- Global museum
    7, -- Evento Arte 2021
    500,
    '03/02/2021'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    5, -- FundaVen
    7, -- Evento Arte 2021
    800,
    '04/02/2021'
);

--
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    4, -- Global museum
    8, -- Evento Musica 2020
    500,
    '03/02/2020'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    5, -- FundaVen
    8, -- Evento Musica 2020
    800,
    '04/02/2020'
);

--
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    3, -- Capcom
    9, -- Evento Ecologia 2020
    569,
    '05/01/2020'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    4, -- Global museum
    9, -- Evento Ecologia 2020
    500,
    '03/02/2020'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    5, -- FundaVen
    9, -- Evento Ecologia 2020
    800,
    '04/02/2020'
);

-- Evento / Usuario -> Participante
-- Participantes validos
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    3, -- Cesar
    1 -- Evento tecnologico 2019
);
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    4, -- Edwin
    1 -- Evento tecnologico 2019
);

--
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    3, -- Cesar
    2 -- Evento tecnologico 2021
);
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    4, -- Edwin
    2 -- Evento tecnologico 2021
);

--
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    3, -- Cesar
    3 -- Evento Filosofia 2019
);
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    4, -- Edwin
    3 -- Evento Filosofia 2019
);

--
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    4, -- Edwin
    4 -- Evento Filosofia 2020
);

--
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    3, -- Cesar
    5 -- Evento Filosofia 2021
);
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    4, -- Edwin
    5 -- Evento Filosofia 2021
);

--
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    3, -- Cesar
    6 -- Evento Arte 2019
);

--
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    3, -- Cesar
    7 -- Evento tecnologico 2021
);

--
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    3, -- Cesar
    8 -- Evento Musica 2020
);
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    4, -- Edwin
    8 -- Evento Musica 2020
);

--
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    3, -- Cesar
    9 -- Evento Ecologia 2020
);
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    4, -- Edwin
    9 -- Evento Ecologia 2020
);

-- Evento / Usuario -> Usuario Expositor -> dicta
-- Expositor valido
INSERT INTO dicta 
(id_usuario, id_evento, nombre_charla, valoracion)
VALUES(
    1, -- Silvio
    1, -- Evento tecnologico 2019
    'Charla tecnologia 2019',
    5
);
INSERT INTO dicta 
(id_usuario, id_evento, nombre_charla, valoracion)
VALUES(
    2, -- Justin
    1, -- Evento tecnologico 2019
    'Charla tecnologia 2019 (2)',
    5
);

--
INSERT INTO dicta 
(id_usuario, id_evento, nombre_charla, valoracion)
VALUES(
    1, -- Silvio
    2, -- Evento tecnologico 2021
    'Charla tecnologia 2021',
    5
);
INSERT INTO dicta 
(id_usuario, id_evento, nombre_charla, valoracion)
VALUES(
    2, -- Justin
    2, -- Evento tecnologico 2021
    'Charla tecnologia 2021 (2)',
    3
);

--
INSERT INTO dicta 
(id_usuario, id_evento, nombre_charla, valoracion)
VALUES(
    1, -- Silvio
    3, -- Evento Filosofia 2019
    'Charla Filosofia 2019',
    2
);
INSERT INTO dicta 
(id_usuario, id_evento, nombre_charla, valoracion)
VALUES(
    2, -- Justin
    3, -- Evento Filosofia 2019
    'Charla Filosofia 2019 (2)',
    4
);

--
INSERT INTO dicta 
(id_usuario, id_evento, nombre_charla, valoracion)
VALUES(
    1, -- Silvio
    4, -- Evento Filosofia 2020
    'Charla Filosofia 2020',
    4
);

--
INSERT INTO dicta 
(id_usuario, id_evento, nombre_charla, valoracion)
VALUES(
    1, -- Silvio
    5, -- Evento Filosofia 2021
    'Charla Filosofia 2021',
    3
);

--
INSERT INTO dicta 
(id_usuario, id_evento, nombre_charla, valoracion)
VALUES(
    1, -- Silvio
    6, -- Evento Arte 2019
    'Charla Arte 2019',
    4
);
INSERT INTO dicta 
(id_usuario, id_evento, nombre_charla, valoracion)
VALUES(
    2, -- Justin
    6, -- Evento Arte 2019
    'Charla Arte 2019 (2)',
    3
);

--
INSERT INTO dicta 
(id_usuario, id_evento, nombre_charla, valoracion)
VALUES(
    2, -- Justin
    7, -- Evento Arte 2021
    'Charla Arte 2021 (2)',
    3
);

--
INSERT INTO dicta 
(id_usuario, id_evento, nombre_charla, valoracion)
VALUES(
    1, -- Silvio
    8, -- Evento Musica 2020
    'Charla Musica 2020',
    4
);
INSERT INTO dicta 
(id_usuario, id_evento, nombre_charla, valoracion)
VALUES(
    2, -- Justin
    8, -- Evento Musica 2020
    'Charla Musica 2020 (2)',
    5
);

--
INSERT INTO dicta 
(id_usuario, id_evento, nombre_charla, valoracion)
VALUES(
    2, -- Justin
    9, -- Evento Ecologia 2020
    'Charla Ecologia 2020 (2)',
    5
);
