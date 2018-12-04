USE employees;

DESCRIBE titles;

SELECT DISTINCT title from titles;

SELECT last_name FROM employees
WHERE last_name like 'E%'
AND last_name LIKE '%E'
GROUP BY last_name;

SELECT first_name, last_name FROM employees
WHERE last_name like 'E%'
  AND last_name LIKE '%E'
GROUP BY first_name, last_name;

SELECT last_name FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT first_name, COUNT(first_name)
FROM employees
GROUP BY first_name;

SELECT COUNT(*), gender
FROM employees
WHERE (first_name ='Irena'
         OR first_name ='Vidya'
         OR first_name ='Maya')
GROUP BY gender
ORDER BY gender;
