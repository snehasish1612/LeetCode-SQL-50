# 🧩 Problem 11: Employee Bonus

## 📝 Problem Statement

Table: `Employee`

| Column Name | Type    |
|-------------|---------|
| empId       | int     |
| name        | varchar |
| supervisor  | int     |
| salary      | int     |

`empId` is the primary key column for this table. Each row of this table indicates the **name** and **ID** of an employee in addition to their **salary** and the ID of their **supervisor**. :contentReference[oaicite:1]{index=1}

Table: `Bonus`

| Column Name | Type |
|-------------|------|
| empId       | int  |
| bonus       | int  |

`empId` is the primary key column for this table and a foreign key referencing `Employee(empId)`. Each row of this table contains the ID of an employee and their corresponding bonus. :contentReference[oaicite:2]{index=2}

---

## 🎯 Task

Write an SQL query to **report the name and bonus amount of each employee with a bonus less than 1000**, or who **does not have a bonus record** (i.e., bonus is `NULL`). Return the result table in **any order**. :contentReference[oaicite:3]{index=3}

---

## 🧮 Example Input

**Employee table:**

| empId | name   | supervisor | salary |
|--------|--------|------------|--------|
| 3      | Brad   | null       | 4000   |
| 1      | John   | 3          | 1000   |
| 2      | Dan    | 3          | 2000   |
| 4      | Thomas | 3          | 4000   |

**Bonus table:**

| empId | bonus |
|--------|--------|
| 2      | 500   |
| 4      | 2000  |

---

## ✅ Example Output

| name  | bonus |
|--------|--------|
| John   | null   |
| Dan    | 500   |
| Brad   | null   |

---

## 💡 Explanation

- Employee with **empId = 2** (Dan) has a bonus of 500 which is **< 1000**, so included.  
- Employee with **empId = 4** (Thomas) has a bonus of 2000 which is **≥ 1000**, so **excluded**.  
- Employees with no bonus record (empId = 1 → John; empId = 3 → Brad) have `NULL` bonus → included.  
- So the output lists “John”, “Dan”, and “Brad” with their respective bonus (NULL or actual value).

---
