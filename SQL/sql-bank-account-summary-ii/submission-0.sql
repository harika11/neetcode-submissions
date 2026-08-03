SELECT
    u.name,
    SUM(t.amount) AS balance
FROM users u
JOIN transactions t
    ON t.account = u.account
GROUP BY
    u.name,
    u.account
HAVING
    SUM(t.amount) > 10000;