# 🧩 Problem 16: Average Selling Price

## 📝 Problem Statement

**Table: `Prices`**

| Column Name | Type |
|-------------|------|
| product_id  | int  |
| start_date  | date |
| end_date    | date |
| price       | int  |

The combination `(product_id, start_date, end_date)` is the primary key (unique).  
Each row indicates the unit price of a product (`product_id`) for the period from `start_date` to `end_date`.  
For each product, there are **no overlapping periods**. :contentReference[oaicite:1]{index=1}

**Table: `UnitsSold`**

| Column Name   | Type |
|----------------|------|
| product_id     | int  |
| purchase_date  | date |
| units          | int  |

This table may contain duplicates. Each row records a sale of `units` of product `product_id` on date `purchase_date`. :contentReference[oaicite:2]{index=2}

---

## 🎯 Task

Write an SQL query to compute for **each `product_id`** the *average selling price*.  
The *average selling price* is defined as:

> (Sum of `price × units` for all sales of the product) ÷ (Total `units` sold of that product)

- `purchase_date` must fall between the product's `start_date` and `end_date` for that price period. :contentReference[oaicite:3]{index=3}  
- If a product has **no sales**, its `average_price` should be **0.00**. :contentReference[oaicite:4]{index=4}  
- The result column `average_price` should be **rounded to two decimal places**. :contentReference[oaicite:5]{index=5}  
- Return the result table in any order.

---

## 🧮 Example Input

**Prices table:**

| product_id | start_date  | end_date    | price |
|------------|-------------|-------------|-------|
| 1          | 2019-02-17  | 2019-02-28  | 5     |
| 1          | 2019-03-01  | 2019-03-22  | 20    |
| 2          | 2019-02-01  | 2019-02-20  | 15    |
| 2          | 2019-02-21  | 2019-03-31  | 30    |

**UnitsSold table:**

| product_id | purchase_date | units |
|------------|--------------|--------|
| 1          | 2019-02-25   | 100    |
| 1          | 2019-03-01   | 15     |
| 2          | 2019-02-10   | 200    |
| 2          | 2019-03-22   | 30     |

---

## ✅ Example Output

| product_id | average_price |
|------------|---------------|
| 1          | 6.96          |
| 2          | 16.96         |

---

## 💡 Explanation

- For product **1**:  
  - 100 units sold at price 5 (period 2019-02-17 to 2019-02-28) → revenue = 100 × 5 = 500  
  - 15 units sold at price 20 (period 2019-03-01 to 2019-03-22) → revenue = 15 × 20 = 300  
  - Total units = 100 + 15 = 115  
  - Average selling price = (500 + 300) ÷ 115 ≈ 6.96  

- For product **2**:  
  - 200 units at price 15 → revenue = 200 × 15 = 3000  
  - 30 units at price 30 → revenue = 30 × 30 = 900  
  - Total units = 200 + 30 = 230  
  - Average selling price = (3000 + 900) ÷ 230 = 16.9565… rounded to **16.96**  

---
