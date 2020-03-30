SELECT 
	country as ulke,
	COUNT(*) musteri_sayisi
FROM customers
GROUP BY country
ORDER BY musteri_sayisi;