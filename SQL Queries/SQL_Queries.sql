-- Profit & Loss Summary
-- Total Income
-- Total Expenses
-- Net Profit or Loss

SELECT
    SUM(CASE WHEN transaction_type = 'Income' THEN amount ELSE 0 END) AS total_income,
    SUM(CASE WHEN transaction_type = 'Expense' THEN amount ELSE 0 END) AS total_expenses,
    SUM(CASE 
        WHEN transaction_type = 'Income' THEN amount
        WHEN transaction_type = 'Expense' THEN -amount
    END) AS profit_or_loss
FROM transactions;


-- Expense Categorization
-- Grouped expenses by category
-- Identified highest cost drivers

SELECT
    category,
    SUM(amount) AS total_spent
FROM transactions
WHERE transaction_type = 'Expense'
GROUP BY category
ORDER BY total_spent DESC;


-- Cash Flow Trends
-- Monthly net cash flow tracking

SELECT
    DATE_FORMAT(transaction_date, '%Y-%m') AS month,
    SUM(CASE 
        WHEN transaction_type = 'Income' THEN amount
        WHEN transaction_type = 'Expense' THEN -amount
    END) AS net_cash_flow
FROM transactions
GROUP BY month
ORDER BY month;