-- Extracción tablas bd 

Select *
from sys.tables;


-- Extracción columnas por tabla bd 

Select t.name [Tabla], c.name [Columna]
from sys.tables t
JOIN sys.columns c
ON t.object_id = c.object_id;

-- Extracción servidores vinculados

sp_linkedservers;

-- Get fecha actual en español

Set language spanish;
Select convert(varchar(150),GetDate(), 106) 

-- Get SP por nombre

Select t.name [Tabla], c.name [Columna]
from sys.procedures
where name like '%abuscar%'
