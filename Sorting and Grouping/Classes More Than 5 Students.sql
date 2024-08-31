// Leet-Code Link : https://leetcode.com/problems/classes-more-than-5-students/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below

SELECT CLASS
FROM COURSES
GROUP BY (CLASS)
HAVING COUNT(CLASS)>=5
