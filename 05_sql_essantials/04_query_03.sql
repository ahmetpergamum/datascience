SELECT
	customerNumber,
    COUNT(*) as siparis_sayisi
FROM orders
GROUP BY customerNumber
ORDER BY siparis_sayisi;