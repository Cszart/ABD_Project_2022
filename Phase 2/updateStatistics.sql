-- Actualizar todos los objetos
BEGIN
    FOR rec IN (SELECT * 
                FROM all_users
                WHERE username NOT IN ('SYS','SYSDBA'))
    LOOP
        dbms_stats.gather_schema_stats(rec.username);
    END LOOP;
END;
/