# 🧩 Problem 3: Big Countries

## 📝 Problem Statement

Table: `World`

| Column Name | Type    |
|--------------|---------|
| name         | varchar |
| continent    | varchar |
| area         | int     |
| population   | int     |
| gdp          | bigint  |

`name` is the primary key (column with unique values) for this table.  
Each row of this table gives information about the **name of a country**, the **continent** it belongs to, its **area**, **population**, and **GDP** value.

---

## 🎯 Task

A country is considered **big** if:

- It has an **area of at least three million** (i.e., `3000000 km²`), **or**
- It has a **population of at least twenty-five million** (i.e., `25000000`).

Write an SQL query to find the **name**, **population**, and **area** of the big countries.

Return the result table in **any order**.

---

## 🧮 Example Input

**World table:**

| name        | continent | area     | population | gdp          |
|--------------|------------|----------|-------------|---------------|
| Afghanistan  | Asia       | 652230   | 25500100    | 20343000000   |
| Albania      | Europe     | 28748    | 2831741     | 12960000000   |
| Algeria      | Africa     | 2381741  | 37100000    | 188681000000  |
| Andorra      | Europe     | 468      | 78115       | 3712000000    |
| Angola       | Africa     | 1246700  | 20609294    | 100990000000  |

---

## ✅ Example Output

| name        | population | area     |
|--------------|-------------|----------|
| Afghanistan  | 25500100    | 652230   |
| Algeria      | 37100000    | 2381741  |

---

## 💡 Explanation

- **Afghanistan** qualifies because its population is **25,500,100 ≥ 25,000,000**.  
- **Algeria** qualifies because its area is **2,381,741 ≥ 3,000,000** (❌ No), but its population **37,100,000 ≥ 25,000,000** ✅.  
Hence, both **Afghanistan** and **Algeria** are considered big countries.

---
