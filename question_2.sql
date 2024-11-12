--Kolik je možné si koupit litrů mléka a kilogramů chleba za první a poslední srovnatelné období v dostupných datech cen a mezd?

SELECT 
  year, 
  average_prices, 
  food, 
  ROUND(AVG(average_wages),0) AS average_wage, 
  ROUND((ROUND(AVG(average_wages),0)/average_prices),0) AS count_food 
FROM mzdy_potraviny
WHERE food LIKE 'Chléb%' OR food LIKE 'Mléko%'
GROUP BY year, average_prices, food
ORDER BY year, food
