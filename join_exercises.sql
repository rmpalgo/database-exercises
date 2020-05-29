USE employees;

SELECT emp_no FROM dept_manager LIMIT 10;
SELECT * FROM employees LIMIT 10;

SELECT ds.dept_name AS 'Department Name',
CONCAT(em.first_name, ' ', em.last_name) AS 'Department Manager'
FROM employees AS em
JOIN dept_manager AS dm
    ON dm.emp_no = em.emp_no
JOIN departments AS ds
    ON dm.dept_no = ds.dept_no
WHERE dm.to_date >= NOW()
ORDER BY ds.dept_name;

SELECT ds.dept_name AS 'Department Name',
       CONCAT(em.first_name, ' ', em.last_name) AS 'Department Manager'
FROM employees AS em
    JOIN dept_manager AS dm
    ON dm.emp_no = em.emp_no
    JOIN departments AS ds
    ON dm.dept_no = ds.dept_no
WHERE dm.to_date >= NOW()
AND em.gender = 'F'
ORDER BY ds.dept_name;


SELECT title FROM titles;

SELECT title AS Title, COUNT(title) AS Count
FROM titles as ti
JOIN dept_emp AS de ON de.emp_no = ti.emp_no
JOIN departments AS dt ON de.dept_no = dt.dept_no
WHERE dt.dept_no = 'd009'
AND ti.to_date > NOW()
AND de.to_date > NOW()
GROUP BY title;


SELECT ds.dept_name AS 'Department Name',
CONCAT(em.first_name, ' ', em.last_name) AS 'Department Manager',
       s.salary AS Salary
FROM employees AS em
JOIN dept_manager AS dm
ON dm.emp_no = em.emp_no
JOIN departments AS ds
ON dm.dept_no = ds.dept_no
JOIN salaries s on em.emp_no = s.emp_no
WHERE dm.to_date >= NOW()
AND s.to_date >= NOW()
ORDER BY ds.dept_name;

