# 🧩 Problem 29: Customers Who Bought All Products

## 📝 Problem Statement

Table: `Customer`

| Column Name  | Type |
|--------------|------|
| customer_id  | int  |
| product_key  | int  |

This table may contain **duplicate rows**.  
Each row indicates that a customer (`customer_id`) bought a product designated by `product_key`.  
`product_key` is a foreign key referencing the `Product` table.  

Table: `Product`

| Column Name  | Type |
|--------------|------|
| product_key  | int  |

`product_key` is the **primary key** for this table and lists all products available.  

---

## 🎯 Task

Write an SQL query to **report the `customer_id`s** of all customers who have **bought *every* product** in the `Product` table.  
Return the result table in **any order**. :contentReference[oaicite:0]{index=0}

---

## 🧮 Example Input

**Customer table:**

| customer_id | product_key |
|-------------|-------------|
| 1           | 5           |
| 2           | 6           |
| 3           | 5           |
| 3           | 6           |
| 1           | 6           |

**Product table:**

| product_key |
|-------------|
| 5           |
| 6           |
+-------------+

---

## ✅ Example Output

| customer_id |
|-------------|
| 1           |
| 3           |

---

## 💡 Explanation

- All products in the `Product` table are **5** and **6**.  
- Customer **1** bought both products 5 and 6.  
- Customer **3** also bought both products 5 and 6.  
- Customer **2** bought only product 6, so they do not qualify. :contentReference[oaicite:1]{index=1}

---

## 💻 SQL Schema (MySQL)

```sql
CREATE TABLE Customer (
    customer_id INT,
    product_key INT
);

CREATE TABLE Product (
    product_key INT PRIMARY KEY
);
