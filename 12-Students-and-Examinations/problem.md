# 🧩 Problem 12: Students and Examinations

## 📝 Problem Statement

Tables:

**`Students`**

| Column Name   | Type    |
|---------------|---------|
| student_id    | int     |
| student_name  | varchar |

`student_id` is the primary key for this table.  
Each row contains the ID and name of one student.

**`Subjects`**

| Column Name   | Type    |
|---------------|---------|
| subject_name  | varchar |

`subject_name` is the primary key for this table.  
Each row gives the name of one subject.

**`Examinations`**

| Column Name   | Type    |
|---------------|---------|
| student_id    | int     |
| subject_name  | varchar |

This table does *not* have a primary key and may contain duplicates.  
Each row indicates that the student with `student_id` attended the exam of `subject_name`.

---

## 🎯 Task

Write an SQL query to find the **number of times** each student attended each exam.  
You should return the columns: `student_id`, `student_name`, `subject_name`, and `attended_exams` (the count of times that student took that subject’s exam).  
Return the result table ordered by `student_id` ascending and then by `subject_name` ascending. :contentReference[oaicite:1]{index=1}

---

## 🧮 Example Input

**Students table:**

| student_id | student_name |
|------------|--------------|
| 1          | Alice        |
| 2          | Bob          |
| 13         | John         |
| 6          | Alex         |

**Subjects table:**

| subject_name |
|--------------|
| Math         |
| Physics      |
| Programming  |

**Examinations table:**

| student_id | subject_name |
|------------|--------------|
| 1          | Math         |
| 1          | Physics      |
| 1          | Programming  |
| 2          | Programming  |
| 1          | Physics      |
| 1          | Math         |
| 13         | Math         |
| 13         | Programming  |
| 13         | Physics      |
| 2          | Math         |
| 1          | Math         |

---

## ✅ Example Output

| student_id | student_name | subject_name | attended_exams |
|------------|--------------|--------------|----------------|
| 1          | Alice        | Math         | 3              |
| 1          | Alice        | Physics      | 2              |
| 1          | Alice        | Programming  | 1              |
| 2          | Bob          | Math         | 1              |
| 2          | Bob          | Physics      | 0              |
| 2          | Bob          | Programming  | 1              |
| 6          | Alex         | Math         | 0              |
| 6          | Alex         | Physics      | 0              |
| 6          | Alex         | Programming  | 0              |
| 13         | John         | Math         | 1              |
| 13         | John         | Physics      | 1              |
| 13         | John         | Programming  | 1              |

---

## 💡 Explanation

- We generate **all combinations** of students and subjects (so that even if a student never attended a given subject exam, they will still appear with count = 0). :contentReference[oaicite:2]{index=2}  
- Then we count how many rows in `Examinations` match each combination of `student_id` & `subject_name`.  
- For example, Alice (student_id = 1) took Math twice in the list, and once earlier, so total = 3.  
- Bob (student_id = 2) took Math once, Programming once, and never Physics → Physics count is 0.  
- Alex (student_id = 6) took no exams at all → all counts are 0.

---
