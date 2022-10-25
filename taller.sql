SELECT c.nombre AS nombre_cliente,
       c.apellido AS apellido_cliente,
       t.nombre AS nombre_tecnico,
       t.apellidos AS apellidos_tecnico
FROM cliente AS c 
INNER JOIN equipo as e ON e.rif=c.rif
INNER JOIN modelo as m ON m.codM=e.modelo
INNER JOIN reparacion as r ON r.modelo=m.codM
INNER JOIN parte as p ON p.numeroparte=r.numeroparte
INNER JOIN tecnico as t ON t.ci=r.citecnico
WHERE   c.ciudad='Caracas'
    AND m.descripcion='Mainframe'
    AND r.status='en reparacion'
    AND p.tipo='Disco duro'
