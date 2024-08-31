
/*      Company : Google,Amazon,Microsoft,Meta,Bloomberg 
        Leetcode :https://leetcode.com/problems/employees-whose-manager-left-the-company/?envType=study-plan-v2&envId=top-sql-50   
*/

# Write your MySQL query statement below

select employee_id
from Employees
where salary < 30000 and manager_id not in (select employee_id  from Employees )
order by employee_id
