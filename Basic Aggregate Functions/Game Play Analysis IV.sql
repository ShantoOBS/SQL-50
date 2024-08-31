
// Leetcode Link : https://leetcode.com/problems/game-play-analysis-iv/submissions/1351379600/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below

select round(sum(temp)/count(distinct player_id), 2) as fraction
from (
  select
    player_id,
    datediff(event_date, min(event_date) over(partition by player_id)) = 1 as temp
  from 
    Activity
) as t
