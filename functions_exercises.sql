USE employees;
# Update your queries for employees whose names start and end with 'E'.
# Use concat() to combine their first and last name together as a single column in your
# results.
SELECT concat (first_name, " ", last_name) FROM employees
WHERE first_name LIKE 'E%'
OR last_name LIKE '%E';

# For your query of employees born on Christmas and hired in the 90s,
# use datediff() to find how many days they have been working at the company
# (Hint: You will also need to use now().
SELECT datediff(now(), hire_date), last_name FROM employees
WHERE birth_date like '%12-25' AND hire_date like '199%'
order by birth_date, hire_date desc;

# curdate().
SELECT datediff(curdate(), hire_date), last_name FROM employees
WHERE birth_date like '%12-25' AND hire_date like '199%'
order by birth_date, hire_date desc;
