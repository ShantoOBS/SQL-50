
/*      Company : Google,Amazon,Microsoft,Meta,Bloomberg 
        Leetcode : https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/?envType=study-plan-v2&envId=top-sql-50   
*/

# Write your MySQL query statement below

select teacher_id, count(distinct subject_id ) as cnt
from Teacher
group by teacher_id
