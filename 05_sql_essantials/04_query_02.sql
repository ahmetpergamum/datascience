SELECT
	country as ulke,
	COUNT(*) as ulke_musteri_sayisi
FROM customers
GROUP BY country;