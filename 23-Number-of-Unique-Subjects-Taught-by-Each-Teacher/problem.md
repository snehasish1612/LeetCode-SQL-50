# 🧩 Problem 23: Number of Unique Subjects Taught by Each Teacher

## 📝 Problem Statement

Table: `Teacher`

| Column Name | Type |
|-------------|------|
| teacher_id  | int  |
| subject_id  | int  |
| dept_id     | int  |

`(subject_id, dept_id)` is the primary key (combination of columns with unique values) of this table.  
Each row in this table indicates that the teacher with `teacher_id` teaches the subject `subject_id` in the department `dept_id`. :contentReference[oaicite:1]{index=1}

---

## 🎯 Task

Write an SQL query to calculate the **number of unique subjects** that each teacher teaches in the university.  
Return the result table with the columns `teacher_id` and `cnt` in **any order**. :contentReference[oaicite:2]{index=2}

---

## 🧮 Example Input

**Teacher table:**

| teacher_id | subject_id | dept_id |
|-------------|------------|---------|
| 1           | 2          | 3       |
| 1           | 2          | 4       |
| 1           | 3          | 3       |
| 2           | 1          | 1       |
| 2           | 2          | 1       |
| 2           | 3          | 1       |
| 2           | 4          | 1       |

---

## ✅ Example Output

| teacher_id | cnt |
|-------------|-----|
| 1           | 2   |
| 2           | 4   |

---

## 💡 Explanation

- **Teacher 1** teaches subject 2 (in dept 3 and dept 4) and subject 3 → *2 unique subjects*.  
- **Teacher 2** teaches subjects 1, 2, 3, 4 each in dept 1 → *4 unique subjects*.  
- Duplicate department assignments for the same subject don’t increase the count. :contentReference[oaicite:3]{index=3}

---

## 💻 SQL Schema (MySQL)

```sql
CREATE TABLE Teacher (
    teacher_id INT,
    subject_id INT,
    dept_id INT,
    PRIMARY KEY (subject_id, dept_id)
);
