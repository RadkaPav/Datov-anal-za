--Která kategorie potravin zdražuje nejpomaleji (je u ní nejnižší percentuální meziroční nárůst)?

CREATE TABLE prices_in_years AS
SELECT 
  year, 
  AVG(average_prices) AS average_price, 
  food 
FROM mzdy_potraviny
GROUP BY year, food
ORDER BY food, year;

CREATE TABLE prices_increase AS
SELECT
    year,
    food,
    LAG(average_price) OVER (PARTITION BY food ORDER BY year) AS last_year_price,
    average_price AS this_year_price,
    ((average_price - LAG(average_price) OVER (PARTITION BY food ORDER BY year)) / (LAG(average_price) OVER (PARTITION BY food ORDER BY year)) * 100) AS increase
FROM
    prices_in_years
ORDER BY
    food, year;

SELECT food, ROUND(AVG(increase),2) FROM prices_increase
GROUP BY food
ORDER BY ROUND(AVG(increase),2);
