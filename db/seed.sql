DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE CASCADE
);

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
    manager_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE,
    -- FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE CASCADE
);

-----------------------

INSERT INTO department (id, name)
VALUES (1, "Marketing Department");

INSERT INTO department (id, name)
VALUES (2, "Shipping Department");

INSERT INTO department (id, name)
VALUES (3, "International Department");

-----------------------

INSERT INTO role (id, title, salary, department_id)
VALUES (1, "Manager", 90000, 1);

INSERT INTO role (id, title, salary, department_id)
VALUES (2, "Assistant Manager", 85000, 1);

INSERT INTO role (id, title, salary, department_id)
VALUES (3, "Marketing Director", 100000, 1);

INSERT INTO role (id, title, salary, department_id)
VALUES (4, "Shipping Director", 90000, 2);

INSERT INTO role (id, title, salary, department_id)
VALUES (5, "Manager", 75000, 2);

INSERT INTO role (id, title, salary, department_id)
VALUES (6, "Assistant Manager", 70000, 2);

INSERT INTO role (id, title, salary, department_id)
VALUES (7, "International Director", 200000, 3);

INSERT INTO role (id, title, salary, department_id)
VALUES (8, "Manager", 180000, 3);

INSERT INTO role (id, title, salary, department_id)
VALUES (9, "International Leison", 175000, 3);

INSERT INTO role (id, title, salary, department_id)
VALUES (10, "Assistant Manager", 170000, 3);

------------------------

INSERT INTO employee (id, first_name, last_name, role_id)
VALUES (1, "Jack", "Dobbs", 7);

INSERT INTO employee (id, first_name, last_name, role_id)
VALUES (2, "Tim", "Swiss", 6);

INSERT INTO employee (id, first_name, last_name, role_id)
VALUES (3, "Jessica", "Keppner", 1);

INSERT INTO employee (id, first_name, last_name, role_id)
VALUES (2, "Adam", "Rollins", 3);

INSERT INTO employee (id, first_name, last_name, role_id)
VALUES (2, "John", "Smith", 4);

INSERT INTO employee (id, first_name, last_name, role_id)
VALUES (3, "Lily", "Thompson", 5);

INSERT INTO employee (id, first_name, last_name, role_id)
VALUES (1, "Dwight", "Aldrich", 8);

INSERT INTO employee (id, first_name, last_name, role_id)
VALUES (1, "Megan", "Hanson", 10);

INSERT INTO employee (id, first_name, last_name, role_id)
VALUES (3, "Barry", "White", 6);

INSERT INTO employee (id, first_name, last_name, role_id)
VALUES (2, "Jackson", "Monroe", 9);

INSERT INTO employee (id, first_name, last_name, role_id)
VALUES (2, "Alyssa", "Hart", 2);

INSERT INTO employee (id, first_name, last_name, role_id)
VALUES (1, "Kim", "Knolls", 1);

INSERT INTO employee (id, first_name, last_name, role_id)
VALUES (3, "Veronica", "Perry", 8);

INSERT INTO employee (id, first_name, last_name, role_id)
VALUES (3, "Mackenzie", "Nelson", 10);