-- PRACTICE DIFFERENT FUNCTIONS LIKE COUNT(), SUM(), AVG(),MIN(),MAX()
--GROUP BY(), ORDER BY(), HAVING(), CASE WHEN THEN ELSE,

SELECT * FROM 
  tutorial.aapl_historical_stock_price;

SELECT COUNT(*)
  FROM tutorial.aapl_historical_stock_price;

SELECT COUNT(year) AS year,
       COUNT(month) AS month,
       COUNT(open) AS open,
       COUNT(high) AS high,
       COUNT(low) AS low,
       COUNT(close) AS close,
       COUNT(volume) AS volume
  FROM tutorial.aapl_historical_stock_price; -- Rows counted

  -- Write a query to calculate the average opening price (hint: you will need to use both COUNT and SUM, as well as some simple arithmetic.).

  SELECT SUM(OPEN)/COUNT(OPEN) as AVG FROM tutorial.aapl_historical_stock_price;

  -- What was Apple's lowest stock price (at the time of this data collection)?
  SELECT MIN(low) as lowest_stock_price FROM tutorial.aapl_historical_stock_price;

  -- Write a query that calculates the average daily trade volume for Apple stock.
  SELECT AVG(volume) FROM tutorial.aapl_historical_stock_price;

 Calculate the total number of shares traded each month. Order your results chronologically.

 SELECT year,
       month,
       SUM(volume) AS volume_sum
  FROM tutorial.aapl_historical_stock_price
 GROUP BY year, month
 ORDER BY year, month;

 SELECT year,
       month,
       MAX(high) AS month_high
  FROM tutorial.aapl_historical_stock_price
 GROUP BY year, month
HAVING MAX(high) > 400
 ORDER BY year, month;

 SELECT year,
       month,
       COUNT(*) AS count
  FROM tutorial.aapl_historical_stock_price
 GROUP BY year, month
 ORDER BY month, year;

SELECT player_name,year,        
CASE WHEN year = 'SR' THEN 'yes'  
ELSE 'no' END AS is_a_senior 
FROM benn.college_football_players;


SELECT CASE WHEN year = 'FR' THEN 'FR'
            WHEN year = 'SO' THEN 'SO'
            WHEN year = 'JR' THEN 'JR'
            WHEN year = 'SR' THEN 'SR'
            ELSE 'No Year Data' END AS year_group,
            COUNT(1) AS count
  FROM benn.college_football_players
 GROUP BY CASE WHEN year = 'FR' THEN 'FR'
               WHEN year = 'SO' THEN 'SO'
               WHEN year = 'JR' THEN 'JR'
               WHEN year = 'SR' THEN 'SR'
               ELSE 'No Year Data' END;


