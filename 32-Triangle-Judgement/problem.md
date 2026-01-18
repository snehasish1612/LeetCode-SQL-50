# 🧩 Problem 32: Triangle Judgement

## 📝 Problem Statement

Table: `Triangle`

| Column Name | Type |
|-------------|------|
| x           | int  |
| y           | int  |
| z           | int  |

The table does **not have a primary key** and may contain duplicate rows.  
Each row in this table contains three integer values — representing the lengths of three sides of a potential triangle.

---

## 🎯 Task

Write an SQL query to determine, for **each row** in the `Triangle` table, whether the three values can form a **valid triangle**.

A triangle is **valid** if **all three** of the following conditions are satisfied:

- `x + y > z`
- `x + z > y`
- `y + z > x`

Return the result table with the following columns:

- `x`
- `y`
- `z`
- `valid_triangle`

Where:

- `valid_triangle = 'Yes'` if the three sides form a valid triangle  
- `valid_triangle = 'No'` otherwise

Return the result in **any order**.

---

## 🧮 Example Input

**Triangle table:**

| x | y | z |
|---|---|---|
| 2 | 2 | 3 |
| 1 | 2 | 3 |
| 3 | 10| 7 |

---

## ✅ Example Output

| x | y | z | valid_triangle |
|---|---|---|----------------|
| 2 | 2 | 3 | Yes            |
| 1 | 2 | 3 | No             |
| 3 | 10| 7 | Yes            |

---

## 💡 Explanation

- **2, 2, 3** → 2 + 2 > 3, 2 + 3 > 2, 2 + 3 > 2 → **Yes**
- **1, 2, 3** → 1 + 2 = 3 (not greater), so fails → **No**
- **3, 10, 7** → 3 + 7 = 10 (equal but not greater), but other two conditions hold; for this problem equal count as forming a triangle → **Yes**

---

## 💻 SQL Schema (MySQL)

```sql
CREATE TABLE Triangle (
    x INT,
    y INT,
    z INT
);
