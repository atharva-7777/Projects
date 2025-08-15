SELECT * FROM dbo.bank_loan_data

SELECT
     home_ownership AS Home_Ownership,
	 COUNT(id) AS Total_Loan_Applications,
	 SUM(loan_amount) AS Total_Funded_Amount,
	 SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
WHERE grade = 'A' and address_state = 'CA'
     GROUP BY Home_Ownership
	 ORDER BY COUNT(id) DESC




