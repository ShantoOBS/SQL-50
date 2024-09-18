
// Leet-Code Link : https://leetcode.com/problems/triangle-judgement/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below

SELECT x,y,z,CASE WHEN X+Y>Z AND X+Z>Y AND Y+Z>X  THEN "Yes" ELSE "No" END AS triangle
FROM TRIANGLE 
