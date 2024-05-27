--Select *from Smartphones;

--Filtrar los modelos 9 Pro ordenados por precio
Select Smartphone, model, RAM, Final_Price
from Smartphones
where model='9 Pro'
order by Final_Price;

--Ordenar por precio
Select *from Smartphones
order by Storage desc;


