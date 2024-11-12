# Datová analýza

Pro projekt byly použity datové sady z Národního katalogu otevřených dat, a to datové sady **Zaměstnanci a průměrné hrubé měsíční mzdy podle odvětví** a **Průměrné spotřebitelské ceny vybraných výrobků - potravinářské výrobky**

Cílem projektu bylo pomocí SQL dotazů odpovědět na 4 otázky.\
    1. Rostou v průběhu let mzdy ve všech odvětvích, nebo v některých klesají?\
    2. Kolik je možné si koupit litrů mléka a kilogramů chleba za první a poslední srovnatelné období v dostupných datech cen a mezd?\
    3. Která kategorie potravin zdražuje nejpomaleji (je u ní nejnižší percentuální meziroční nárůst)?\
    4. Existuje rok, ve kterém byl meziroční nárůst cen potravin výrazně vyšší než růst mezd (větší než 10 %)?

## Výstup projektu
Data byla porovnávána pouze pro společené roky obou datových sad, tedy mezi lety 2006 a 2018.

1. V průběhu sledovaných let mzdy ve všech odvětvích rostly, nikoliv však pravidelně. Docházelo i k poklesům. Největší pokles mezd byl zaznamenán mezi lety 2012 a 2013, kdy mzdy poklesly u celkem 10 odvětví.
2. V roce 2006 při průměrné mzdě 20 677 Kč a průměrné ceně 16,14 Kč za 1 kus konzumního chleba bylo možné koupit 1 281 ks tohoto produktu. Průměrná cena za 1 l mléka byla 14,39 Kč, bylo tedy možné si koupit 1 437 l mléka. V roce 2018 stoupla průměrná mzda na 32 485 Kč, konzumní chléb podražil na 24,22 Kč/ks a mléko na 19,85 Kč/l. V tomto roce bylo tedy možné pořídit 1 341 ks chleba a 1 637 l mléka.
3. Nejméně zdražovat cukr krystal s průměrným meziročním poklesem o 1,91 %. Nejnižší meziroční nárůst zaznamenaly rajská jablka v roce 2007 s poklesem o 30,26 %.
4. Rozdíl v nárůstu cen a mezd ve sledovaných letech nikdy nebyl větší než 10 %, největší rozdíl byl v roce 2013, a to 6,44 %.
