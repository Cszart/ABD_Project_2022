-- Obtener los eventos con sus expositores
DROP VIEW expositor_evento;
CREATE VIEW expositor_evento AS
    SELECT usuario.nombre as expositor, evento.nombre as evento,
           dicta.nombre_charla as charla, dicta.valoracion
    FROM dicta
    INNER JOIN usuario
    ON  dicta.id_usuario = usuario.id_usuario
    INNER JOIN evento
    ON  dicta.id_evento = evento.id_evento
    WHERE dicta.id_usuario = usuario.id_usuario AND dicta.id_evento = evento.id_evento
    ORDER BY usuario.nombre
;

-- Obtener las empresas que han aportado a los eventos
DROP VIEW empresa_evento;
CREATE VIEW empresa_evento AS
    SELECT empresa.nombre as empresa, evento.nombre,
           rel_evento_empresa.dinero_aportado,
           rel_evento_empresa.fecha_aportado
    FROM rel_evento_empresa
    INNER JOIN empresa
    ON  rel_evento_empresa.id_empresa = empresa.id_empresa
    INNER JOIN evento
    ON  rel_evento_empresa.id_evento = evento.id_evento
    WHERE rel_evento_empresa.id_empresa = empresa.id_empresa AND rel_evento_empresa.id_evento = evento.id_evento
    ORDER BY empresa.nombre
;
