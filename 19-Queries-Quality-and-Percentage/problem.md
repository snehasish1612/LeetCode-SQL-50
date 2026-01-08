# 🧩 Problem 19: Queries Quality and Percentage

## 📝 Problem Statement

Table: `Queries`

| Column Name | Type    |
|-------------|---------|
| query_name  | varchar |
| result      | varchar |
| position    | int     |
| rating      | int     |

There is **no primary key** for this table — it may contain **duplicate rows**.  
This table contains information about queries executed on a database.  
- `position` ranges from **1 to 500**.  
- `rating` ranges from **1 to 5**.  
A query with a rating less than **3** is considered a **poor query**. :contentReference[oaicite:1]{index=1}

---

## 🎯 Task

Define the following metrics:

- **Query quality**: the *average* of `(rating / position)` across all rows for a given `query_name`.
- **Poor query percentage**: the percentage (%) of rows for a given `query_name` whose `rating < 3`. :contentReference[oaicite:2]{index=2}

Write an SQL query to find, for each `query_name`:

- `quality`
- `poor_query_percentage`

Both values should be **rounded to 2 decimal places**. :contentReference[oaicite:3]{index=3}

Return the result table in **any order**.

---

## 🧮 Example Input

**Queries table:**

| query_name | result           | position | rating |
|------------|------------------|----------|--------|
| Dog        | Golden Retriever | 1        | 5      |
| Dog        | German Shepherd  | 2        | 5      |
| Dog        | Mule             | 200      | 1      |
| Cat        | Shirazi          | 5        | 2      |
| Cat        | Siamese          | 3        | 3      |
| Cat        | Sphynx           | 7        | 4      |

---

## ✅ Example Output

| query_name | quality | poor_query_percentage |
|------------|---------|-----------------------|
| Dog        | 2.50    | 33.33                 |
| Cat        | 0.66    | 33.33                 |

---

## 💡 Explanation

- For **Dog**:
  - quality = `((5/1) + (5/2) + (1/200)) / 3 ≈ 2.504 ≈ 2.50`
  - 1 out of 3 ratings (`1`) is < 3 → poor_query_percentage = `(1/3)*100 ≈ 33.33`

- For **Cat**:
  - quality = `((2/5) + (3/3) + (4/7)) / 3 ≈ 0.66`
  - 1 out of 3 ratings (`2`) is < 3 → poor_query_percentage = `(1/3)*100 ≈ 33.33` :contentReference[oaicite:4]{index=4}

---

## 💻 SQL Schema (MySQL)

```sql
CREATE TABLE Queries (
    query_name VARCHAR(255),
    result VARCHAR(255),
    position INT,
    rating INT
);
