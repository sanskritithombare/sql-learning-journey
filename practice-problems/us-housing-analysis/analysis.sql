-- =====================================================
-- Project: US Housing Units Analysis
-- Author: Sanskriti Thombare
-- Source: Mode Analytics
-- Dataset: tutorial.us_housing_units
-- =====================================================

-- =====================================================
-- Question 1
-- How have housing units changed across U.S. regions over time?
-- =====================================================

SELECT
    year,
    west,
    south,
    midwest,
    northeast
FROM tutorial.us_housing_units
ORDER BY year;




-- =====================================================
-- Question 2
-- Which years recorded more than 50 housing units in the West?
-- =====================================================

SELECT *
FROM tutorial.us_housing_units
WHERE west > 50;


-- =====================================================
-- Question 3
-- Which years had fewer than or equal to 20 housing units in the South?
-- =====================================================

SELECT *
FROM tutorial.us_housing_units
WHERE south <= 20;


-- =====================================================
-- Question 4
-- Calculate the average housing units between
-- the West and South regions.
-- =====================================================

SELECT
    year,
    month,
    west,
    south,
    (west + south) / 2 AS south_west_avg
FROM tutorial.us_housing_units;


-- =====================================================
-- Question 5
-- Find years where the West exceeded the combined
-- housing units of the Midwest and Northeast.
-- =====================================================

SELECT
    year,
    month,
    west,
    midwest,
    northeast
FROM tutorial.us_housing_units
WHERE west > (midwest + northeast);