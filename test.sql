CREATE TABLE employee (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  department VARCHAR(50),
  leave_days INT
);
INSERT INTO employee (id, name, department, leave_days) 
VALUES(1, 'raju', 'sales', 1),
(2, 'sangeetha', 'sales', 3),
(3, 'vinay', 'operations', 8),
(4, 'abey', 'packing', 2),
(5, 'thomas', 'packing', 1),
(6, 'muneer', 'operations', 7),
(7, 'aparna', 'sales', 3),
(8, 'abid', 'operations', 9),
(9, 'fathima', 'sales', 11),
(10, 'varghese', 'operations', 14);
CREATE TABLE exam (
  id INT PRIMARY KEY,
 employee_id int,
 exam_status varchar(30)
);
INSERT INTO exam (id, employee_id, exam_status) VALUES
(1, 2, 'pass'),
(2, 5, 'fail'),
(3, 1, 'fail'),
(4, 8, 'pass'),
(5, 3, 'pass'),
(6, 1, 'pass'),
(7, 6, 'fail'),
(8, 9, 'pass'),
(9, 10, 'pass');
SELECT name AS list_of_employees FROM employee WHERE leave_days > 5
AND department = 'sales';
SELECT COUNT(*) AS no_of_employees FROM employee WHERE department = 'operations';
SELECT department,COUNT(*) AS employees_count FROM employee GROUP BY department;
SELECT department,SUM(leave_days) AS total_leaves FROM employee GROUP BY department HAVING SUM(leave_days) > 10;
SELECT name FROM employee WHERE id IN (SELECT employee_id FROM exam WHERE exam_status = 'pass');
SELECT e.name FROM employee e LEFT JOIN exam ex ON e.id=ex.employee_id WHERE ex.employee_id IS null;
