-- Insertar eventos
-- Probar que se coloca un area de conocimiento valida
INSERT INTO evento 
(nombre, fecha_inicio, fecha_fin, id_area)
VALUES(
    'Evento con area de conocimiento erronea',
    '04/09/2022',
    '05/09/2022',
    932
);
-- Probar que se coloca una fecha de fin invalida
INSERT INTO evento 
(nombre, fecha_inicio, fecha_fin, id_area)
VALUES(
    'Evento con area de conocimiento erronea',
    '04/09/2022',
    '01/09/2022',
    1
);

-- Insertar empresas
-- Empresas invalidas
INSERT INTO empresa 
(nombre, direccion, telefono, tipo)
VALUES(
    'CocaCola',
    'Direccion',
    '+58CocaCola',
    'cualquier valor'
);

-- Evento / Usuario -> Participante
-- Participantes invalidos
INSERT INTO participa 
(id_usuario, id_evento)
VALUES(
    2, -- Silvio
    3 -- Conferencia ecologica
);

-- Evento / Usuario -> Usuario Expositor -> dicta
-- Expositor invalido
INSERT INTO dicta 
(id_usuario, id_evento, nombre_charla, valoracion)
VALUES(
    1, -- Cesar
    1, -- Masterclass de tecnologia
    'Charla tecnologia',
    5
);
