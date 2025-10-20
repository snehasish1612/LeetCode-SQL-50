# 🧩 Problem 6: Replace Employee ID With The Unique Identifier

## 📝 Problem Statement

Table: `Employees`

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |

`id` is the primary key for this table (unique values). Each row contains the id and name of an employee in a company.

Table: `EmployeeUNI`

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| unique_id   | int     |

The combination `(id, unique_id)` is the primary key for this table (unique pairs). Each row contains the id of an employee and their corresponding unique identifier.

---

## 🎯 Task

Write an SQL query to show the `unique_id` for each user from the `Employees` table, along with their `name`.  
If an employee does not have a corresponding `unique_id` in the `EmployeeUNI` table, display `NULL` as their `unique_id`.  
Return the result in **any order**.

---

## 🧮 Example Input

**Employees table:**

| id | name      |
|----|-----------|
| 1  | Alice     |
| 7  | Bob       |
| 11 | Meir      |
| 90 | Winston   |
| 3  | Jonathan  |

**EmployeeUNI table:**

| id | unique_id  |
|----|------------|
| 3  | 1          |
| 11 | 2          |
| 90 | 3          |

---

## ✅ Example Output

| unique_id | name     |
|-----------|----------|
| NULL      | Alice    |
| NULL      | Bob      |
| 2         | Meir     |
| 3         | Winston  |
| 1         | Jonathan |

---

## 💡 Explanation

- Alice (id = 1) and Bob (id = 7) do **not** have a row in `EmployeeUNI`, so their `unique_id` is `NULL`.  
- Meir (id = 11) has `unique_id = 2`.  
- Winston (id = 90) has `unique_id = 3`.  
- Jonathan (id = 3) has `unique_id = 1`.  
- We therefore list **all** employees from `Employees`, with `unique_id` if available, else `NULL`.

---
