# 🧩 Problem 31: Primary Department for Each Employee

## 📝 Problem Statement

Table: `Employee`

| Column Name    | Type    |
|----------------|---------|
| employee_id    | int     |
| department_id  | int     |
| primary_flag   | varchar |

The combination (`employee_id`, `department_id`) is the primary key for this table.  
Each row indicates that an employee belongs to a particular department.  
The column `primary_flag` is an ENUM (or varchar) with values `'Y'` and `'N'`.  
- `'Y'` means this department is the **primary department** for the employee.  
- `'N'` means it is a non-primary department.

Employees can belong to **multiple departments**.  
If an employee belongs to **only one department**, their `primary_flag` might be `'N'`, but they still should be reported with that only department. :contentReference[oaicite:0]{index=0}

---

## 🎯 Task

Write an SQL query to **report each employee’s primary department**.  
- If an employee belongs to **multiple departments**, select the one where `primary_flag = 'Y'`.  
- If an employee belongs to **only one department**, report that department regardless of `primary_flag`.  

Return the result table with the following columns:

- `employee_id`
- `department_id`

Return the result in **any order**. :contentReference[oaicite:1]{index=1}

---

## 🧮 Example Input

**Employee table:**

| employee_id | department_id | primary_flag |
|-------------|---------------|--------------|
| 1           | 1             | N            |
| 2           | 1             | Y            |
| 2           | 2             | N            |
| 3           | 3             | N            |
| 4           | 2             | N            |
| 4           | 3             | Y            |
| 4           | 4             | N            |

---

## ✅ Example Output

| employee_id | department_id |
|-------------|---------------|
| 1           | 1             |
| 2           | 1             |
| 3           | 3             |
| 4           | 3             |

---

## 💡 Explanation

- Employee **1** belongs only to department 1 → returned.  
- Employee **2** belongs to departments 1 and 2, with `primary_flag = 'Y'` for dept 1 → returned.  
- Employee **3** belongs only to department 3 → returned.  
- Employee **4** belongs to departments 2, 3, 4; primary is dept 3 (`primary_flag = 'Y'`) → returned. :contentReference[oaicite:2]{index=2}

---

## 💻 SQL Schema (MySQL)

```sql
CREATE TABLE Employee (
    employee_id    INT,
    department_id  INT,
    primary_flag   VARCHAR(1),
    PRIMARY KEY (employee_id, department_id)
);
