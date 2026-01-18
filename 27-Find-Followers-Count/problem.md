# 🧩 Problem 27: Find Followers Count

## 📝 Problem Statement

Table: `Followers`

| Column Name | Type |
|-------------|------|
| user_id     | int  |
| follower_id | int  |

`(user_id, follower_id)` is the primary key for this table.  
This table contains the IDs of a **user** and a **follower** in a social media app — meaning that `follower_id` follows `user_id`.  

---

## 🎯 Task

Write an SQL query that will, for **each user**, return the **number of followers** they have.  
Return the result table **ordered by `user_id` in ascending order**. :contentReference[oaicite:0]{index=0}

---

## 🧮 Example Input

**Followers table:**

| user_id | follower_id |
|---------|-------------|
| 0       | 1           |
| 1       | 0           |
| 2       | 0           |
| 2       | 1           |

---

## ✅ Example Output

| user_id | followers_count |
|---------|-----------------|
| 0       | 1               |
| 1       | 1               |
| 2       | 2               |

---

## 💡 Explanation

- User `0` has **1 follower**: user `1`  
- User `1` has **1 follower**: user `0`  
- User `2` has **2 followers**: users `0` and `1`

---

## 💻 SQL Schema (MySQL)

```sql
CREATE TABLE Followers (
    user_id     INT,
    follower_id INT,
    PRIMARY KEY (user_id, follower_id)
);
