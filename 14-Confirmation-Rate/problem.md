# 🧩 Problem 14: Confirmation Rate

## 📝 Problem Statement

Table: `Signups`

| Column Name | Type     |
|-------------|----------|
| user_id     | int      |
| time_stamp  | datetime |

`user_id` is the column of unique values for this table. Each row contains information about when a user signed up.

Table: `Confirmations`

| Column Name | Type     |
|-------------|----------|
| user_id     | int      |
| time_stamp  | datetime |
| action      | ENUM     |

The combination (`user_id`, `time_stamp`) is the primary key for this table.  
`user_id` is a foreign key referencing `Signups(user_id)`.  
Each row of this table indicates that the user with `user_id` requested a confirmation message at `time_stamp` and that confirmation message was either `'confirmed'` or `'timeout'`. :contentReference[oaicite:2]{index=2}

---

## 🎯 Task

Write an SQL query to find, for **each user** from the `Signups` table, their **confirmation rate**.  
- The *confirmation rate* of a user is defined as:  
  > (Number of `'confirmed'` actions) ÷ (Total number of requested confirmation messages)  
- If a user **did not** request any confirmation messages, their confirmation rate is **0**. :contentReference[oaicite:3]{index=3}  
- Round the confirmation rate to **two decimal places**. :contentReference[oaicite:4]{index=4}  
Return the result table in **any order**.

---

## 🧮 Example Input

**Signups table:**

| user_id | time_stamp           |
|---------|----------------------|
| 3       | 2020-03-21 10:16:13  |
| 7       | 2020-01-04 13:57:59  |
| 2       | 2020-07-29 23:09:44  |
| 6       | 2020-12-09 10:39:37  |

**Confirmations table:**

| user_id | time_stamp           | action     |
|---------|----------------------|------------|
| 3       | 2021-01-06 03:30:46  | timeout     |
| 3       | 2021-07-14 14:00:00  | timeout     |
| 7       | 2021-06-12 11:57:29  | confirmed   |
| 7       | 2021-06-13 12:58:28  | confirmed   |
| 7       | 2021-06-14 13:59:27  | confirmed   |
| 2       | 2021-01-22 00:00:00  | confirmed   |
| 2       | 2021-02-28 23:59:59  | timeout     |

---

## ✅ Example Output

| user_id | confirmation_rate |
|---------|-------------------|
| 6       | 0.00              |
| 3       | 0.00              |
| 7       | 1.00              |
| 2       | 0.50              |

---

## 💡 Explanation

- User **6**: Did *not* request any confirmations → rate = 0.00.  
- User **3**: Requested twice (both `timeout`) → 0 confirmed ÷ 2 requests = 0.00.  
- User **7**: Requested three times, all `confirmed` → 3 ÷ 3 = 1.00.  
- User **2**: Requested two times, one `confirmed`, one `timeout` → 1 ÷ 2 = 0.50.  
- All rates are rounded to two decimals.

---
