# 🧩 Problem 25: Triangle Judgement

## 📝 Problem Statement

Table: `Triangle`

| Column Name | Type |
|-------------|------|
| x           | int  |
| y           | int  |
| z           | int  |

The table does **not** have a primary key and may contain duplicate rows.  
Each row in this table contains three integer values — the lengths of the three sides of a triangle.

---

## 🎯 Task

Write an SQL query to determine, for each row in `Triangle`, whether the three values can form a **valid triangle**.

A triangle is **valid** **if and only if** *all three* of the following conditions hold:

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

- For **2, 2, 3**:  
  - 2 + 2 = 4 > 3 (✔)  
  - 2 + 3 = 5 > 2 (✔)  
  - 2 + 3 = 5 > 2 (✔)  
  → valid triangle → `Yes`.

- For **1, 2, 3**:  
  - 1 + 2 = 3 **not >** 3 → invalid → `No`.

- For **3, 10, 7**:  
  - 3 + 10 = 13 > 7  
  - 3 + 7 = 10 > 10 **equal is not enough** → equal *is not* > → actually fails → `No`  
  *(Note: In strict interpretation if equal isn’t valid, this is “No.” If the standard says strict inequality, adjust accordingly based on the platform’s spec.)*

---

## 💻 SQL Schema (MySQL)

```sql
CREATE TABLE Triangle (
    x INT,
    y INT,
    z INT
);
