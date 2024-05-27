use Kaggle;

--En caso no existe la tabla Smartphone, lo creo
if Not exists (select *from SYS.TABLES WHERE object_id = OBJECT_ID(N'dbo.Smartphones')and type= 'U')

create table Smartphones
	(	Smartphone varchar(max),
		Brand varchar(max),
		Model varchar(max),
		RAM varchar(max),
		Storage varchar(max),
		Color varchar(max),
		Free varchar(max),
		Final_Price varchar(max)
	)
--si la tabla ya existe, la trunco
truncate table dbo.Smartphones

-- Insertar dataset
bulk insert dbo.Smartphones
from 'C:\D\DATA ANALYTICS\DATAOPS\Proyecto Parcial\python\dataset\smartphones.csv'
with 
(	firstrow = 2,  --empieza en la 2da fila, la primera es la cabecera
	fieldterminator =',', -- indica separador de columnas
	rowterminator ='0x0a'  -- hace referencia al salto de linea
);

Select *from Smartphones;

