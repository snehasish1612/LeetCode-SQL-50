# 🧩 Problem 21: Game Play Analysis IV

## 📝 Problem Statement

Table: `Activity`

| Column Name    | Type    |
|----------------|---------|
| player_id      | int     |
| device_id      | int     |
| event_date     | date    |
| games_played   | int     |

`(player_id, event_date)` is the **primary key** of this table.  
This table shows the activity of players of some game; each row records that a player logged in on a certain date and played some number of games before logging out. :contentReference[oaicite:0]{index=0}

---

## 🎯 Task

Write an SQL query to report the **fraction of players who logged in again on the day after the day they first logged in**, rounded to **2 decimal places**.

In other words:

1. For each player, find the **first login date**.
2. Check whether they logged in **on the next calendar date** after that first login.
3. Count how many players satisfy this condition.
4. Divide that count by the **total number of distinct players**. :contentReference[oaicite:1]{index=1}

Return the result table with one column: `fraction`.

---

## 🧮 Example Input

**Activity table:**

| player_id | device_id | event_date  | games_played |
|------------|-----------|-------------|---------------|
| 1          | 2         | 2016-03-01  | 5             |
| 1          | 2         | 2016-03-02  | 6             |
| 2          | 3         | 2017-06-25  | 1             |
| 3          | 1         | 2016-03-02  | 0             |
| 3          | 4         | 2018-07-03  | 5             |

---

## ✅ Example Output

| fraction |
|----------|
| 0.33     |

---

## 💡 Explanation

- Player **1** logged in on **2016-03-01** and also on **2016-03-02** → counts.
- Player **2** only logged in once → does **not** count.
- Player **3** did not log in the day after their first login → does **not** count.
- Only 1 out of 3 players logged in the day after their first login → `1/3 = 0.33`. :contentReference[oaicite:2]{index=2}

---

## 💻 SQL Schema (MySQL)

```sql
CREATE TABLE Activity (
    player_id    INT,
    device_id    INT,
    event_date   DATE,
    games_played INT,
    PRIMARY KEY (player_id, event_date)
);
