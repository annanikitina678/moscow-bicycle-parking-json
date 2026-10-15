select "AdmArea", count("ID") as count_parking, sum("Capacity") as total_bike_places
from moscow_bike_parking 
group by 1 
order by 2 desc