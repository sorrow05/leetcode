# Write your MySQL query statement below
SELECT T1.id FROM Weather as T1 INNER JOIN Weather as T2 ON T1.recordDate = T2.recordDate + INTERVAL 1 DAY WHERE T1.temperature > T2.temperature;