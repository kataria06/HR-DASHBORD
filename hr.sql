select * from dashboard


alter table dashboard
rename column id to emp_id


select * from dashboard


alter table dashboard
add column age varchar

select * from dashboard
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'dashboard'


UPDATE dashboard
SET age = EXTRACT(YEAR FROM AGE(CURRENT_DATE,TO_DATE(date_of_birth, 'DD-MM-YYYY')))


select * from dashboard


SELECT min(age), max(age) FROM dashboard


SELECT gender , COUNT(*) AS gender
FROM dashboard
GROUP BY gender


select race , count(*) as race
from dashboard
group by race


alter table dashboard
add column  age_group varchar


UPDATE dashboard
SET age_group =
CASE
    WHEN age::INT BETWEEN 18 AND 24 THEN '18-24'
    WHEN age::INT BETWEEN 25 AND 34 THEN '25-34'
    WHEN age::INT BETWEEN 35 AND 44 THEN '35-44'
    WHEN age::INT BETWEEN 45 AND 54 THEN '45-54'
    WHEN age::INT >= 55 THEN '55+'
    ELSE 'Unknown'
END


select * from dashboard 


select location, count(*) as location
from dashboard
group by location


select job_title,gender, count (*) from dashboard
group by job_title,gender
order by job_title,gender

select department,gender, count (*) from dashboard
group by department,gender
order by department,gender


select job_title, count(*) as job_title
from dashboard
group by job_title


select location_city, count(*) as loaction_city
from dashboard
group by location_city

select location_state, count(*) as loaction_state
from dashboard
group by location_state


