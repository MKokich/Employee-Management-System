INSERT INTO department (id, name)
VALUES (1, "Marketing Department");

INSERT INTO department (id, name)
VALUES (2, "Shipping Department");

INSERT INTO department (id, name)
VALUES (3, "International Department");

-----------------------

INSERT INTO role (id, title, salary, department_id)
VALUES (1, "Marketing Director", 150000, 1);

INSERT INTO role (id, title, salary, department_id)
VALUES (2, "Marketing Manager", 95000, 1);

INSERT INTO role (id, title, salary, department_id)
VALUES (3, "Shipping Director", 70000, 1);

INSERT INTO role (id, title, salary, department_id)
VALUES (4, "Shipping Manager", 65000, 1);

INSERT INTO role (id, title, salary, department_id)
VALUES (5, "International Director", 110000, 1);

INSERT INTO role (id, title, salary, department_id)
VALUES (6, "International Manager", 100000, 2);

INSERT INTO role (id, title, salary, department_id)
VALUES (7, "International Partner", 95000, 2);

INSERT INTO role (id, title, salary, department_id)
VALUES (8, "International Liaison", 70000, 3);

----------
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (8, "Tim", "Swiss", 6, null);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (1, "Kim", "Knowles", 1, 8);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (2, "Tom", "Keppner", 2, 1);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (3, "Alyssa", "Schwartz", 3, 1);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (4, "Edward", "Scissorhands", 3, 2);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (5, "John", "Smith", 4, 1);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (6, "George", "Penny", 4, 1);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (7, "Daniel", "Morgan", 5, 1);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (9, "Taylor", "Glass", 7, 8);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (10, "Candle", "Stick", 8, 8);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (11, "Andrew", "Lemon", 8, 8);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (12, "Angie", "Hoozier", 8, 8);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (13, "Frank", "Sinatra", 8, 8);