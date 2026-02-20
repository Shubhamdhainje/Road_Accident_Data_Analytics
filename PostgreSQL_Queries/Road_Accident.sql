-- CREATING ROAD_ACCIDENT TABLE
CREATE TABLE road_accidents (
    accident_index TEXT,
    accident_date DATE,
    day_of_week TEXT,
    junction_control TEXT,
    junction_detail TEXT,
    accident_severity TEXT,
    latitude DOUBLE PRECISION,
    light_conditions TEXT,
    local_authority_district TEXT,
    carriageway_hazards TEXT,
    longitude DOUBLE PRECISION,
    number_of_casualties INT,
    number_of_vehicles INT,
    police_force TEXT,
    road_surface_conditions TEXT,
    road_type TEXT,
    speed_limit INT,
    time TIME,
    urban_or_rural_area TEXT,
    weather_conditions TEXT,
    vehicle_type TEXT
);

SELECT * FROM road_accidents;

-- TO COPYING CSV FILE TO ROAD_ACCIDENT TABLE

COPY road_accidents(accident_index,accident_date,day_of_week,junction_control,junction_detail,accident_severity,latitude,
					light_conditions,local_authority_district,carriageway_hazards,longitude,number_of_casualties,
					number_of_vehicles,police_force, road_surface_conditions,road_type,speed_limit,time,urban_or_rural_area,
					weather_conditions,vehicle_type)
FROM 'F:\2023_Desktop\Data analytics jupyter notebook\Road Accident\Road Accident Data.csv'
DELIMITER ','
CSV HEADER;

-- 1) Total Casualties values for Current Year and YoY growth

SELECT SUM(number_of_casualties) AS CY_Casualties
FROM road_accidents
WHERE EXTRACT(YEAR FROM accident_date) = '2022';

SELECT SUM(number_of_casualties) AS CY_Casualties
FROM road_accidents
WHERE accident_date BETWEEN '2022-01-01' AND '2022-12-31';

-- 2) Total Accident values for Current Year and YoY growth

SELECT COUNT(DISTINCT accident_index) AS CY_Accident
FROM road_accidents
WHERE accident_date BETWEEN '2022-01-01' AND '2022-12-31';

-- 3) Total Casualties and Fatal Accident Severity for Current Year and YoY growth.

SELECT SUM(number_of_casualties) AS CY_Fatal_Casualties
FROM road_accidents
WHERE EXTRACT(YEAR FROM accident_date) = '2022' AND accident_severity = 'Fatal';

-- 4) Total Casualties and Seious Accident Severity for Current Year and YoY growth.

SELECT SUM(number_of_casualties) AS CY_Serious_Casualties
FROM road_accidents
WHERE EXTRACT(YEAR FROM accident_date) = '2022' AND accident_severity = 'Serious';

-- 5) Total Casualties and Slight Accident Severity for Current Year and YoY growth.

SELECT SUM(number_of_casualties) AS CY_Slight_Casualties
FROM road_accidents
WHERE EXTRACT(YEAR FROM accident_date) = '2022' AND accident_severity = 'Slight';

-- 6) Total Casualties and Slight Accident Severity for Current Year by Percentage and YoY growth.
'''
SELECT CAST(SUM(number_of_casualties) AS DECIMAL(10,2)) * 100 /
(SELECT CAST(SUM(number_of_casualties) AS DECIMAL(10,2)) FROM road_accidents) AS PCT
FROM road_accidents
WHERE accident_severity = 'Slight';

-- 7) Total Casualties and Serious Accident Severity for Current Year by Percentage and YoY growth.

SELECT CAST(SUM(number_of_casualties) AS DECIMAL(10,2)) * 100 /
(SELECT CAST(SUM(number_of_casualties) AS DECIMAL(10,2)) FROM road_accidents) AS PCT
FROM road_accidents
WHERE accident_severity = 'Serious';

-- 8) Total Casualties and Fatal Accident Severity for Current Year by Percentage and YoY growth.

SELECT CAST(SUM(number_of_casualties) AS DECIMAL(10,2)) * 100 /
(SELECT CAST(SUM(number_of_casualties) AS DECIMAL(10,2)) FROM road_accidents) AS PCT
FROM road_accidents
WHERE accident_severity = 'Fatal';
'''
-- 9) Total Casualties with respect to vehicle type for Current Year.

SELECT 
	CASE
		WHEN vehicle_type IN('Agricultural vehicle') THEN 'Agricultural'
		WHEN vehicle_type IN('Car','Taxi/Private hire car') THEN 'Cars'
		WHEN vehicle_type IN('Motorcycle 125cc and under','Motorcycle 50cc and under','Motorcycle over 500cc') THEN 'Bike'
		WHEN vehicle_type IN('Bus or coach (17 or more pass seats)','Minibus (8 - 16 passenger seats)') THEN 'Bus'
		WHEN vehicle_type IN('Goods 7.5 tonnes mgw and over','Good over 3.5t. and 7.5t','Van / Goods 3.5 tonnes mgw or under') THEN 'Van'
		ELSE 'Other'
	END AS vehicle_group,
	SUM(number_of_casualties) AS CY_Casualties
FROM road_accidents
--WHERE EXTRACT(YEAR FROM accident_date) = '2022'
GROUP BY
	CASE
		WHEN vehicle_type IN('Agricultural vehicle') THEN 'Agricultural'
		WHEN vehicle_type IN('Car','Taxi/Private hire car') THEN 'Cars'
		WHEN vehicle_type IN('Motorcycle 125cc and under','Motorcycle 50cc and under','Motorcycle over 500cc') THEN 'Bike'
		WHEN vehicle_type IN('Bus or coach (17 or more pass seats)','Minibus (8 - 16 passenger seats)') THEN 'Bus'
		WHEN vehicle_type IN('Goods 7.5 tonnes mgw and over','Good over 3.5t. and 7.5t','Van / Goods 3.5 tonnes mgw or under') THEN 'Van'
		ELSE 'Other'
	END	

-- 10) Monthly trends showing comparison od casualties for Previous Year.

SELECT TO_CHAR(accident_date,'MONTH') AS month_name, SUM(number_of_casualties) AS PY_Casualties
FROM road_accidents
WHERE EXTRACT(YEAR FROM accident_date) = '2021'
GROUP BY month_name;

-- 11) Monthly trends showing comparison od casualties for Current Year.

SELECT TO_CHAR(accident_date,'MONTH') AS month_name, SUM(number_of_casualties) AS CY_Casualties
FROM road_accidents
WHERE EXTRACT(YEAR FROM accident_date) = '2022'
GROUP BY month_name;

-- 12) Casualties by Road Type for Current year.

SELECT road_type, SUM(number_of_casualties) AS CY_Casualties
FROM road_accidents
WHERE EXTRACT(YEAR FROM accident_date) = '2022'
GROUP BY road_type;

-- 13) Current year Casualties by Area/Location.

SELECT urban_or_rural_area, SUM(number_of_casualties), CAST(SUM(number_of_casualties) AS DECIMAL(10, 2)) * 100 /
(SELECT CAST(SUM(number_of_casualties) AS DECIMAL(10, 2)) FROM road_accidents 
WHERE EXTRACT(YEAR FROM accident_date) = '2022') AS PCT
FROM road_accidents
WHERE EXTRACT(YEAR FROM accident_date) = '2022'
GROUP BY urban_or_rural_area;

-- 14) Current year Casualties by Day/Night.

SELECT 
	CASE
		WHEN light_conditions IN ('Daylight') THEN 'Day'
		WHEN light_conditions IN ('Darkness - lighting unknown','Darkness - lights lit','Darkness - lights unlit','Darkness - no lighting') THEN 'Dark'
	END AS Light_condition,
	CAST(CAST(SUM(number_of_casualties) AS DECIMAL(10, 2)) * 100 /
	(SELECT CAST(SUM(number_of_casualties) AS DECIMAL(10, 2)) FROM road_accidents WHERE EXTRACT(YEAR FROM accident_date) = '2022') AS DECIMAL(10, 2))
	AS CY_Casualties_PCT
FROM road_accidents
WHERE EXTRACT(YEAR FROM accident_date) = '2022'
GROUP BY
	CASE
	 	WHEN light_conditions IN ('Daylight') THEN 'Day'
		WHEN light_conditions IN ('Darkness - lighting unknown','Darkness - lights lit','Darkness - lights unlit','Darkness - no lighting') THEN 'Dark'
	END 

-- 15) Total Casualties and Total Accident by Location.

SELECT local_authority_district, SUM(number_of_casualties) AS Total_casualties
FROM road_accidents
GROUP BY local_authority_district
ORDER BY Total_casualties DESC
LIMIT 10;

-- 16) Current year Casualties by Road Surface Condition.

SELECT 
	CASE
		WHEN road_surface_conditions IN('Dry') THEN 'Dry'
		WHEN road_surface_conditions IN('Frost or ice','Snow') THEN 'Snow'
		ELSE 'Wet'
	END AS Road_surface_group,
	COUNT(DISTINCT accident_index) AS CY_Accident,
	SUM(number_of_casualties) AS CY_Casualties
FROM road_accidents
WHERE EXTRACT(YEAR FROM accident_date) = '2022'
GROUP BY
	CASE
		WHEN road_surface_conditions IN('Dry') THEN 'Dry'
		WHEN road_surface_conditions IN('Frost or ice','Snow') THEN 'Snow'
		ELSE 'Wet'
	END	

-- 17) Current year Casualties by Weather Conditions.

SELECT 
	CASE
		WHEN weather_conditions IN('Fine + high winds','Fine no high winds') THEN 'Fine'
		WHEN weather_conditions IN('Raining + high winds','Raining no high winds') THEN 'Rain'
		WHEN weather_conditions IN('Fog or mist','Snowing + high winds') THEN 'Snow / Fog'
		ELSE 'Other'
	END AS weather_conditions_group,
	COUNT(DISTINCT accident_index) AS CY_Accident,
	SUM(number_of_casualties) AS CY_Casualties
FROM road_accidents
WHERE EXTRACT(YEAR FROM accident_date) = '2022'
GROUP BY
	CASE
		WHEN weather_conditions IN('Fine + high winds','Fine no high winds') THEN 'Fine'
		WHEN weather_conditions IN('Raining + high winds','Raining no high winds') THEN 'Rain'
		WHEN weather_conditions IN('Fog or mist','Snowing + high winds') THEN 'Snow / Fog'
		ELSE 'Other'
	END	

select * from road_accidents;