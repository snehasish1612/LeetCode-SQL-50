# 🧩 Problem 1: Recyclable and Low Fat Products

## 📝 Problem Statement

Table: `Products`

| Column Name  | Type    |
|---------------|---------|
| product_id    | int     |
| low_fats      | enum    |
| recyclable    | enum    |

`product_id` is the primary key for this table.  
`low_fats` is an ENUM ('Y', 'N') where 'Y' means this product is low fat.  
`recyclable` is an ENUM ('Y', 'N') where 'Y' means this product is recyclable.

---

## 🎯 Task

Write an SQL query to find the IDs of products that are **both low fat and recyclable**.

Return the result table in **any order**.

---

## 🧮 Example Input

**Products Table:**

| product_id | low_fats | recyclable |
|-------------|-----------|------------|
| 0 | Y | N |
| 1 | Y | Y |
| 2 | N | Y |
| 3 | Y | Y |
| 4 | N | N |

---

## ✅ Example Output

| product_id |
|-------------|
| 1 |
| 3 |

---

## 💡 Explanation

Products with IDs **1** and **3** are both low fat (`low_fats = 'Y'`) and recyclable (`recyclable = 'Y'`).

---

