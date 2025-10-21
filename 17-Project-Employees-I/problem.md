# 🧩 Problem 17: Project Employees I

## 📝 Problem Statement

Table: `Project`

| Column Name   | Type |
|---------------|------|
| project_id    | int  |
| employee_id   | int  |

The combination (`project_id`, `employee_id`) is the **primary key** of this table.  
`employee_id` is a foreign key referencing the `Employee` table.  
Each row indicates that the employee with `employee_id` is working on the project with `project_id`. :contentReference[oaicite:1]{index=1}

Table: `Employee`

| Column Name       | Type    |
|-------------------|---------|
| employee_id       | int     |
| name              | varchar |
| experience_years  | int     |

`employee_id` is the **primary key** of this table, and `experience_years` is *not* NULL. Each row contains information about one employee. :contentReference[oaicite:2]{index=2}

---

## 🎯 Task

Write an SQL query that reports the **average experience years** of all the employees for each project.  
The result column should be named `average_years`, and **rounded to 2 decimal places**.  
Return the result table in **any order**. :contentReference[oaicite:3]{index=3}

---

## 🧮 Example Input

**Project table:**

| project_id | employee_id |
|------------|-------------|
| 1          | 1           |
| 1          | 2           |
| 1          | 3           |
| 2          | 1           |
| 2          | 4           |

**Employee table:**

| employee_id | name   | experience_years |
|-------------|--------|------------------|
| 1           | Khaled | 3                |
| 2           | Ali    | 2                |
| 3           | John   | 1                |
| 4           | Doe    | 2                |

---

## ✅ Example Output

| project_id | average_years |
|------------|---------------|
| 1          | 2.00          |
| 2          | 2.50          |

---

## 💡 Explanation

- For project `1`: employees with IDs `1`, `2`, `3` have experience years `3 + 2 + 1 = 6`; average = `6/3 = 2.00`.  
- For project `2`: employees with IDs `1`, `4` have experience years `3 + 2 = 5`; average = `5/2 = 2.50`.

---
