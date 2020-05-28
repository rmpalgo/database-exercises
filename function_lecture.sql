USE employees;

SELECT emp_no, birth_date, CONCAT(first_name, ' ', last_name)
AS 'fullName', gender, hire_date
FROM employees
limit 10;

SELECT birth_date, CONCAT(first_name, ' ', last_name, ' #', emp_no)
AS 'fullName', gender, hire_date
FROM employees
limit 10;

SELECT birth_date, CONCAT_WS(' - ', first_name, last_name, emp_no)
AS 'fullName', gender, hire_date
FROM employees
limit 10;

SELECT first_name
FROM employees
WHERE first_name NOT LIKE '%a%'
order by first_name;

SELECT now() AS 'today';
select curdate();
select curtime();

SELECT CONCAT(
               'Teaching people to code for ',
               ((((UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04')) / 60) / 60) / 24) / 365,
               ' years'
           );