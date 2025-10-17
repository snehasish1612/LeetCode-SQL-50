# 🧩 Problem 4: Article Views I

## 📝 Problem Statement

Table: `Views`

| Column Name | Type |
|--------------|------|
| article_id   | int  |
| author_id    | int  |
| viewer_id    | int  |
| view_date    | date |

There is **no primary key** (column with unique values) for this table — the table may contain **duplicate rows**.  
Each row of this table indicates that a **viewer** viewed an **article** (written by an **author**) on a specific **date**.  

> Note: `author_id = viewer_id` means the author viewed their own article.

---

## 🎯 Task

Write an SQL query to **find all authors who viewed at least one of their own articles**.

Return the result table **sorted by id in ascending order**.

---

## 🧮 Example Input

**Views table:**

| article_id | author_id | viewer_id | view_date  |
|-------------|------------|------------|-------------|
| 1 | 3 | 5 | 2019-08-01 |
| 1 | 3 | 6 | 2019-08-02 |
| 2 | 7 | 7 | 2019-08-01 |
| 2 | 7 | 6 | 2019-08-02 |
| 4 | 7 | 1 | 2019-07-22 |
| 3 | 4 | 4 | 2019-07-21 |
| 3 | 4 | 4 | 2019-07-21 |

---

## ✅ Example Output

| id |
|----|
| 4  |
| 7  |

---

## 💡 Explanation

- Author **7** viewed their own article with ID **2** (since `author_id = viewer_id = 7`).
- Author **4** also viewed their own article with ID **3**.
- Hence, the result includes authors **4** and **7**, sorted in ascending order.

---
