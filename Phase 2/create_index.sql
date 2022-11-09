-- Los indices primarios ya estan creados por defecto


DROP INDEX index_evento_fk;
DROP INDEX index_empresa_fk;
DROP INDEX index_empresa_type;
DROP INDEX index_usuario_type;
DROP INDEX index_areaCono_idNombre;

-- evento
CREATE INDEX index_evento_fk
ON evento(id_area)
TABLESPACE ts_indices;

-- empresa
CREATE INDEX index_empresa_fk
ON empresa(id_area)
TABLESPACE ts_indices;

CREATE INDEX index_empresa_type
ON empresa(tipo)
TABLESPACE ts_indices;

-- usuario
CREATE INDEX index_usuario_type
ON usuario(type_user)
TABLESPACE ts_indices;

-- area conocimiento
CREATE UNIQUE INDEX index_areaCono_idNombre
ON area_conocimiento(id_area,nombre)
TABLESPACE ts_indices;