
# 📊 MySQL Assignment 1 – DDL Commands & Constraints

## 📌 Project Overview

This project demonstrates the use of **Data Definition Language (DDL)** commands in MySQL. It covers database creation, table management, constraints, and structural modifications using real-world employee data scenarios.

---

## 🗂️ Database Details

* **Database Name:** `employee_database`

---

## 🏗️ 1. Database & Table Creation (CREATE)

### ✅ Database Creation

```sql
CREATE DATABASE employee_database;
USE employee_database;
```

### ✅ Tables Created

#### 📁 Departments

* Department ID
* Department Name

#### 📍 Location

* Location ID
* City
* State

#### 👨‍💼 Employees

* Employee ID
* Name
* Age
* Designation
* Hire Date
* Department ID (Foreign Key)
* Location ID (Foreign Key)

---

## 🔧 2. Table Alteration (ALTER)

### ➕ Add New Column

```sql
ALTER TABLE employees
ADD email VARCHAR(255);
```

### ✏️ Modify Column Data Type

```sql
ALTER TABLE employees
MODIFY designation VARCHAR(255);
```

### ❌ Drop Column

```sql
ALTER TABLE employees
DROP COLUMN age;
```

### 🔄 Rename Column

```sql
ALTER TABLE employees
RENAME COLUMN hire_date TO date_of_joining;
```

---

## 🔄 3. Table Renaming (RENAME)

```sql
RENAME TABLE departments TO departments_info;
RENAME TABLE location TO locations;
```

---

## 🧹 4. Table Truncation (TRUNCATE)

```sql
TRUNCATE TABLE employees;
```

* Removes all records from the table
* Keeps table structure intact

---

## 🗑️ 5. Database & Table Dropping (DROP)

### ❌ Drop Table

```sql
DROP TABLE employees;
```

### ❌ Drop Database

```sql
DROP DATABASE employee_database;
```

---

## 🎯 Key Concepts Covered

* CREATE DATABASE & TABLE
* ALTER TABLE (ADD, MODIFY, DROP, RENAME)
* RENAME TABLE
* TRUNCATE TABLE
* DROP TABLE & DATABASE
* Foreign Key Relationships

---

## 📸 Screenshots

Screenshots are included in the project document to demonstrate:

* Table creation
* Alter operations
* Renaming
* Truncation
* Dropping database and tables

---

## 🚀 Tools Used

* MySQL Workbench / MySQL CLI

---

## 📢 Conclusion

This project provides hands-on experience with MySQL DDL operations, helping to understand how database structures are created, modified, and managed efficiently.

---

## 👩‍💻 Author

**Idaya Gracy**

