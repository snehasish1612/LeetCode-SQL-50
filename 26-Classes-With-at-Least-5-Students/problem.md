# 🧩 Problem 26: Classes With at Least 5 Students

## 📝 Problem Statement

Table: `Courses`

| Column Name | Type    |
|-------------|---------|
| student     | varchar |
| class       | varchar |

The combination (`student`, `class`) is the **primary key** for this table.  
Each row of this table indicates the **name of a student** and the **class** they are enrolled in.  

---

## 🎯 Task

Write an SQL query to **find all the classes that have at least five students enrolled**.  
Return the result table in **any order**. :contentReference[oaicite:0]{index=0}

---

## 🧮 Example Input

**Courses table:**

| student | class     |
|---------|-----------|
| A       | Math      |
| B       | English   |
| C       | Math      |
| D       | Biology   |
| E       | Math      |
| F       | Computer  |
| G       | Math      |
| H       | Math      |
| I       | Math      |

---

## ✅ Example Output

| class |
|--------|
| Math   |

---

## 💡 Explanation

- The class **Math** has **6** students enrolled, which is **≥ 5**, so it is included.  
- All other classes have fewer than 5 students and are excluded. :contentReference[oaicite:1]{index=1}

---

## 💻 SQL Schema (MySQL)

```sql
CREATE TABLE Courses (
    student VARCHAR(50),
    class   VARCHAR(50),
    PRIMARY KEY (student, class)
);
