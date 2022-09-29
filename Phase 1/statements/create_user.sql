-- Primero loguearse como SYSTEM as sysdba

-- Create user
DROP USER abdUser CASCADE;
CREATE USER abdUser identified BY abdPass;
GRANT sysdba TO abdUser;
GRANT CREATE SESSION TO abdUser WITH ADMIN OPTION;
GRANT ALL PRIVILEGES TO abdUser;