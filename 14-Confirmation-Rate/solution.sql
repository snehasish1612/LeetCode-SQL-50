-- # Write your MySQL query statement below
SELECT S.user_id, IFNULL(ROUND(SUM(IF(action = "confirmed", 1, 0)) / COUNT(action), 2), 0) AS confirmation_rate
FROM Signups AS S
LEFT JOIN Confirmations AS C
ON S.user_id = C.user_id
GROUP BY user_id;
