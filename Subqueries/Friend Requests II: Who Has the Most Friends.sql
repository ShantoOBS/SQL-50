
Leet-Code Link : https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below

SELECT id, COUNT(*) AS num
FROM (
    SELECT requester_id AS id FROM RequestAccepted

    UNION ALL

    SELECT accepter_id AS id FROM RequestAccepted
) AS Friend_count

GROUP BY id
ORDER BY num DESC 
LIMIT 1
