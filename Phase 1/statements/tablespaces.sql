-- Tablespace para las tablas
CREATE TABLESPACE ts_tablas
DATAFILE 'df_tablas.dbf'
SIZE 2m;

-- Tablespace para los indices
CREATE TABLESPACE ts_indices
DATAFILE 'df_indices.dbf'
SIZE 2m;
