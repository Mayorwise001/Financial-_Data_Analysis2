# Financial-_Data_Analysis2
This project focuses on analyzing a company’s financial performance using SQL for data analysis and Power BI for visualization. The goal is to transform raw financial transactions into clear insights about profitability, expenses, and cash flow trends that support data-driven business decisions.


The project is designed for real-world financial analysis, simulating how analysts help management understand where money is coming from, where it is going, and how financial health changes over time.

## 🎯 Business Questions Answered

The analysis answers three key financial questions:

1. Profit & Loss Summary

Is the business making a profit or a loss?
How much total income and expenses were recorded?

2. Expense Categorization

Which expense categories consume the most money?

Where can cost optimization be applied?

3. Cash Flow Trends

Is cash flow improving or declining over time?

How does financial performance change month by month?

## 🧠 Key Concepts Covered

Revenue vs Expenses

Profit and Loss calculation

Expense breakdown by category

Net cash flow analysis

Monthly financial trend analysis

## 🛠️ Tools & Technologies

MySQL – Data storage and SQL analysis

SQL – Aggregations, grouping, conditional logic

Power BI – Interactive dashboards and financial reporting

GitHub – Version control and project documentation

## 🗄️ Database Structure
Database Name
financial_analysis_db

## Table: transactions
Column Name	Description
transaction_id	Unique transaction identifier
transaction_date	Date of transaction
transaction_type	Income or Expense
category	Transaction category (Rent, Sales, Salaries, etc.)
amount	Transaction amount
description	Transaction description

## 📊 Sample Dataset

The dataset contains realistic business transactions including:

Sales revenue

Service income

Rent expenses

Salaries

Utilities

Marketing expenses

This enables accurate simulation of real business financial scenarios.

🔍 SQL Analysis Performed
## 1️⃣ Profit & Loss Summary

Total Income

Total Expenses

Net Profit or Loss

SELECT
    SUM(CASE WHEN transaction_type = 'Income' THEN amount ELSE 0 END) AS total_income,
    SUM(CASE WHEN transaction_type = 'Expense' THEN amount ELSE 0 END) AS total_expenses,
    SUM(CASE 
        WHEN transaction_type = 'Income' THEN amount
        WHEN transaction_type = 'Expense' THEN -amount
    END) AS profit_or_loss
FROM transactions;

## 2️⃣ Expense Categorization

Grouped expenses by category

Identified highest cost drivers

SELECT
    category,
    SUM(amount) AS total_spent
FROM transactions
WHERE transaction_type = 'Expense'
GROUP BY category
ORDER BY total_spent DESC;

## 3️⃣ Cash Flow Trends

Monthly net cash flow tracking

SELECT
    DATE_FORMAT(transaction_date, '%Y-%m') AS month,
    SUM(CASE 
        WHEN transaction_type = 'Income' THEN amount
        WHEN transaction_type = 'Expense' THEN -amount
    END) AS net_cash_flow
FROM transactions
GROUP BY month
ORDER BY month;

## 📈 Power BI Dashboards

The analysis is visualized using three interactive Power BI report pages:

## 📄 Page 1: Profit & Loss Summary

KPI Cards: Total Income, Total Expenses, Profit/Loss

Income vs Expense comparison chart

## 📄 Page 2: Expense Breakdown

Donut chart showing expense distribution

Bar chart highlighting highest expense categories

Detailed expense table

## 📄 Page 3: Cash Flow Trends

Line chart showing monthly net cash flow

Monthly summary table

Interactive date and category filters

## 📊 Key Insights

The business operates at a profit

Salaries and rent are the largest expense drivers

Cash flow shows a positive upward trend, indicating improving financial stability
