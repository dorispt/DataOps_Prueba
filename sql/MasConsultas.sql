
Select *from Smartphones;

Select Brand, COUNT(*) as Cantidad
from Smartphones
group by Brand
order by Cantidad desc;



