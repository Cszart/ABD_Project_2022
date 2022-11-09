/*
    Necesita listar el Nombre y Apellido de los expositores, el nombre de la charla y
    del evento donde realizaron su presentación, en eventos organizados por la
    Universidad Central de Venezuela.
*/
EXPLAIN PLAN FOR
SELECT DISTINCT usuario.id_usuario as ID,
       usuario.nombre as Nombre,
       usuario.apellido as Apellido,
       dicta.nombre_charla as Charla,
       evento.nombre as Evento
FROM universidad
INNER JOIN rel_evento_univ ON universidad.id_univ = rel_evento_univ.id_univ
INNER JOIN evento ON evento.id_evento = rel_evento_univ.id_univ
INNER JOIN dicta ON dicta.id_evento = evento.id_evento
INNER JOIN usuario ON usuario.id_usuario = dicta.id_usuario
WHERE universidad.acronimo = 'UCV' AND usuario.type_user = 'expositor'
;

/*
    Además de listar el Nombre de las Empresas privadas que han aportado a
    eventos de Tecnología en los años 2019 al 2021, el nombre de dichos Eventos
    y la cantidad aportada al evento.
*/

EXPLAIN PLAN FOR
SELECT DISTINCT empresa.id_empresa,
       empresa.nombre,
       evento.nombre,
       rel_evento_empresa.dinero_aportado
FROM empresa
INNER JOIN rel_evento_empresa ON rel_evento_empresa.id_empresa = empresa.id_empresa
INNER JOIN evento ON evento.id_evento = rel_evento_empresa.id_evento
INNER JOIN area_conocimiento ON area_conocimiento.id_area = evento.id_area
WHERE empresa.tipo = 'privada' 
    AND area_conocimiento.nombre = 'Tecnologia'
    AND evento.fecha_inicio BETWEEN '01-01-2019' AND '30-12-2021'
;


-- Consultar el explain plan
SET LINESIZE 130
SET PAGESIZE 0
SELECT * 
FROM   TABLE(DBMS_XPLAN.DISPLAY);