# 🧩 Problem 20: Monthly Transactions I

## 📝 Problem Statement

Table: `Transactions`

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| country     | varchar |
| state       | enum    |
| amount      | int     |
| trans_date  | date    |

`id` is the primary key of this table.  
Each row in the table represents an incoming transaction from some country on a specific date with an associated `amount`.  
The `state` column is an ENUM with values **'approved'** or **'declined'`. :contentReference[oaicite:0]{index=0}

---

## 🎯 Task

Write an SQL query to report **monthly statistics per country** including:

- `month`: the month of the transaction (formatted as `'YYYY-MM'`)
- `trans_count`: the total number of transactions
- `approved_count`: the number of approved transactions
- `trans_total_amount`: total transaction amount
- `approved_total_amount`: total amount from approved transactions

Return the result table in **any order**. :contentReference[oaicite:1]{index=1}

---

## 🧮 Example Input

**Transactions table:**

| id  | country | state     | amount | trans_date  |
|-----|---------|-----------|--------|-------------|
| 121 | US      | approved  | 1000   | 2018-12-18  |
| 122 | US      | declined  | 2000   | 2018-12-19  |
| 123 | US      | approved  | 2000   | 2019-01-01  |
| 124 | DE      | approved  | 2000   | 2019-01-07  |

---

## ✅ Example Output

| month    | country | trans_count | approved_count | trans_total_amount | approved_total_amount |
|----------|---------|-------------|----------------|--------------------|-----------------------|
| 2018-12  | US      | 2           | 1              | 3000               | 1000                  |
| 2019-01  | US      | 1           | 1              | 2000               | 2000                  |
| 2019-01  | DE      | 1           | 1              | 2000               | 2000                  |

---

## 💡 Explanation

- For **month 2018-12** and **country US**:  
  - Total transactions = 2 (id 121 & 122)  
  - Approved transactions = 1 (id 121)  
  - Total amount = 1000 + 2000 = 3000  
  - Approved total amount = 1000  
- For **2019-01**:
  - US has 1 approved transaction of 2000  
  - DE has 1 approved transaction of 2000  
- The `month` is extracted by formatting the `trans_date` as `'YYYY-MM'`. :contentReference[oaicite:2]{index=2}

---

## 💻 SQL Schema (MySQL)

```sql
CREATE TABLE Transactions (
    id         INT PRIMARY KEY,
    country    VARCHAR(50),
    state      ENUM('approved','declined'),
    amount     INT,
    trans_date DATE
);
