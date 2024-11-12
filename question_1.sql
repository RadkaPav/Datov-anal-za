-- Rostou v průběhu let mzdy ve všech odvětvích, nebo v některých klesají?

SELECT year, ROUND(AVG(average_wages),0), industry FROM wages_food
GROUP BY industry, year
ORDER BY industry, year;
