-- # Write your MySQL query statement below
SELECT MAX(num) AS num
FROM (SELECT DISTINCT num, COUNT(num) AS cnt
        FROM MyNumbers 
        GROUP BY num) AS temp
WHERE temp.cnt = 1;
