# 🧩 Problem 2: Find Customer Referee

## 📝 Problem Statement

Table: `Customer`

| Column Name | Type    |
|--------------|---------|
| id           | int     |
| name         | varchar |
| referee_id   | int     |

In SQL, `id` is the primary key column for this table.  
Each row of this table indicates the ID of a customer, their name, and the ID of the customer who referred them.

---

## 🎯 Task

Find the names of the customers who are **either**:

- Referred by any customer **with id ≠ 2**, **or**
- Not referred by any customer at all (`referee_id IS NULL`).

Return the result table in **any order**.

---

## 🧮 Example Input

**Customer table:**

| id | name | referee_id |
|----|------|-------------|
| 1  | Will | null        |
| 2  | Jane | null        |
| 3  | Alex | 2           |
| 4  | Bill | null        |
| 5  | Zack | 1           |
| 6  | Mark | 2           |

---

## ✅ Example Output

| name |
|------|
| Will |
| Jane |
| Bill |
| Zack |

---

## 💡 Explanation

- Customers **Alex** and **Mark** were referred by customer **2**, so they are **excluded**.  
- The rest (**Will**, **Jane**, **Bill**, and **Zack**) are **either not referred** by anyone or referred by someone other than `id = 2`.

---
