# 🧩 Problem 7: Product Sales Analysis I

## 📝 Problem Statement

Table: `Sales`

| Column Name | Type |
|-------------|------|
| sale_id     | int  |
| product_id  | int  |
| year        | int  |
| quantity    | int  |
| price       | int  |

(`sale_id`, `year`) is the primary key for this table (combination of columns with unique values). `product_id` is a foreign key referencing the `Product` table. Each row of this table shows a sale of the product with `product_id` in a certain year. Note that `price` is per unit. :contentReference[oaicite:1]{index=1}

Table: `Product`

| Column Name  | Type    |
|--------------|---------|
| product_id   | int     |
| product_name | varchar |

`product_id` is the primary key (column with unique values) for this table. Each row indicates the product name of each product. :contentReference[oaicite:2]{index=2}

---

## 🎯 Task

Write an SQL query to report the `product_name`, `year`, and `price` for **each** `sale_id` in the `Sales` table.  
Return the resulting table in **any order**. :contentReference[oaicite:3]{index=3}

---

## 🧮 Example Input

**Sales table:**

| sale_id | product_id | year | quantity | price |
|---------|------------|------|----------|-------|
| 1       | 100        | 2008 | 10       | 5000  |
| 2       | 100        | 2009 | 12       | 5000  |
| 7       | 200        | 2011 | 15       | 9000  |

**Product table:**

| product_id | product_name |
|------------|--------------|
| 100        | Nokia        |
| 200        | Apple        |
| 300        | Samsung      |

---

## ✅ Example Output

| product_name | year  | price |
|--------------|--------|-------|
| Nokia        | 2008   | 5000  |
| Nokia        | 2009   | 5000  |
| Apple        | 2011   | 9000  |

---

## 💡 Explanation

- For `sale_id = 1`: Product_id = 100 → product_name “Nokia”, year = 2008, price = 5000.  
- For `sale_id = 2`: Product_id = 100 → product_name “Nokia”, year = 2009, price = 5000.  
- For `sale_id = 7`: Product_id = 200 → product_name “Apple”, year = 2011, price = 9000.  
- We include **every** sale in `Sales`, mapping to the name via `Product`.  
- The order of output doesn’t matter (any order is allowed).  

---
