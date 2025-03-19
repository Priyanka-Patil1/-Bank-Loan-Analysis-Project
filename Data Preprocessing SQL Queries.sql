
-- use the new database created bank_loan_analysis
SELECT * FROM bank_loan_data

-- 1.1 Total Loan Applications
SELECT COUNT(id) AS Total_Loan_Applications FROM bank_loan_data

-- 1.2 MTD Loan Applications
SELECT COUNT(id) AS MTD_Total_Loan_Applications FROM bank_loan_data
WHERE MONTH(issue_date) =12 AND YEAR(issue_date) = 2021

-- 1.3 PMTD Loan Applications
SELECT COUNT(id) AS PMTD_Total_Loan_Applications FROM bank_loan_data
WHERE MONTH(issue_date) =11 AND YEAR(issue_date) = 2021

-- 2.1 Total Funded Amount
SELECT SUM(loan_amount) AS Total_Funded_Amount FROM bank_loan_data

-- 2.2 MTD Funded Amount
SELECT SUM(loan_amount) AS MTD_Total_Funded_Amount FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

-- 2.3 PMTD Funded Amount
SELECT SUM(loan_amount) AS PMTD_Total_Funded_Amount FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

-- 3.1 Total Amount Received
SELECT SUM(total_payment) AS Total_Amount_received FROM bank_loan_data

-- 3.2 MTD Amount Received
SELECT SUM(total_payment) AS MTD_Total_Amount_received FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

-- 3.3 PMTD Amount Received
SELECT SUM(total_payment) AS PMTD_Total_Amount_received FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

-- 4.1 Average interest rates
SELECT Round(AVG(int_rate), 4) *100 AS Avg_Int_Rate FROM bank_loan_data

-- 4.2 MTD average interest rates
SELECT Round(AVG(int_rate), 4) *100 AS MTD_Avg_Int_Rate FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

-- 4.3 PMTD average interest rates
SELECT Round(AVG(int_rate), 4) *100 AS PMTD_Avg_Int_Rate FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

-- 5.1 Average dti
SELECT Round(AVG(dti), 4)*100 AS Avg_DTI FROM bank_loan_data

-- 5.2 MTD average dti
SELECT Round(AVG(dti), 4)*100 AS MTD_Avg_DTI FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

-- 5.3 PMTD average dti
SELECT Round(AVG(dti), 4)*100 AS PMTD_Avg_DTI FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

-- 6.1 Good Loan Application Percentage
SELECT
    (COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) * 100) / 
	COUNT(id) AS Good_Loan_Percentage
FROM bank_loan_data

-- 6.2 Good Loan Applications
SELECT COUNT(id) AS Good_Loan_Applications FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

-- 6.3 Good Loan Funded Amount
SELECT SUM(loan_amount) AS Good_Loan_Funded_amount FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

-- 6.4 Good Loan Amount Received
SELECT SUM(total_payment) AS Good_Loan_amount_received FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

-- 7.1 Bad Loan Application Percentage
SELECT
    (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100) / 
	COUNT(id) AS Bad_Loan_Percentage
FROM bank_loan_data

-- 7.2 Bad Loan Applications
SELECT COUNT(id) AS Bad_Loan_Applications FROM bank_loan_data
WHERE loan_status = 'Charged Off'

-- 7.3 Bad Loan Funded Amount
SELECT SUM(loan_amount) AS Bad_Loan_Funded_amount FROM bank_loan_data
WHERE loan_status = 'Charged Off'

-- 7.4 Bad Loan Amount Received
SELECT SUM(total_payment) AS Bad_Loan_amount_received FROM bank_loan_data
WHERE loan_status = 'Charged Off'

-- 8.1 Loan Status Grid View
SELECT
        loan_status,
        COUNT(id) AS Total_Loan_applications,
        SUM(total_payment) AS Total_Amount_Received,
        SUM(loan_amount) AS Total_Funded_Amount,
        AVG(int_rate * 100) AS Interest_Rate,
        AVG(dti * 100) AS DTI
    FROM
        bank_loan_data
    GROUP BY
        loan_status

-- 8.2 MTD Loan Status Grid View
SELECT 
	loan_status, 
	SUM(total_payment) AS MTD_Total_Amount_Received, 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 
GROUP BY loan_status

-- 9.1  Monthly Bank Loan Report Grid View
SELECT 
	MONTH(issue_date) AS Month_Number, 
	DATENAME(MONTH, issue_date) AS Month_name, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY MONTH(issue_date), DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date)

-- 9.2  State wise Bank Loan Report Grid View
SELECT 
	address_state AS State, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY address_state
ORDER BY address_state

-- 9.3  Term wise Bank Loan Report Grid View
SELECT 
	term AS Term, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY term
ORDER BY term

-- 9.3  Employee Length wise Bank Loan Report Grid View
SELECT 
	emp_length AS Employee_Length, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY emp_length
ORDER BY emp_length

-- 9.4  Purpose wise Bank Loan Report Grid View
SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY purpose
ORDER BY purpose

-- 9.5  Home ownership wise Bank Loan Report Grid View
SELECT 
	home_ownership AS Home_Ownership, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY home_ownership
ORDER BY home_ownership





