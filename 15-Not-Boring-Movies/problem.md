# 🧩 Problem 15: Not Boring Movies

## 📝 Problem Statement

Table: `Cinema`

| Column Name  | Type     |
|--------------|----------|
| id           | int      |
| movie        | varchar  |
| description  | varchar  |
| rating       | float    |

`id` is the primary key (column with unique values) for this table.  
Each row of this table indicates a movie: its name (`movie`), a textual description (`description`), and its rating (`rating`). :contentReference[oaicite:1]{index=1}  

---

## 🎯 Task

Write an SQL query to **report all movies** whose `id` is an **odd number**, **and** whose `description` is **not** `'boring'`.  
Return the result table **ordered by `rating` in descending order**. :contentReference[oaicite:2]{index=2}  

---

## 🧮 Example Input

**Cinema table:**

| id  | movie      | description | rating |
|-----|------------|-------------|--------|
| 1   | War        | great 3D    | 8.9    |
| 2   | Science    | fiction     | 8.5    |
| 3   | irish      | boring      | 6.2    |
| 4   | Ice song   | Fantacy     | 8.6    |
| 5   | House card | Interesting | 9.1    |

---

## ✅ Example Output

| id  | movie      | description | rating |
|-----|------------|-------------|--------|
| 5   | House card | Interesting | 9.1    |
| 1   | War        | great 3D    | 8.9    |

---

## 💡 Explanation

- We only consider movies where `id` is **odd** (1, 3, 5…).  
- Among those, we exclude movies whose `description` is `'boring'`.  
  - For example, `id=3` has `description = 'boring'`, so it's excluded.  
- We then sort the remaining movies by `rating` in **descending** order.  
  - So movie with `id=5` (rating 9.1) comes first, then `id=1` (rating 8.9).  

---
