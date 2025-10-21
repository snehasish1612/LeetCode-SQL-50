# 🧩 Problem 18: Percentage of Users Attended a Contest

## 📝 Problem Statement

**Table: `Users`**

| Column Name | Type    |
|-------------|---------|
| user_id     | int     |
| user_name   | varchar |

`user_id` is the primary key for this table.  
Each row contains the ID and name of a user. :contentReference[oaicite:1]{index=1}

**Table: `Register`**

| Column Name | Type    |
|-------------|---------|
| contest_id  | int     |
| user_id     | int     |

The combination `(contest_id, user_id)` is the primary key for this table.  
Each row signifies that the user with `user_id` registered for the contest with `contest_id`. :contentReference[oaicite:2]{index=2}

---

## 🎯 Task

Write an SQL query to find the **percentage of users registered** in each contest.  
- The percentage should be **rounded to two decimal places**. :contentReference[oaicite:3]{index=3}  
- Return the result table **ordered by `percentage` in descending order**, and if there is a tie then by `contest_id` in ascending order. :contentReference[oaicite:4]{index=4}

---

## 🧮 Example Input

**Users table:**

| user_id | user_name |
|---------|-----------|
| 6       | Alice     |
| 2       | Bob       |
| 7       | Alex      |

**Register table:**

| contest_id | user_id |
|------------|---------|
| 215        | 6       |
| 209        | 2       |
| 208        | 2       |
| 210        | 6       |
| 208        | 6       |
| 209        | 7       |
| 209        | 6       |
| 215        | 7       |
| 208        | 7       |
| 210        | 2       |
| 207        | 2       |
| 210        | 7       |

---

## ✅ Example Output

| contest_id | percentage |
|------------|------------|
| 208        | 100.00     |
| 209        | 100.00     |
| 210        | 100.00     |
| 215        | 66.67      |
| 207        | 33.33      |

---

## 💡 Explanation

- For contest **208**, all three users (IDs 6, 2, 7) registered → percentage = (3 / 3) × 100 = **100.00**.  
- For contest **209**, same all three registered → **100.00**.  
- For contest **210**, again all three registered → **100.00**.  
- For contest **215**, only users 6 and 7 registered → (2 / 3) × 100 ≈ **66.67**.  
- For contest **207**, only user 2 registered → (1 / 3) × 100 ≈ **33.33**.

---
