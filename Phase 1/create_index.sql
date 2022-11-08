-- Los indices primarios ya estan creados por defecto
-- evento
CREATE UNIQUE INDEX index_evento_fk
ON evento(id_area)
TABLESPACE ts_indices;

-- empresa
CREATE UNIQUE INDEX index_empresa_fk
ON empresa(id_area)
TABLESPACE ts_indices;