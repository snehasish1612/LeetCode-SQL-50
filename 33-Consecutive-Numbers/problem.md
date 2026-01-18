# 🧩 Problem 33: Consecutive Numbers

## 📝 Problem Statement

Table: `Logs`

| Column Name | Type |
|-------------|------|
| id          | int  |
| num         | int  |

In SQL, `id` is the **primary key** for this table and is an **autoincrement** column.  
Each row represents a logged number at a given ID.

---

## 🎯 Task

Write an SQL query to **find all numbers that appear at least three times consecutively** based on increasing `id`.

A number is considered **consecutive** if it appears in **three or more adjacent rows** with increasing `id` values and the same `num` value.  
Return the result table in **any order**. :contentReference[oaicite:0]{index=0}

---

## 🧮 Example Input

**Logs table:**

| id | num |
|----|-----|
| 1  | 1   |
| 2  | 1   |
| 3  | 1   |
| 4  | 2   |
| 5  | 1   |
| 6  | 2   |
| 7  | 2   |
| 8  | 2   |
| 9  | 5   |
|10  | 5   |
|11  | 5   |

---

## ✅ Example Output

| ConsecutiveNums |
|-----------------|
| 1               |
| 2               |
| 5               |

---

## 💡 Explanation

- `1` appears at `id` 1, 2, 3 → three consecutive rows → include `1`.  
- `2` appears at `id` 6, 7, 8 → three consecutive rows → include `2`.  
- `5` appears at `id` 9, 10, 11 → three consecutive rows → include `5`.  
- Numbers that do not appear three times in a row are excluded. :contentReference[oaicite:1]{index=1}

---

## 💻 SQL Schema (MySQL)

```sql
CREATE TABLE Logs (
    id  INT PRIMARY KEY,
    num INT
);
