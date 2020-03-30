SELECT 
	customerNumber, 
	customerName, 
    creditLimit 
FROM customers 
WHERE creditLimit>100000
ORDER BY creditLimit;