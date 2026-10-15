select 
case 
	when "Capacity" = 10 then 'Стандартная (10 мест)'
	when "Capacity" > 5 then 'Средняя (более 5)'
	else 'Маленькая (менее 5)' end as size_category, 
count("ID") as count_pakring
from moscow_bike_parking 
group by 1 
order by 1 asc

