-- Write your PostgreSQL query statement below
SELECT 'High Salary' as category, COUNT( CASE WHEN income > 50000 THEN income ELSE null END) as accounts_count FROM Accounts
UNION
SELECT 'Low Salary' as category, COUNT( CASE WHEN income < 20000 THEN income ELSE null END) as accounts_count FROM Accounts
UNION
SELECT 'Average Salary' as category, COUNT( CASE WHEN income >= 20000 and income <= 50000 THEN income ELSE null END) as accounts_count FROM Accounts ORDER BY accounts_count DESC
