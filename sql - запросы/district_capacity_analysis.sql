select "District", count("ID") as count_parking, round(avg("Capacity"), 1) as avg_district
from moscow_bike_parking 
group by 1
order by 2 DESC