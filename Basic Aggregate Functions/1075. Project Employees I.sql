/*      Company : 
        Leetcode :https://leetcode.com/problems/project-employees-i/description/?envType=study-plan-v2&envId=top-sql-50   */

# Write your MySQL query statement below

select p.project_id, ROUND(SUM(experience_years)/count(experience_years),2) as average_years
from Project p right join Employee e on p.employee_id = e.employee_id
where p.project_id is not null
group by p.project_id
order by p.project_id
