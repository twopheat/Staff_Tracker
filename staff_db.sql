DROP DATABASE IF EXISTS staff_db;
CREATE DATABASE staff_db;
USE staff_db;

CREATE TABLE dept(
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  name VARCHAR(100),
  PRIMARY KEY (id)
);

CREATE TABLE roles(
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  title VARCHAR(100),
  salary DECIMAL(2),
  department_id INTEGER(11),
  PRIMARY KEY (id)
);

CREATE TABLE employee(
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  role_id INTEGER(11),
  manager_id INTEGER(11),
  PRIMARY KEY (id)
);

INSERT INTO dept (name) values ('Engineering');
INSERT INTO dept (name) values ('Management');
INSERT INTO dept (name) values ('Development');

INSERT INTO employee (first_name, last_name, role_id, manager_id) values ('Jane', 'Austen', 'Manager', 'Project Manager');
INSERT INTO employee (first_name, last_name, role_id, manager_id) values ('Mark', 'Twain', 'Developer', null);
INSERT INTO employee (first_name, last_name, role_id, manager_id) values ('Lewis', 'Carroll', 'Engineer', null);
INSERT INTO employee (first_name, last_name, role_id, manager_id) values ('Andre', 'Asselin', 'Developer', 'Lead Developer');

SELECT * FROM dept;
SELECT * FROM roles;
SELECT * FROM employee;

-- show ALL staff with employee
-- INNER JOIN will only return all matching values from both tables
SELECT title, first_name, last_name, role_id, manager_id
FROM staff
INNER JOIN employee ON staff.employeeId = employee.id;

-- show ALL staff, even if we don't know the employee
-- LEFT JOIN returns all of the values from the left table, and the matching ones from the right table
SELECT title, first_name, last_name, role_id, manager_id
FROM staff
LEFT JOIN employee ON staff.employeeId = employee.id;

-- show ALL staff, even if we don't know the employee
-- RIGHT JOIN returns all of the values from the right table, and the matching ones from the left table
SELECT title, first_name, last_name, role_id, manager_id
FROM staff
RIGHT JOIN employee ON staff.employeeId = employee.id;
