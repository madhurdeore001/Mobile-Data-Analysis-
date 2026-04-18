-- ALL RECORDS 
-- Q1 
SELECT * 
FROM mobile_data;

-- FIND TOP 10 MOST EXPENSIVE SMART PHONES
-- Q2
SELECT model, price
FROM mobile_data
ORDER BY price DESC
LIMIT 10;

-- FIND TOP 10 CHEAPEST SMART PHONES
-- Q3
SELECT model, price
FROM mobile_data
ORDER BY price ASC
LIMIT 10;

-- COUNT TOTAL NUMBER OF SMARTPHONES
-- Q4
SELECT COUNT(*) AS total_phones
FROM mobile_data;

-- FINDING AVG SMARPHONE PRICING
-- Q5
SELECT ROUND(AVG(price), 2) AS average_price
FROM mobile_data;

-- FIND ALL 5G SUPPORTED SMARTPHONES
-- Q6
SELECT model, price
FROM mobile_data
WHERE network_type = '5g';

-- COUNT NUMBER OF 5G & 4G SMARTPHONES 
-- Q7
SELECT network_type, COUNT(*) AS total
FROM mobile_data
GROUP BY network_type;

-- FIND PHONES WITH RATING ABOVE 50
-- Q8
SELECT model, rating
FROM mobile_data
WHERE rating > 50
ORDER BY rating DESC;

-- FIND AVG RATING BY OPERATING SYSTEM
-- Q9
SELECT os, ROUND(AVG(rating), 2) AS avg_rating
FROM mobile_data
GROUP BY os;

-- FIND PHONES WITH BATTERY GREATER THAN 5000 MAH
-- Q10
SELECT model, battery_mah
FROM mobile_data
WHERE battery_mah > 5000;

-- FIND PHONES SUPPORTING FAST CHARGING ABOVE 60W
-- Q11
SELECT model, fast_charge_w
FROM mobile_data
WHERE fast_charge_w > 60
ORDER BY fast_charge_w DESC;

-- FIND PHONES THAT SUPPORT NFC
-- Q12
SELECT model
FROM mobile_data
WHERE NFC = 'YES';

-- COUNT PHONES BY RAM SIZE 
-- Q13
SELECT ram_gb, COUNT(*) AS total_phones
FROM mobile_data
GROUP BY ram_gb
ORDER BY ram_gb;

-- FIND AVG PRICE BY RAM SIZE
-- Q14
SELECT ram_gb, ROUND(AVG(price), 2) AS avg_price
FROM mobile_data
GROUP BY ram_gb;

-- FIND MOBILES WITH EXPANDABLE MEMORIES 
-- Q15
SELECT model, memory_card_max_gb
FROM mobile_data
WHERE memory_card_supported = 1;

-- FIND PHONES PRICE ABOVE AVG PRICE 
-- Q16
SELECT model, price
FROM mobile_data
WHERE price > (SELECT AVG(price) FROM mobile_data);

-- RANK PHONE BY PRICE (HIGHST FIRST)
-- Q17
SELECT 
    model,
    price,
    RANK() OVER (ORDER BY price DESC) AS price_rank
FROM mobile_data;

-- RANK PHONE BY PRICING (CHEAPEST(LOWEST) FIRST)
-- Q18
SELECT 
    model,
    price,
    RANK() OVER (ORDER BY price asc) AS price_rank
FROM mobile_data;

-- FIND BEST VALUE-FOR-MONEY PHONE (RATING VS PRICE)
-- Q19
SELECT 
    model,
    price,
    rating,
    ROUND(rating / price, 5) AS value_score
FROM mobile_data
ORDER BY value_score DESC
LIMIT 10;

-- FIND TOP 5 PHONES WITH HIGHEST FAST CHARGING 
-- Q20
SELECT model, fast_charge_w
FROM mobile_data
ORDER BY fast_charge_w DESC
LIMIT 5;

-- FIND PHONES WITH SCREEN SIZE BETWEEN 6.3 AND 6.7
-- Q21
SELECT model, screen_size_in
FROM mobile_data
WHERE screen_size_in BETWEEN 6.3 AND 6.7;
