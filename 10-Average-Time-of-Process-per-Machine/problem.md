# 🧩 Problem 10: Average Time of Process per Machine

## 📝 Problem Statement

Table: `Activity`

| Column Name    | Type    |
|-----------------|---------|
| machine_id      | int     |
| process_id      | int     |
| activity_type   | enum    |
| timestamp       | float   |

The combination (`machine_id`, `process_id`, `activity_type`) is the primary key of this table.  
- `machine_id` is the ID of a machine.  
- `process_id` is the ID of a process running on the machine.  
- `activity_type` is an enum with values **'start'** or **'end'**, representing when a machine starts or ends a process.  
- `timestamp` is a float representing the time in seconds.  

It is guaranteed that for every (`machine_id`, `process_id`) pair there is exactly one **start** record and exactly one **end** record, and the `start` timestamp is always less than the `end` timestamp.

---

## 🎯 Task

Write an SQL query to **find the average time each machine takes to complete a process**.  
The time to complete a process is defined as **(end timestamp − start timestamp)**, for each (`machine_id`, `process_id`).  
Your query should return:

- `machine_id`
- `processing_time` — the average process time for that machine, **rounded to 3 decimal places**

Return the result table in **any order**. :contentReference[oaicite:1]{index=1}

---

## 🧮 Example Input

**Activity table:**

| machine_id | process_id | activity_type | timestamp |
|------------|------------|---------------|-----------|
| 0          | 0          | start         | 0.712     |
| 0          | 0          | end           | 1.520     |
| 0          | 1          | start         | 3.140     |
| 0          | 1          | end           | 4.120     |
| 1          | 0          | start         | 0.550     |
| 1          | 0          | end           | 1.550     |
| 1          | 1          | start         | 0.430     |
| 1          | 1          | end           | 1.420     |
| 2          | 0          | start         | 4.100     |
| 2          | 0          | end           | 4.512     |
| 2          | 1          | start         | 2.500     |
| 2          | 1          | end           | 5.000     |

---

## ✅ Example Output

| machine_id | processing_time |
|------------|------------------|
| 0          | 0.894            |
| 1          | 0.995            |
| 2          | 1.456            |

---

## 💡 Explanation

- For machine 0:  
  - Process 0 took (1.520 − 0.712) = 0.808  
  - Process 1 took (4.120 − 3.140) = 0.980  
  - Average = (0.808 + 0.980) / 2 = 0.894  

- For machine 1:  
  - Process 0: (1.550 − 0.550) = 1.000  
  - Process 1: (1.420 − 0.430) = 0.990  
  - Average = (1.000 + 0.990) / 2 = 0.995  

- For machine 2:  
  - Process 0: (4.512 − 4.100) = 0.412  
  - Process 1: (5.000 − 2.500) = 2.500  
  - Average = (0.412 + 2.500) / 2 = 1.456  

---
