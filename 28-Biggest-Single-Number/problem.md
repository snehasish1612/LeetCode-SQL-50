# 🧩 Problem 28: Biggest Single Number

## 📝 Problem Statement

Table: `MyNumbers`

| Column Name | Type |
|-------------|------|
| num         | int  |

There is **no primary key** for this table; the table may contain duplicate rows.  
Each row contains an integer value `num`.  

A **single number** is defined as a value that appears **exactly once** in the table.

---

## 🎯 Task

Write an SQL query to **find the largest single number** (i.e., the number that appears only once and is the largest among such values).  
If there is **no single number**, return **`NULL`**.  
Return the result as a single column `num`. :contentReference[oaicite:0]{index=0}

---

## 🧮 Example Input

**MyNumbers table:**

| num |
|-----|
| 8   |
| 8   |
| 3   |
| 3   |
| 1   |
| 4   |
| 5   |
| 6   |

---

## ✅ Example Output

| num |
|-----|
| 6   |

---

## 💡 Explanation

- Numbers that appear **only once** are **1, 4, 5, 6**.  
- Among those, **6** is the largest → return **6**.  
- If there were **no numbers** that appear exactly once, the output should be **NULL**. :contentReference[oaicite:1]{index=1}

---

## 💻 SQL Schema (MySQL)

```sql
CREATE TABLE MyNumbers (
    num INT
);
