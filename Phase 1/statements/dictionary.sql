-- 1. Espacio libre de tablespace creados
SELECT
    tablespace_name,
    round(sum(bytes) / 1048576) FreeSpace
FROM
    dba_free_space
GROUP by
    tablespace_name
;

-- 2. 
-- 3. Tamano de tabla en bloques
SELECT segment_name, bytes, blocks
FROM dba_segments
WHERE segment_type='TABLE'
      AND LOWER(segment_name) in ('universidad',
                            'usuario',
                            'area_conocimiento',
                            'evento',
                            'empresa',
                            'rel_univ_usuario',
                            'rel_evento_univ',
                            'rel_evento_empresa',
                            'participa',
                            'dicta')
;

-- 4. El tamaño de cada registro en bytes
SELECT table_name, num_rows, avg_row_len
FROM dba_tables
WHERE LOWER(table_name) in ('universidad',
                            'usuario',
                            'area_conocimiento',
                            'evento',
                            'empresa',
                            'rel_univ_usuario',
                            'rel_evento_univ',
                            'rel_evento_empresa',
                            'participa',
                            'dicta')
;

-- 5. El tamaño de cada columna en bytes
SELECT table_name, column_name, data_length
FROM ALL_TAB_COLUMNS
WHERE LOWER(table_name) in ('universidad',
                            'usuario',
                            'area_conocimiento',
                            'evento',
                            'empresa',
                            'rel_univ_usuario',
                            'rel_evento_univ',
                            'rel_evento_empresa',
                            'participa',
                            'dicta')
ORDER BY table_name
;

-- 7. Ver si se usan indices y calcular costo nro de accesos a disco
-- Muestra el plan del ultimo query
SELECT plan_table_output 
FROM table(dbms_xplan.display_cursor(null,null, format => 'IOSTATS LAST'));
