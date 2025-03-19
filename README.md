# 📊 Bank Loan Analysis Project #

## Project Objective
The goal of this project is to **analyze bank loan data** to gain valuable insights into lending activities, identify key performance indicators (KPIs), and track loan performance. This analysis aids in making **data-driven decisions** and understanding the **financial health** of the bank's lending portfolio. 📈💡

---

## Project Description
This project involves the following steps:

### 1. Data Import and Preparation
- **Import Data**: Load loan data into SQL. 📥
- **Data Cleaning**: Write SQL queries to clean and manipulate the data. 🧹
- **Connect to Power BI**: Integrate Power BI with the SQL database and import the cleaned data. 🔗
- **Further Refinement**: Transform and refine the data in Power BI. 🔄

### 2. Dashboard 1: Summary
- **Key Metrics**:
  - **Total Loan Applications**: Number of applications with Month-to-Date (MTD) and Month-over-Month (MoM) changes. 📅
  - **Total Funded Amount**: Total funds disbursed with MTD and MoM analysis. 💵
  - **Total Amount Received**: Total repayments with MTD and MoM analysis. 💰
  - **Average Interest Rate**: Average interest rate with MTD and MoM changes. 📉
  - **Average Debt-to-Income Ratio (DTI)**: Measures borrowers' financial health with MTD and MoM tracking. 🏦
  - **Good Loan vs. Bad Loan KPIs**:
    - **Good Loan**: Percentage and number of 'Good Loans,' including funded amount and total received amount. ✅
    - **Bad Loan**: Percentage and number of 'Bad Loans,' including funded amount and total received amount. ❌
  - **Loan Status Grid View**: Overview by loan status showing key metrics. 🗂️

### 3. Dashboard 2: Overview
- **Key Metrics**:
  - **Monthly Trends by Issue Date**: Analyze loan issuance trends over time. 📅
  - **Regional Analysis by State**: Assess lending activity and performance across states. 🗺️
  - **Loan Term Analysis**: Breakdown of loan terms (short-term, medium-term, long-term). 📊
  - **Employee Length Analysis**: Examine the effect of borrower employment length on loan metrics. 👔
  - **Loan Purpose Breakdown**: Metrics based on loan purposes (education, home improvement). 🎯
  - **Home Ownership Analysis**: Impact of home ownership status on loans. 🏠

### 4. Dashboard 3: Details
- **Objective**: Provides a detailed view of key loan metrics and borrower profiles. 📋

## Tools and Technologies
- **Power BI**: For creating interactive dashboards and visualizations. 📊
- **SQL**: For data import, cleaning, extraction, and manipulation. 🧹

## Repository Includes
- **Power BI Project File**: Interactive dashboards and visualizations. 📈
- **SQL Documents**: SQL queries used in the project. 📄

---

## Dataset
Download the dataset used in this project [here](https://github.com/Priyanka-Patil1/-Bank-Loan-Analysis-Project/blob/main/financial_loan.csv) 📥

## Query Document
Find the SQL queries used in this project [here](https://github.com/Priyanka-Patil1/-Bank-Loan-Analysis-Project/blob/main/SQL%20queries.docx) 📄

## 📊 Power BI Report Sample
Explore a sample of the Power BI report created for this project:
- **Dashboard 1: Summary** ![Dashboard 1](https://github.com/Priyanka-Patil1/-Bank-Loan-Analysis-Project/blob/main/Image%201.png)
- **Dashboard 2: Overview** ![Dashboard 2](https://github.com/Priyanka-Patil1/-Bank-Loan-Analysis-Project/blob/main/Image%202.png)
- **Dashboard 3: Details** ![Dashboard 3](https://github.com/Priyanka-Patil1/-Bank-Loan-Analysis-Project/blob/main/Image%203.png)

## 📊 Insights

• Total Loan Applications: 38.6K

• Total Funded Amount: $435.8M

• Total Amount Received: $473.1

• Average Interest Rate: 12%

• Average Debt-to-Income Ratio (DTI): 13.3%

• MoM increase in loan applications is 6.9%

• MoM increase in loan amount is 13%

## 🎯 Scope

• Average DTI is 13.3%, which is way below the good DTI score i.e. 35%, which means there is more loan potential in the market.

• Bad loans account for 13.8% of total loans. The target can be to bring it down to below 10%.

• Total lost amount due to bad loans is 32.2M.

• 53.3% (232.46M) of the total loan amount is taken for debt consolidation. 
 
• States with a bad loan percentage higher than average i.e. 13.8% should try to reduce it to the average.
