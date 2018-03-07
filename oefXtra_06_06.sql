SELECT l.city, l.state_province, l.country_id, c.country_name, r.region_name
FROM locations l
JOIN countries c
ON l.country_id = c.country_id
JOIN regions r
ON c.region_id = r.region_id;