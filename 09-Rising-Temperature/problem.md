# 🧩 Problem 9: Rising Temperature

## 📝 Problem Statement

Table: `Weather`

| Column Name   | Type    |
|---------------|---------|
| id            | int     |
| recordDate    | date    |
| temperature   | int     |

`id` is the primary key for this table. Each row of this table JSON-represents a particular date (in `recordDate`) and the temperature recorded on that date.

---

## 🎯 Task

Write an SQL query to find all **ids** of records where the temperature is **higher** than the **previous day’s** temperature.  
In other words, select the `id` of each day where `temperature >` the temperature of the day immediately before (`recordDate - 1 day`).  
Return the result in **any order**. :contentReference[oaicite:1]{index=1}

---

## 🧮 Example Input

**Weather table:**

| id | recordDate  | temperature |
|----|-------------|-------------|
| 1  | 2015-01-01  | 10          |
| 2  | 2015-01-02  | 25          |
| 3  | 2015-01-03  | 20          |
| 4  | 2015-01-04  | 30          |

---

## ✅ Example Output

| id |
|----|
| 2  |
| 4  |

---

## 💡 Explanation

- On 2015-01-02 (id = 2), the temperature = 25 which is greater than the previous day’s temperature (10) → include `2`.  
- On 2015-01-03 (id = 3), the temperature dropped from 25 → 20 → exclude.  
- On 2015-01-04 (id = 4), the temperature rose from 20 → 30 → include `4`.

---
