SELECT *
FROM crime_scene_report
WHERE city = 'SQL City' AND date = 20180115;

SELECT * FROM person
WHERE name LIKE '%Annabel%' AND address_street_name = 'Franklin Ave';

SELECT m.name
, m.id
, m.person_id
, i.transcript
FROM get_fit_now_member m INNER JOIN interview i ON m.person_id = i.person_id
WHERE m.name LIKE 'Annabel Miller'
LIMIT 5;

SELECT *
FROM get_fit_now_check_in
WHERE membership_id = '90081';

SELECT *
FROM get_fit_now_check_in
WHERE check_in_date = '20180109'
	AND (check_in_time = 1600
	OR check_out_time = 1700);

SELECT *
FROM get_fit_now_member
WHERE id = '48Z7A' OR id = '48Z55';

SELECT m.name
, m.id
, m.person_id
, i.transcript
FROM get_fit_now_member m INNER JOIN interview i ON m.person_id = i.person_id
WHERE m.name LIKE 'Jeremy Bowers' OR m.name LIKE 'Joe Germuska'
LIMIT 5;

SELECT *
FROM drivers_license
WHERE (height  BETWEEN 65 AND 67)
    AND hair_color = 'red' 
    AND car_make = 'Tesla' 
    AND car_model = 'Model S';

SELECT p.name
, e.person_id
, e.event_id
, e.event_name
, e.date
FROM person p JOIN facebook_event_checkin e ON p.id = e.person_id
WHERE p.license_id IN (202298, 291182, 918773);

INSERT INTO solution VALUES (1, 'Miranda Priestly');
SELECT value
  FROM solution;
;