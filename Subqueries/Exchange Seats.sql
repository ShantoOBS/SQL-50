
// Leetcode - Link : https://leetcode.com/problems/exchange-seats/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below

SELECT 
    
     CASE 
          WHEN id=(SELECT MAX(id) FROM Seat) AND MOD(id,2)=1
          
          THEN id

          WHEN MOD(id,2)=1
           
          THEN id+1

          ELSE id-1

          END AS id , student

FROM Seat
ORDER BY id;
