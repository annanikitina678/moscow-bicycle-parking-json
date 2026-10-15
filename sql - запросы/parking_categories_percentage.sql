select
	round((count("ID") filter (
	where "Name" ilike '%школа%'
	or "Name" ilike '%гимназия%'
	or "Name" ilike '%лицей%'
	or "Name" ilike '%центр образования%'
	or "Name" ilike '%кадетский корпус%')) * 100.0 / count("ID"), 1) as edu_percentage,
	round(count("ID") filter (where "Name" ilike '%метро%') * 100.0 / count("ID"), 1) as metro_percentage
from
	moscow_bike_parking