# 🧩 Problem 21: Immediate Food Delivery II

## 📝 Problem Statement

Table: `Delivery`

| Column Name                   | Type    |
|------------------------------|---------|
| delivery_id                  | int     |
| customer_id                  | int     |
| order_date                   | date    |
| customer_pref_delivery_date  | date    |

`delivery_id` is the primary key of this table.  
This table holds information about food deliveries: when a customer placed an order (`order_date`) and the **preferred delivery date** (`customer_pref_delivery_date`) which is on or after the `order_date`. :contentReference[oaicite:0]{index=0}

If a customer’s preferred delivery date equals the order date, the order is called **immediate**; otherwise, it’s **scheduled**. :contentReference[oaicite:1]{index=1}

Each customer has **exactly one first order** (the one with the earliest `order_date`). :contentReference[oaicite:2]{index=2}

---

## 🎯 Task

Write an SQL query to find the **percentage of immediate first orders** among all customers’ first orders.  
- The percentage should be **rounded to two decimal places**.  
- Return the result table **in any order**. :contentReference[oaicite:3]{index=3}

---

## 🧮 Example Input

**Delivery table:**

| delivery_id | customer_id | order_date  | customer_pref_delivery_date |
|-------------|-------------|-------------|-----------------------------|
| 1           | 1           | 2019-08-01  | 2019-08-02                  |
| 2           | 2           | 2019-08-02  | 2019-08-02                  |
| 3           | 1           | 2019-08-11  | 2019-08-12                  |
| 4           | 3           | 2019-08-24  | 2019-08-24                  |
| 5           | 3           | 2019-08-21  | 2019-08-22                  |
| 6           | 2           | 2019-08-11  | 2019-08-13                  |
| 7           | 4           | 2019-08-09  | 2019-08-09                  |

---

## ✅ Example Output

| immediate_percentage |
|----------------------|
| 50.00                |

---

## 💡 Explanation

- Customer **1**’s first order has `order_date = 2019-08-01`, `customer_pref_delivery_date = 2019-08-02` → **not immediate**.  
- Customer **2**’s first order has `order_date = customer_pref_delivery_date` → **immediate**.  
- Customer **3**’s first order (earliest `order_date = 2019-08-21`) is **scheduled**.  
- Customer **4**’s first order is **immediate**.  
- So out of 4 customers, 2 have immediate first orders → `(2/4)*100 = 50.00`. :contentReference[oaicite:4]{index=4}

---

## 💻 SQL Schema (MySQL)

```sql
CREATE TABLE Delivery (
    delivery_id                 INT PRIMARY KEY,
    customer_id                 INT,
    order_date                  DATE,
    customer_pref_delivery_date DATE
);
