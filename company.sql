# 👩‍💼 Employee–Department SQL Project

This project demonstrates basic **SQL JOIN operations** using a simple company database.  
It includes two tables — **employees** and **departments** — and queries to display how employees are related to their departments.

---

## 🗄️ Database Structure

### **employees** table

| Column Name | Data Type | Description |
|--------------|------------|-------------|
| `id` | INT | Unique ID for each employee |
| `name` | VARCHAR(100) | Employee name |

**Sample Data:**

| id | name |
|----|------|
| 1 | Anjali |
| 2 | Rohan |
| 3 | Meena |

---

### **departments** table

| Column Name | Data Type | Description |
|--------------|------------|-------------|
| `emp_id` | INT | ID of the employee assigned to a department |
| `department_name` | VARCHAR(100) | Department name |

**Sample Data:**

| emp_id | department_name |
|---------|----------------|
| 1 | HR |
| 2 | IT |
| 4 | Finance |

---

## ⚙️ SQL Setup


CREATE DATABASE CompanyDB;
USE CompanyDB;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE departments (
    emp_id INT,
    department_name VARCHAR(100)
);
INSERT INTO `employees` VALUES ('1','Anjaly'),('2','Rohan'),('3','Meena');
INSERT INTO `departments`VALUES ('1','HR'),('2','IT'),('4','FINANCE');
SELECT employees.id,employees.name,departments.department_name FROM employees LEFT JOIN departments ON employees.id=departments.emp_id;
SELECT employees.id,employees.name,departments.department_name FROM departments INNER JOIN employees ON employees.id=departments.emp_id ;
SELECT employees.id,employees.name,departments.department_name FROM employees RIGHT JOIN departments ON employees.id = departments.emp_id;