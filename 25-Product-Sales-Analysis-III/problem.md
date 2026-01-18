# 🧩 Problem 25: Product Sales Analysis III

## 📝 Problem Statement

Table: `Sales`

| Column Name | Type |
|-------------|------|
| sale_id     | int  |
| product_id  | int  |
| year        | int  |
| quantity    | int  |
| price       | int  |

The combination (`sale_id`, `year`) is the primary key for this table.  
Each row records that a product (`product_id`) was sold in a **given year** with a `quantity` and `price`.  
A product can have **multiple sales entries** in the same year.  
Your task is to find, for each product, all sales that occurred in the **first year** that product was sold. :contentReference[oaicite:0]{index=0}

---

## 🎯 Task

Write an SQL query to return the following columns:

- `product_id`
- `first_year` — the earliest year that the product was sold
- `quantity`
- `price`

Only include sales records where the `year` matches the **first year that product was sold**.  
Return the result in **any order**. :contentReference[oaicite:1]{index=1}

---

## 🧮 Example Input

**Sales table:**

| sale_id | product_id | year | quantity | price |
|---------|------------|------|----------|-------|
| 1       | 100        | 2008 | 10       | 5000  |
| 2       | 100        | 2009 | 12       | 5000  |
| 7       | 200        | 2011 | 15       | 9000  |
| 8       | 200        | 2011 | 20       | 9500  |
| 3       | 300        | 2012 | 5        | 4000  |

---

## ✅ Example Output

| product_id | first_year | quantity | price |
|------------|------------|----------|-------|
| 100        | 2008       | 10       | 5000 |
| 200        | 2011       | 15       | 9000 |
| 200        | 2011       | 20       | 9500 |
| 300        | 2012       | 5        | 4000 |

---

## 💡 Explanation

- Product **100** was first sold in **2008**, so we include only its sales from **2008**.  
- Product **200** was first sold in **2011** and has **two entries** in that year — both are included.  
- Product **300** was first sold in **2012** and has one entry — included.  
- All other sales in later years are excluded. :contentReference[oaicite:2]{index=2}

---

## 💻 SQL Schema (MySQL)

```sql
CREATE TABLE Sales (
    sale_id    INT,
    product_id INT,
    year       INT,
    quantity   INT,
    price      INT,
    PRIMARY KEY (sale_id, year)
);
