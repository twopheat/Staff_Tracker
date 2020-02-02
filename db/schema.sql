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
  salary VARCHAR(12),
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

INSERT INTO roles (id,title,department_id,salary) values (2,'Manager',2,'$120,000.00')