# 🧩 Problem 13: Managers with at Least 5 Direct Reports

## 📝 Problem Statement

Table: `Employee`

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |
| department  | varchar |
| managerId   | int     |

`id` is the primary key (column with unique values) for this table.  
Each row of this table indicates an employee: their `name`, `department`, and the `id` of their manager (`managerId`).  
If `managerId` is `NULL`, then the employee does not have a manager.  
**No** employee will be the manager of themself. :contentReference[oaicite:1]{index=1}

---

## 🎯 Task

Write an SQL query to **report the names of managers who have at least five direct reports**.

Return the result table in **any order**. :contentReference[oaicite:2]{index=2}

---

## 🧮 Example Input

**Employee table:**

| id  | name  | department | managerId |
|-----|-------|------------|-----------|
| 101 | John  | A          | NULL      |
| 102 | Dan   | A          | 101       |
| 103 | James | A          | 101       |
| 104 | Amy   | A          | 101       |
| 105 | Anne  | A          | 101       |
| 106 | Ron   | B          | 101       |

---

## ✅ Example Output

| name |
|------|
| John |

---

## 💡 Explanation

- Employee **John** (id = 101) has at least five direct reports (employees with `managerId = 101`: Dan, James, Amy, Anne, Ron).  
- Hence, John is reported.  
- Note: Only managers with **5 or more** direct reports are included.

---
