# 🧩 Problem - 34: Product Price at a Given Date

## 📝 Problem Statement

**Table: `Products`**

| Column Name   | Type |
|---------------|------|
| product_id    | int  |
| new_price     | int  |
| change_date   | date |

The combination `(product_id, change_date)` is the **primary key** for this table.  
Each row indicates that the price of a product (`product_id`) was changed to `new_price` on the date `change_date`. :contentReference[oaicite:0]{index=0}

**Initially, all products have a default price of `10`.** :contentReference[oaicite:1]{index=1}

---

## 🎯 Task

Write an SQL query to **report the price of every product on a given date — specifically `2019-08-16`**.  
- If a product **has no recorded price change on or before that date**, assume its price was still the **initial default of 10** on that date.  
- Return the result table with columns:  
  - `product_id`  
  - `price`  
- The result can be returned in **any order**. :contentReference[oaicite:2]{index=2}

---

## 🧮 Example Input

**Products table:**

| product_id | new_price | change_date |
|-------------|-----------|-------------|
| 1           | 20        | 2019-08-14  |
| 2           | 50        | 2019-08-14  |
| 1           | 30        | 2019-08-15  |
| 1           | 35        | 2019-08-16  |
| 2           | 65        | 2019-08-17  |
| 3           | 20        | 2019-08-18  |

---

## ✅ Example Output

| product_id | price |
|-------------|-------|
| 2           | 50    |
| 1           | 35    |
| 3           | 10    |

---

## 💡 Explanation

- For product **1**: the latest price change **on or before 2019-08-16** happened on 2019-08-16 itself → price = **35**.  
- For product **2**: the latest change on or before that date was on 2019-08-14 → price = **50**.  
- For product **3**: no price changes on or before the target date → default price = **10**. :contentReference[oaicite:3]{index=3}

---

## 💻 SQL Schema (MySQL)

```sql
CREATE TABLE Products (
    product_id  INT,
    new_price   INT,
    change_date DATE,
    PRIMARY KEY (product_id, change_date)
);
