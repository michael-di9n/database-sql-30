# Write your MySQL query statement below

Query based on inner and out
```SQL
SELECT name 
FROM Employee 
WHERE id 
    IN (   
        SELECT managerId 
        FROM Employee 
        GROUP BY managerId
        HAVING COUNT(*) >= 5 
        )
```