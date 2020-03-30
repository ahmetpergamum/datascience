SELECT
	customerNumber,
	customerName,
MAX(creditLimit) as max_kredi_limiti
FROM customers;