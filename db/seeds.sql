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
