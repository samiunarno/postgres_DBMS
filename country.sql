SELECT country, avg(age) from students
GROUP BY country
HAVING(avg(age) >= 20.0);


SELECT extract(year from dob) as birth_year, count(*)
FROM students
GROUP BY birth_year

