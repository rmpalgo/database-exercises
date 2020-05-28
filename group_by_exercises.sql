USE employees;

SELECT DISTINCT title FROM titles;

SELECT last_name FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e'
GROUP BY last_name;

SELECT first_name, last_name FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e'
GROUP BY first_name, last_name;

SELECT last_name, COUNT(last_name) AS count FROM employees
WHERE last_name LIKE '%q%' AND
last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY count;

SELECT last_name, COUNT(last_name) AS COUNT
FROM employees
WHERE last_name LIKE '%q%' AND
last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY count;

SELECT gender, COUNT(gender) AS count FROM employees
WHERE first_name IN('Irena', 'Vidya', 'Maya')
GROUP BY gender;

