CREATE TABLE wages_food AS
SELECT 
	potraviny.rok AS year,
	ROUND(AVG(hodnota),2) AS average_prices,
	reprcen_txt AS food,
	ROUND(AVG(mzdy.hodnota_mzdy),0) AS average_wages,
	odvetvi_txt AS industry
FROM potraviny
JOIN mzdy
ON potraviny.rok = mzdy.rok
WHERE mzdy.stapro_kod_mzdy = 5958
GROUP BY potraviny.rok, reprcen_txt, odvetvi_txt
ORDER BY potraviny.rok;
