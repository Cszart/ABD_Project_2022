Estos comandos SQL deberian de ser ejecutados de manera secuencial
para mantener el codigo organizado se ha colocado algunos comandos
en otros archivos, sin embargo se coloco el nombre del archivo a cual
se debe referir.

### Pasos

1. Iniciar sesion como sysdba

2. Crear usuario abdUser -- create_user.sql

3. Cerrar sesion como sysdba, e iniciar sesion como abdUser

4. Eliminar tablas en caso de existir -- drop_tables.sql

5. Crear tablespaces -- tablespaces.sql

6. Crear tablas -- create_tables.sql

   1. Crear views -- views.sql

7. Crear los roles -- create_roles.sql

8. Insertar en la tabla area de conocimiento -- insert_tables.sql

9. Cerrar sesion como abdUser

   1. Iniciar sesion como organizador

10. Insertar las tablas que tiene permitido

11. Correr el comando COMMIT; para guardar los cambios en la BD y se pueden visualizar desde otros usuarios

12. Cerrar sesion como organizador

    1. Iniciar sesion como administrador

13. Insertar las tablas que tiene permitido

14. Correr el comando COMMIT; para guardar los cambios en la BD y se pueden visualizar desde otros usuarios
