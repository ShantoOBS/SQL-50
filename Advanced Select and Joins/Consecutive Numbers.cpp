// Leet-Code Link : https://leetcode.com/problems/consecutive-numbers/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below

Select distinct l1.Num as ConsecutiveNums
from 
Logs l1,
Logs l2,
Logs l3
where 
l1.id=l2.id-1
AND l2.id=l3.id-1
AND l1.num=l2.num
AND l2.num=l3.num
;
