use employees;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT * FROM employees WHERE last_name LIKE 'E%';

SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';
#SELECT * FROM EMPLOYEES WHERE HIRE_DATE LIKE '199%';

SELECT * FROM employees WHERE birth_date LIKE '%-12-25';

SELECT * FROM employees WHERE last_name LIKE '%Q%';

SELECT * FROM employees
WHERE (first_name ='Irena'
         OR first_name ='Vidya'
         OR first_name ='Maya')
  AND gender = 'M';

SELECT * FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%E';

SELECT * FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';

SELECT * FROM EMPLOYEES WHERE HIRE_DATE LIKE '199%'
                          AND birth_date like '%12-25';

SELECT * FROM employees WHERE last_name LIKE '%Q%'
                          AND last_name NOT LIKE '%QU%';

SELECT * FROM employees
WHERE (first_name ='Irena'
      OR first_name ='Vidya'
      OR first_name ='Maya')
      AND gender = 'M'
      ORDER BY first_name;

SELECT * FROM employees
WHERE (first_name ='Irena'
         OR first_name ='Vidya'
         OR first_name ='Maya')
  AND gender = 'M'
ORDER BY first_name, last_name;

SELECT * FROM employees
WHERE (first_name ='Irena'
         OR first_name ='Vidya'
         OR first_name ='Maya')
  AND gender = 'M'
ORDER BY last_name, first_name;

SELECT * FROM employees
WHERE (first_name = 'IRENA'
      OR first_name = 'Vidya'
      OR first_name = 'Maya')
      AND last_name like '%E%'
      AND gender = 'M'
ORDER BY emp_no;

SELECT * FROM employees
WHERE (first_name ='Irena'
         OR first_name ='Vidya'
         OR first_name ='Maya')
  AND gender = 'M'
ORDER BY first_name DESC;

SELECT * FROM employees
WHERE hire_date LIKE '199%-%-31'
AND birth_date like '%12-25'
ORDER BY birth_date, hire_date DESC;


