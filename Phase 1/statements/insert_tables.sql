-- Insert values into tables

-- Insertar universidades
INSERT INTO universidad
(nombre, fecha_creacion, acronimo,descripcion)
VALUES(
    'Universidad Central de Venezuela',
    '22/12/1721',
    'UCV',
    'Descripcion'
);
INSERT INTO universidad
(nombre, fecha_creacion, acronimo,descripcion)
VALUES(
    'Universidad Simon Bolivar',
    '22/12/1721',
    'USB',
    'Descripcion'
);
INSERT INTO universidad
(nombre, fecha_creacion, acronimo,descripcion)
VALUES(
    'Universidad Catolica Andres Bello',
    '22/12/1721',
    'UCAB',
    'Descripcion'
);

-- Insertar usuarios
INSERT INTO usuario 
(correo, nombre, apellido, telefono, direccion, contrasena, type_user)
VALUES(
    'cesar@cesar.com',
    'cesar',
    'apellido',
    '+584241712124',
    'caracas, venezuela',
    'contra',
    'participante'
);
INSERT INTO usuario 
(correo, nombre, apellido, telefono, direccion, contrasena, type_user)
VALUES(
    'silvio@silvio.com',
    'silvio',
    'pestana',
    '+58123456789',
    'caracas, venezuela',
    'contra2',
    'expositor'
);
INSERT INTO usuario 
(correo, nombre, apellido, telefono, direccion, contrasena, type_user)
VALUES(
    'edwin@edwin.com',
    'edwin',
    'quiles',
    '+58987645321',
    'caracas, venezuela',
    'contra3',
    'participante'
);

-- Insertar areas de conocimiento
INSERT INTO area_conocimiento 
(nombre)
VALUES(
    'Tecnologia'
);
INSERT INTO area_conocimiento 
(nombre)
VALUES(
    'Ecologia'
);
INSERT INTO area_conocimiento 
(nombre)
VALUES(
    'Arte'
);
INSERT INTO area_conocimiento 
(nombre)
VALUES(
    'Criptomoneda'
);
INSERT INTO area_conocimiento 
(nombre)
VALUES(
    'Educacion'
);

-- Insertar eventos
-- Eventos validos
INSERT INTO evento 
(nombre, fecha_inicio, fecha_fin, id_area)
VALUES(
    'Masterclass de tecnologia',
    '04/09/2022',
    '08/09/2022',
    1
);
INSERT INTO evento 
(nombre, fecha_inicio, fecha_fin, id_area)
VALUES(
    'Criticas al arte contemporaneo',
    '05/09/2022',
    '08/09/2022',
    3
);
INSERT INTO evento 
(nombre, fecha_inicio, fecha_fin, id_area)
VALUES(
    'Conferencia ecologica',
    '06/09/2022',
    '08/09/2022',
    2
);

-- Insertar empresas
-- Empresas validas
INSERT INTO empresa 
(nombre, direccion, telefono, tipo)
VALUES(
    'CocaCola',
    'Direccion',
    '+58CocaCola',
    'privada'
);
INSERT INTO empresa 
(nombre, direccion, telefono, tipo)
VALUES(
    'Global museum',
    'Direccion 2',
    '+58GlobalMuseum',
    'publica'
);
INSERT INTO empresa 
(nombre, direccion, telefono, tipo)
VALUES(
    'Digimart',
    'Direccion 3',
    '+58DigiMart',
    'privada'
);

-- Relaciones

-- Universidad / Usuario
INSERT INTO rel_univ_usuario
(id_univ, id_usuario, fecha_ingreso)
VALUES(
    1, -- UCV
    1, -- Cesar
    '01/01/2017'
);
INSERT INTO rel_univ_usuario
(id_univ, id_usuario, fecha_ingreso)
VALUES(
    2, -- UCV
    3, -- Edwin
    '01/01/2018'
);
INSERT INTO rel_univ_usuario
(id_univ, id_usuario, fecha_ingreso)
VALUES(
    3, -- UCV
    2, -- Silvio
    '01/01/2017'
);

-- Evento / Univ
INSERT INTO rel_evento_univ 
(id_univ, id_evento)
VALUES(
    1, -- UCV
    1 -- Masterclass de tecnologia
);
INSERT INTO rel_evento_univ 
(id_univ, id_evento)
VALUES(
    1, -- UCV
    2 -- Criticas al arte contemporaneo
);
INSERT INTO rel_evento_univ 
(id_univ, id_evento)
VALUES(
    3, -- UCAB
    1 -- Conferencia Ecologica
);

-- Evento / Empresa
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    3, -- Digimart
    1, -- Masterclass de tecnologia
    5000,
    '01/09/2022'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    2, -- Global museum
    1, -- Criticas al arte contemporaneo
    1000,
    '01/08/2022'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    1, -- Coca-cola
    2, -- Criticas al arte contemporaneo
    1234,
    '04/08/2022'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    1, -- Coca-cola
    3, -- Conferencia ecologica
    4900,
    '02/09/2022'
);
INSERT INTO rel_evento_empresa 
(id_empresa, id_evento, dinero_aportado, fecha_aportado)
VALUES(
    1, -- Coca-cola
    1, -- Masterclass de tecnologia
    3549,
    '25/08/2022'
);

-- Evento / Usuario -> Participante
-- Participantes validos
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    1, -- Cesar
    3 -- Conferencia ecologica
);
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    3, -- Edwin
    3 -- conferencia ecologica
);
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    1, -- Cesar
    2 -- Criticas al arte contemporaneo
);
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    1, -- Cesar
    1 -- Masterclass de tecnologia
);

-- Evento / Usuario -> Usuario Expositor -> dicta
-- Expositor valido
INSERT INTO dicta 
(id_usuario, id_evento, nombre_charla, valoracion)
VALUES(
    2, -- Silvio
    1, -- Masterclass de tecnologia
    'Charla tecnologia',
    5
);
INSERT INTO dicta 
(id_usuario, id_evento, nombre_charla, valoracion)
VALUES(
    2, -- Silvio
    3, -- Conferencia ecologica
    'Charla ecologica',
    5
);