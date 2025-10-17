# 🧩 Problem 5: Invalid Tweets

## 📝 Problem Statement

Table: `Tweets`

| Column Name | Type    |
|--------------|---------|
| tweet_id     | int     |
| content      | varchar |

`tweed_id` is the **primary key** (column with unique values) for this table.  
`content` consists of **alphanumeric characters**, `'!'`, or `' '` (space) and contains **no other special characters**.  

This table stores all the tweets made in a social media app.

---

## 🎯 Task

Write an SQL query to **find the IDs of the invalid tweets**.  
A tweet is **invalid** if the number of characters in the `content` field is **strictly greater than 15**.

Return the result table in **any order**.

---

## 🧮 Example Input

**Tweets table:**

| tweet_id | content                           |
|-----------|------------------------------------|
| 1         | Let us Code                       |
| 2         | More than fifteen chars are here! |

---

## ✅ Example Output

| tweet_id |
|-----------|
| 2         |

---

## 💡 Explanation

- Tweet **1** has a length of **11**, so it is **valid**.  
- Tweet **2** has a length of **33**, which is **greater than 15**, so it is **invalid**.

---
