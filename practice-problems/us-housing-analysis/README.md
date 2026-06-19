# US Housing Units Analysis

## Objective

Analyze housing construction trends across four U.S. regions using SQL.

## Dataset

Mode Analytics sample dataset:
tutorial.us_housing_units

## Skills Demonstrated

- SELECT
- WHERE
- Comparison operators
- Arithmetic operators
- Column comparisons
- Data visualization

## Key Findings

- South consistently had the highest housing construction.
- West ranked second throughout most years.
- Midwest and Northeast remained lower.
- Housing construction declined after 1973 across all regions.

## Visualization

SELECT
    year,
    west,
    south,
    midwest,
    northeast
FROM tutorial.us_housing_units
ORDER BY year;

![Housing Units by Region Over Time 📈][def]

[def]: housing-units.png


## Closing comments

This project helped me apply foundational SQL concepts to a real-world dataset while practicing data analysis and visualization. It strengthened my understanding of comparison operators, filtering, and trend analysis using SQL. As a Data QA professional , I aim to combine SQL, data validation, and analytical thinking to ensure data accuracy, identify anomalies, and support reliable business reporting.