CREATE DATABASE financial_analysis_db2;
USE financial_analysis_db2;

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    transaction_date DATE,
    transaction_type VARCHAR(10), -- 'Income' or 'Expense'
    category VARCHAR(50),
    amount DECIMAL(10,2),
    description VARCHAR(100)
);


INSERT INTO transactions 
(transaction_date, transaction_type, category, amount, description)
VALUES
('2025-01-01', 'Income', 'Sales', 5000, 'Product sales'),
('2025-01-03', 'Expense', 'Rent', 1200, 'Office rent'),
('2025-01-05', 'Expense', 'Utilities', 300, 'Electricity bill'),
('2025-01-07', 'Income', 'Services', 2500, 'Consulting service'),
('2025-01-10', 'Expense', 'Salaries', 2000, 'Staff salary'),
('2025-01-15', 'Expense', 'Marketing', 600, 'Facebook ads'),
('2025-02-01', 'Income', 'Sales', 6500, 'Product sales'),
('2025-02-05', 'Expense', 'Rent', 1200, 'Office rent'),
('2025-02-08', 'Expense', 'Utilities', 350, 'Water & electricity'),
('2025-02-12', 'Income', 'Services', 3000, 'Training service'),
('2025-02-15', 'Expense', 'Salaries', 2200, 'Staff salary');



