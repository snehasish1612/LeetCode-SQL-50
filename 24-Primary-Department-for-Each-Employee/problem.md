# 🧩 Problem 24: Primary Department for Each Employee

## 📝 Problem Statement

Table: `Employee`

| Column Name | Type    |
|-------------|---------|
| employee_id  | int    |
| department_id | int    |
| is_primary    | int    |

There is **no primary key** for this table; rows may contain duplicates.  
The table contains information about which departments each employee belongs to.  
- `is_primary = 1` means the department is the employee’s **primary department**.  
- `is_primary = 0` means the department is **secondary** for that employee.

Each employee has **exactly one primary department** (a row where `is_primary = 1`).  

---

## 🎯 Task

Write an SQL query to report the **primary department id** for each employee.  
Return the result table with:

- `employee_id`  
- `department_id` — the **primary** one  

Return the result in **any order**.

---

## 🧮 Example Input

**Employee table:**

| employee_id | department_id | is_primary |
|-------------|---------------|------------|
| 1           | 10            | 1          |
| 1           | 12            | 0          |
| 1           | 11            | 0          |
| 2           | 20            | 0          |
| 2           | 18            | 1          |
| 3           | 20            | 1          |

---

## ✅ Example Output

| employee_id | department_id |
|-------------|---------------|
| 1           | 10            |
| 2           | 18            |
| 3           | 20            |

---

## 💡 Explanation

- Employee **1** has primary department **10** (where `is_primary = 1`).  
- Employee **2** has primary department **18**.  
- Employee **3** has primary department **20**.  
- We **exclude** all rows where `is_primary = 0`.

---

## 💻 SQL Schema (MySQL)

```sql
CREATE TABLE Employee (
    employee_id   INT,
    department_id INT,
    is_primary    INT
);
