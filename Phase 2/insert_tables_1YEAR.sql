-- Inserciones minimas para un AÑO --

-- Personas
INSERT INTO usuario -- 5
(correo, nombre, apellido, telefono, direccion, contrasena, type_user)
VALUES(
    'maria@maria.com',
    'maria',
    'migos',
    '+58987645321',
    'caracas, venezuela',
    'contra',
    'participante'
);
INSERT INTO usuario -- 6
(correo, nombre, apellido, telefono, direccion, contrasena, type_user)
VALUES(
    'carlos@carlos.com',
    'carlos',
    'pharrell',
    '+58987645321',
    'caracas, venezuela',
    'contra',
    'participante'
);
INSERT INTO usuario -- 7
(correo, nombre, apellido, telefono, direccion, contrasena, type_user)
VALUES(
    'jesus@jesus.com',
    'jesus',
    'durran',
    '+58987645321',
    'caracas, venezuela',
    'contra',
    'participante'
);
INSERT INTO usuario -- 8
(correo, nombre, apellido, telefono, direccion, contrasena, type_user)
VALUES(
    'jessica@jessica.com',
    'jessica',
    'apellido',
    '+58987645321',
    'caracas, venezuela',
    'contra',
    'participante'
);

INSERT INTO usuario -- 9
(correo, nombre, apellido, telefono, direccion, contrasena, type_user)
VALUES(
    'jane@jane.com',
    'jane',
    'fuentes',
    '+58987645321',
    'caracas, venezuela',
    'contra',
    'expositor'
);
INSERT INTO usuario -- 10
(correo, nombre, apellido, telefono, direccion, contrasena, type_user)
VALUES(
    'jolene@jolene.com',
    'jolene',
    'stripes',
    '+58987645321',
    'caracas, venezuela',
    'contra',
    'expositor'
);

-- eventos
INSERT INTO evento -- 10
(nombre, fecha_inicio, fecha_fin, id_area)
VALUES(
    'Evento tecnologico 2022',
    '10/01/2022',
    '15/01/2022',
    1
);
INSERT INTO evento -- 11
(nombre, fecha_inicio, fecha_fin, id_area)
VALUES(
    'Evento Arte 2022',
    '10/03/2022',
    '15/03/2022',
    3
);
INSERT INTO evento -- 12
(nombre, fecha_inicio, fecha_fin, id_area)
VALUES(
    'Evento Salud 2022',
    '10/08/2022',
    '15/08/2022',
    10
);

-- Relaciones --

-- Universidad / Usuario
INSERT INTO rel_univ_usuario
(id_univ, id_usuario, fecha_ingreso)
VALUES(
    1, -- UCV
    5, -- maria
    '01/01/2021'
);
INSERT INTO rel_univ_usuario
(id_univ, id_usuario, fecha_ingreso)
VALUES(
    1, -- UCV
    6, -- carlos
    '01/01/2021'
);
INSERT INTO rel_univ_usuario
(id_univ, id_usuario, fecha_ingreso)
VALUES(
    2, -- USB
    7, -- jesus
    '01/01/2021'
);
INSERT INTO rel_univ_usuario
(id_univ, id_usuario, fecha_ingreso)
VALUES(
    2, -- USB
    8, -- jessica
    '01/01/2021'
);
INSERT INTO rel_univ_usuario
(id_univ, id_usuario, fecha_ingreso)
VALUES(
    3, -- UCAB
    9, -- jane
    '01/01/2021'
);
INSERT INTO rel_univ_usuario
(id_univ, id_usuario, fecha_ingreso)
VALUES(
    1, -- UCV
    10, -- jolene
    '01/01/2021'
);

-- Evento / Univ
INSERT INTO rel_evento_univ 
(id_univ, id_evento)
VALUES(
    3, -- UCAB
    10 -- Evento de tecnologia 2022
);
INSERT INTO rel_evento_univ 
(id_univ, id_evento)
VALUES(
    2, -- USB
    11 -- Evento de Arte 2022
);
INSERT INTO rel_evento_univ 
(id_univ, id_evento)
VALUES(
    1, -- UCV
    12 -- Evento de Salud 2022
);

-- Evento / Empresa
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    1, -- CocaCola
    10, -- Evento de tecnologia 2022
    2100,
    '05/01/2022'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    2, -- Digimart
    10, -- Evento de tecnologia 2022
    2500,
    '06/01/2022'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    3, -- Capcom
    10, -- Evento de tecnologia 2022
    1234,
    '07/01/2022'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    4, -- Global museum
    10, -- Evento de tecnologia 2022
    500,
    '08/01/2022'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    5, -- FundaVen
    10, -- Evento de tecnologia 2022
    800,
    '09/01/2022'
);

--
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    1, -- CocaCola
    11, -- Evento de Arte 2022
    2100,
    '05/01/2022'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    2, -- Digimart
    11, -- Evento de Arte 2022
    2500,
    '06/01/2022'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    3, -- Capcom
    11, -- Evento de Arte 2022
    1234,
    '07/01/2022'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    4, -- Global museum
    11, -- Evento de Arte 2022
    500,
    '08/01/2022'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    5, -- FundaVen
    11, -- Evento de Arte 2022
    800,
    '09/01/2022'
);

--
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    1, -- CocaCola
    12, -- Evento de Salud 2022
    2100,
    '05/05/2022'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    2, -- Digimart
    12, -- Evento de Salud 2022
    2500,
    '06/05/2022'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    3, -- Capcom
    12, -- Evento de Salud 2022
    1234,
    '07/05/2022'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    4, -- Global museum
    12, -- Evento de Salud 2022
    500,
    '08/05/2022'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    5, -- FundaVen
    12, -- Evento de Salud 2022
    800,
    '09/05/2022'
);

-- Evento / Usuario -> Participante
-- Participantes validos
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    3, -- jesus
    10 -- Evento tecnologico 202
);
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    4, -- jesus
    10 -- Evento tecnologico 202
);
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    5, -- maria
    10 -- Evento tecnologico 202
);
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    6, -- carlos
    10 -- Evento tecnologico 202
);
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    7, -- jesus
    10 -- Evento tecnologico 202
);
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    8, -- jessica
    10 -- Evento tecnologico 202
);

--
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    3, -- cesar
    11 -- Evento Arte 2022
);
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    4, -- edwin
    11 -- Evento Arte 2022
);
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    5, -- maria
    11 -- Evento Arte 2022
);
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    6, -- carlos
    11 -- Evento Arte 2022
);
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    7, -- jesus
    11 -- Evento Arte 2022
);
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    8, -- jessica
    11 -- Evento Arte 2022
);

--
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    3, -- cesar
    12 -- Evento Salud 2022
);
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    4, -- edwin
    12 -- Evento Salud 2022
);
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    5, -- maria
    12 -- Evento Salud 2022
);
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    6, -- carlos
    12 -- Evento Salud 2022
);
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    7, -- jesus
    12 -- Evento Salud 2022
);
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    8, -- jessica
    12 -- Evento Salud 2022
);

-- Evento / Usuario -> Usuario Expositor -> dicta
-- Expositor valido
INSERT INTO dicta 
(id_usuario, id_evento, nombre_charla, valoracion)
VALUES(
    1, -- Silvio
    10, -- Evento tecnologico 2022
    'Charla tecnologia 2022',
    5
);
INSERT INTO dicta 
(id_usuario, id_evento, nombre_charla, valoracion)
VALUES(
    10, -- Jolene
    11, -- Evento arte 2022
    'Charla arte 2022',
    5
);
INSERT INTO dicta 
(id_usuario, id_evento, nombre_charla, valoracion)
VALUES(
    10, -- Jolene
    12, -- Evento salud 2022
    'Charla salud 2022',
    5
);
