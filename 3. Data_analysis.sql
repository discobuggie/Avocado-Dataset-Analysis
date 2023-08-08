-- Data Analysis

-- Aggregating Total Volume Sold for Type
SELECT
  type,
  SUM(Total_Volume) AS Total_Sold
FROM `prices.cleaned_avocado_prices`
GROUP BY type;

-- Aggregating Total Volume Sold for Each Year
SELECT
  year,
  SUM(Total_Volume) AS Total_Sold
FROM `prices.cleaned_avocado_prices`
GROUP BY year;

-- Calculating Mean Price for Each Year
SELECT
  year,
  AVG(AveragePrice) AS Average_Price
FROM `prices.cleaned_avocado_prices`
GROUP BY year
ORDER BY year;

-- Calculating Mean Prices for Conventional and Organic Avocados by Year
SELECT
  year,
  type,
  AVG(AveragePrice) AS Average_Price
FROM `prices.cleaned_avocado_prices`
GROUP BY year, type
ORDER BY year, type;

-- Identifying the Five Regions with the Highest Total Volume Sold
SELECT
  region,
  AVG(total_volume) AS Average_Total_Volume
FROM `prices.cleaned_avocado_prices`
GROUP BY region
ORDER BY Average_Total_Volume DESC
LIMIT 5;

-- Highest Average Avocado Price by Year and Region: Unveiling the Pinnacle of Average Prices
SELECT
  year,
  region,
  AVG(AveragePrice) AS Average_Price
FROM `prices.cleaned_avocado_prices`
GROUP BY year, region
ORDER BY Average_Price DESC
LIMIT 1;

-- Cheapest Average Avocado Price by Region: Discovering the Most Affordable Avocado Prices
SELECT
  region,
  AVG(AveragePrice) AS Average_Price
FROM `prices.cleaned_avocado_prices`
GROUP BY region
ORDER BY Average_Price
LIMIT 1;
