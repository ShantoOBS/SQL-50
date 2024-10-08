
// LeetCode Link : https://leetcode.com/problems/immediate-food-delivery-ii/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below

Select round(avg(order_date = customer_pref_delivery_date)*100, 2) as immediate_percentage
from Delivery
where (customer_id, order_date) in (
  Select customer_id, min(order_date) 
  from Delivery
  group by customer_id
)
