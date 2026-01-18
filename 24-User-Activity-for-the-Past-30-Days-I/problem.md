problem.m# 🧩 Problem 24: User Activity for the Past 30 Days I

## 📝 Problem Statement

Table: `Activity`

| Column Name   | Type    |
|---------------|---------|
| user_id       | int     |
| session_id    | int     |
| activity_date | date    |
| activity_type | enum    |

There is **no primary key** for this table; it may contain duplicate rows.  
The `activity_type` column is an ENUM of type **('open_session', 'end_session', 'scroll_down', 'send_message')**.  
Each row indicates that a user performed some activity in a given session on a particular date. :contentReference[oaicite:0]{index=0}

---

## 🎯 Task

Write an SQL query to find the **daily active user count** for the **30-day period ending on 2019-07-27**, inclusive.

- A user is considered **active** on a day if they made **at least one activity** on that day.
- Return a table with:
  - `day`
  - `active_users`

Return the result in **any order**. :contentReference[oaicite:1]{index=1}

---

## 🧮 Example Input

**Activity table:**

| user_id | session_id | activity_date | activity_type |
|---------|------------|---------------|---------------|
| 1       | 1          | 2019-07-20    | open_session  |
| 1       | 1          | 2019-07-20    | scroll_down   |
| 1       | 1          | 2019-07-20    | end_session   |
| 2       | 4          | 2019-07-20    | open_session  |
| 2       | 4          | 2019-07-21    | send_message  |
| 2       | 4          | 2019-07-21    | end_session   |
| 3       | 2          | 2019-07-21    | open_session  |
| 3       | 2          | 2019-07-21    | send_message  |
| 3       | 2          | 2019-07-21    | end_session   |
| 4       | 3          | 2019-06-25    | open_session  |
| 4       | 3          | 2019-06-25    | end_session   |

---

## ✅ Example Output

| day        | active_users |
|------------|--------------|
| 2019-07-20 | 2            |
| 2019-07-21 | 2            |

---

## 💡 Explanation

- Only days within **30 days ending 2019-07-27** (i.e., from **2019-06-28** to **2019-07-27**) are considered. :contentReference[oaicite:2]{index=2}  
- On **2019-07-20**, users **1** and **2** were active → `active_users = 2`.  
- On **2019-07-21**, users **2** and **3** were active → `active_users = 2`.  
- Days with no activity are **not** included. :contentReference[oaicite:3]{index=3}

---

## 💻 SQL Schema (MySQL)

```sql
CREATE TABLE Activity (
    user_id INT,
    session_id INT,
    activity_date DATE,
    activity_type ENUM('open_session','end_session','scroll_down','send_message')
);
