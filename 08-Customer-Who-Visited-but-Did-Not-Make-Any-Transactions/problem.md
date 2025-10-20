# 🧩 Problem 08: Customer Who Visited but Did Not Make Any Transactions

## 📝 Problem Statement

Table: `Visits`

| Column Name | Type |
|-------------|------|
| visit_id    | int  |
| customer_id | int  |

`visit_id` is the column with unique values for this table.  
This table contains information about the customers who visited the mall.

Table: `Transactions`

| Column Name    | Type |
|----------------|------|
| transaction_id | int  |
| visit_id       | int  |
| amount         | int  |

`transaction_id` is the column with unique values for this table.  
This table contains information about the transactions made during a visit.

---

## 🎯 Task

Write an SQL query to find **the IDs of the customers** who visited the mall **but did not make any transactions**, and **the number of times** they made such visits (visits without transactions).  
Return the result table **in any order**. :contentReference[oaicite:1]{index=1}

---

## 🧮 Example Input

**Visits table:**

| visit_id | customer_id |
|----------|-------------|
| 1        | 23          |
| 2        | 9           |
| 4        | 30          |
| 5        | 54          |
| 6        | 96          |
| 7        | 54          |
| 8        | 54          |

**Transactions table:**

| transaction_id | visit_id | amount |
|----------------|----------|--------|
| 2              | 5        | 310    |
| 3              | 5        | 300    |
| 9              | 5        | 200    |
| 12             | 1        | 910    |
| 13             | 2        | 970    |

---

## ✅ Example Output

| customer_id | count_no_trans |
|-------------|----------------|
| 54          | 2              |
| 30          | 1              |
| 96          | 1              |

---

## 💡 Explanation

- Customer 23 visited once (visit_id = 1) and made a transaction (transaction_id = 12) → **excluded**.  
- Customer 9 visited once (visit_id = 2) and made a transaction (transaction_id = 13) → **excluded**.  
- Customer 30 visited once (visit_id = 4) and made **no transactions** → included, `count_no_trans = 1`.  
- Customer 54 visited three times (visit_id = 5,7,8). For visit 5 they made transactions; for visits 7 and 8 they made none → included with `count_no_trans = 2`.  
- Customer 96 visited once (visit_id = 6) and made **no transactions** → included with `count_no_trans = 1`.

---
