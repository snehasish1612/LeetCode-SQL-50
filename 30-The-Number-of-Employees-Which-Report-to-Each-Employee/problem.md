# 🧩 Problem 30: The Number of Employees Which Report to Each Employee

## 📝 Problem Statement

Table: `Employees`

| Column Name | Type    |
|-------------|---------|
| employee_id | int     |
| name        | varchar |
| reports_to  | int     |
| age         | int     |

`employee_id` is the **primary key** for this table.  
This table contains information about employees and the ID of the manager (`reports_to`) they report to.  
Some employees **do not report to anyone** (`reports_to` is `NULL`). :contentReference[oaicite:0]{index=0}

---

## 🎯 Task

Write an SQL query to **report the ids and names of all managers** who have at least one direct report, the **number of employees** who report directly to them (`reports_count`), and the **average age** of these reports (rounded to the nearest integer).  
Return the result **ordered by `employee_id` in ascending order**. :contentReference[oaicite:1]{index=1}

---

## 🧮 Example Input

**Employees table:**

| employee_id | name    | reports_to | age |
|-------------|---------|------------|-----|
| 9           | Hercy   | NULL       | 43  |
| 6           | Alice   | 9          | 41  |
| 4           | Bob     | 9          | 36  |
| 2           | Winston | NULL       | 37  |

---

## ✅ Example Output

| employee_id | name  | reports_count | average_age |
|-------------|-------|---------------|-------------|
| 9           | Hercy | 2             | 39          |

---

## 💡 Explanation

- Employee **9 (Hercy)** has two people reporting directly to them: **Alice (41)** and **Bob (36)**.  
- Number of reports = **2**.  
- Average age = **(41 + 36) ÷ 2 = 38.5**, rounded to the nearest integer → **39**.  
- Employees with `reports_to = NULL` and those with no direct reports are excluded. :contentReference[oaicite:2]{index=2}

---

## 💻 SQL Schema (MySQL)

```sql
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    reports_to INT,
    age INT
);
