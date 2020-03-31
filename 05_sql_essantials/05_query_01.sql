WITH ulke_buyukluk AS(
SELECT 
	country as ulke,
	COUNT(*) musteri_sayisi,
CASE WHEN COUNT(*) > 20 THEN 'buyuk ulke'
	WHEN COUNT(*) < 10 THEN 'kucuk ulke'
	WHEN COUNT(*) >= 10 AND COUNT(*) <= 20 THEN 'orta ulke'
END AS buyukluk
FROM customers
GROUP BY country
ORDER BY musteri_sayisi;)

SELECT *
FROM ulke_buyukluk;