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

SELECT dept_emp.emp_no, titles.title, titles.from_date FROM dept_emp
JOIN titles ON titles.emp_no = dept_emp.emp_no
WHERE title = 'Senior Engineer'
ORDER BY titles.from_date;

SELECT titles.from_date, titles.title, COUNT(titles.from_date) AS 'Count'
FROM titles
GROUP BY titles.from_date, titles.title
ORDER BY Count DESC;

SELECT titles.from_date, titles.title, COUNT(titles.from_date) AS 'Count'
FROM titles
WHERE titles.title = 'Staff'
GROUP BY titles.from_date, titles.title
ORDER BY Count DESC;



