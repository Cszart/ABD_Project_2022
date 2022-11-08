-- Organizador
DROP ROLE organizador;
CREATE ROLE organizador;

-- Permisos
GRANT SELECT, INSERT, UPDATE, DELETE
ON usuario
TO organizador;

GRANT SELECT, INSERT, UPDATE, DELETE
ON evento
TO organizador;

GRANT SELECT, INSERT, UPDATE, DELETE
ON participa
TO organizador;

GRANT SELECT, INSERT, UPDATE, DELETE
ON dicta
TO organizador;

GRANT SELECT, INSERT, UPDATE, DELETE
ON expositor_evento
TO organizador;

-- Administrador
DROP ROLE administrador;
CREATE ROLE administrador;

-- Permisos
GRANT SELECT, INSERT, UPDATE, DELETE
ON universidad
TO administrador;

GRANT SELECT, INSERT, UPDATE, DELETE
ON empresa
TO administrador;

GRANT SELECT, INSERT, UPDATE, DELETE
ON rel_evento_empresa
TO administrador;

GRANT SELECT, INSERT, UPDATE, DELETE
ON empresa_evento
TO administrador;

--
--
-- Crear usuario organizador
DROP USER user_organizador CASCADE;
CREATE USER user_organizador IDENTIFIED BY organizador1;
GRANT CREATE SESSION TO user_organizador;
GRANT organizador TO user_organizador;

-- Al iniciar sesion con organizador hacer:
/* 
SET ROLE organizador;
ALTER SESSION SET current_schema = ABDUSER;
COMMIT; luego de que se hagan cambios en la bd
*/

-- Crear usuario administrador
DROP USER user_administrador CASCADE;
CREATE USER user_administrador IDENTIFIED BY administrador1;
GRANT CREATE SESSION TO user_administrador;
GRANT administrador TO user_administrador;


-- Al iniciar sesion con administrador hacer:
/*
SET ROLE administrador;
ALTER SESSION SET current_schema = ABDUSER;
COMMIT; luego de que se hagan cambios en la bd
*/