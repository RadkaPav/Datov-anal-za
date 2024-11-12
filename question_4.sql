-- Existuje rok, ve kterém byl meziroční nárůst cen potravin výrazně vyšší než růst mezd (větší než 10 %)?

CREATE OR REPLACE VIEW average_prices_wages AS
SELECT year, ROUND(AVG(average_prices),2) AS price, ROUND(AVG(average_wages),0) AS wage FROM mzdy_potraviny
GROUP BY year;

SELECT 
  year,
  LAG(price) OVER (ORDER BY year) AS last_year_price, 
  price,  
  LAG(wage) OVER (ORDER BY year) AS last_year_wage, 
  wage,
  ROUND(((price - LAG(price) OVER (ORDER BY year)) / (LAG(price) OVER (ORDER BY year)) * 100), 2) AS price_increase,
  ROUND(((wage - LAG(wage) OVER (ORDER BY year)) / (LAG(wage) OVER (ORDER BY year)) * 100), 2) AS wage_increase,
  ROUND(((price - LAG(price) OVER (ORDER BY year)) / (LAG(price) OVER (ORDER BY year)) * 100) - ((wage - LAG(wage) OVER (ORDER BY year)) / (LAG(wage) OVER (ORDER BY year)) * 100), 2) AS difference
FROM average_prices_wages
ORDER BY year;
