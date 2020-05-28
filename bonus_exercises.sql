USE employees;

SHOW tables;

DESCRIBE titles;

SELECT DISTINCT title FROM titles;

SELECT * FROM employees
LIMIT 10;

SELECT first_name
FROM employees
GROUP BY first_name;

SELECT DISTINCT first_name
FROM employees;

SELECT * FROM titles
WHERE title = 'Engineer';

SELECT title, COUNT(title) AS count
FROM titles GROUP BY title
ORDER BY count DESC
LIMIT 3;



