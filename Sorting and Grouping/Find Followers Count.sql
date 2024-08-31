// Leet-Code Link : https://leetcode.com/problems/find-followers-count/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below

SELECT user_id, COUNT(follower_id) AS followers_count

FROM FOLLOWERS

GROUP BY (USER_ID)
ORDER BY(USER_ID)

