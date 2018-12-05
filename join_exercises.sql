DROP DATABASE IF EXISTS join_test_db;
CREATE DATABASE join_test_db;

USE join_test_db;


CREATE TABLE IF NOT EXISTS roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('adam', 'adam@example.com', 3),
('mike', 'mike@example.com', null),
('matt', 'matt@example.com', null),
('mark', 'mark@example.com', 2),
('jane', 'jane@example.com', 2),
('john', 'john@example.com', 2);


SELECT * FROM users;
SELECT * FROM roles;

SELECT users.name, roles.name FROM users
LEFT JOIN roles
ON roles.id = users.role_id;

SELECT users.name, roles.name FROM users
INNER JOIN roles
ON roles.id = users.role_id;

SELECT users.name, roles.name FROM users
RIGHT JOIN roles
ON roles.id = users.role_id;

SELECT roles.name, COUNT(*) FROM users
JOIN roles
ON roles.id = users.role_id
GROUP BY  roles.name;

#  CURRENT MANAGER NAME PER DEPT.

SELECT departments.dept_name AS 'Department Name', CONCAT (employees.first_name, ' ', employees.last_name) AS 'Department Manager' FROM departments
JOIN dept_manager
  ON dept_manager.dept_no = departments.dept_no
JOIN employees
  ON employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date > NOW()
ORDER BY departments.dept_name;

# SELECT d.dept_name AS 'Department Name', CONCAT (e.first_name, ' ', e.last_name) AS 'Department Manager'
# FROM departments AS d
#        JOIN dept_manager AS dm
#          ON dm.dept_no = d.dept_no
#        JOIN employees AS e
#          ON e.emp_no = dm.emp_no
# WHERE dm.to_date > NOW()
# ORDER BY `Department Name`;

# ALL DEPARTMENTS MANAGED BY WOMEN.

SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Manager Name'
FROM departments
JOIN dept_manager
  ON dept_manager.dept_no = departments.dept_no
Join employees
  ON employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date > NOW()
AND employees.gender = 'F'
ORDER BY `Department Name`;

# CURRENT TITLES OF EMPLOYEES CURRENTLY WORKING IN THE CUSTOMER SERVICE DEPT. NEED TITLE AND COUNT.

SELECT titles.title AS 'Title', COUNT(*) AS 'Count'
FROM titles
Join dept_emp
  ON dept_emp.emp_no = titles.emp_no
JOIN departments
  ON departments.dept_no = dept_emp.dept_no
WHERE dept_name = 'Customer Service'
AND titles.to_date > NOW()
GROUP BY `Title`;



# Find the current salary of all current managers.

SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Name' , salaries.salary AS 'Salary'
FROM departments
JOIN dept_manager
  ON dept_manager.dept_no = departments.dept_no
JOIN employees
  ON employees.emp_no = dept_manager.emp_no
Join salaries
  on salaries.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date > NOW()
AND salaries.to_date > NOW()
ORDER BY departments.dept_name;
