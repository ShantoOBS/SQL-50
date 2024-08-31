
/*      Company : Google,Amazon,Microsoft,Meta,Bloomberg 
        Leetcode :https://leetcode.com/problems/fix-names-in-a-table/?envType=study-plan-v2&envId=top-sql-50   */

# Write your MySQL query statement below

select user_id ,  CONCAT(
        UPPER(SUBSTRING(name, 1, 1)),
        LOWER(SUBSTRING(name, 2, LENGTH(name)))
    )  as name
from Users
order by user_id
