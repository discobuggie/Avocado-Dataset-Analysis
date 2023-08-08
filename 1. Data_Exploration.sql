-- Data Exploration

-- checking the data types of all columns

SELECT column_name, data_type
FROM `prices`.INFORMATION_SCHEMA.COLUMNS
WHERE table_name = 'avocado_prices';


-- checking for number of null values in all columns

SELECT COUNT(*) - COUNT(int64_field_0) int64_field_0,
 COUNT(*) - COUNT(Date) Date,
 COUNT(*) - COUNT(AveragePrice) AveragePrice,
 COUNT(*) - COUNT(Total_Volume) Total_Volume,
 COUNT(*) - COUNT(_4046) _4046,
 COUNT(*) - COUNT(_4225) _4225,
 COUNT(*) - COUNT(_4770) _4770,
 COUNT(*) - COUNT(Total_Bags) Total_Bags,
 COUNT(*) - COUNT(Small_Bags) Small_Bags,
 COUNT(*) - COUNT(Large_Bags) Large_Bags,
 COUNT(*) - COUNT(XLarge_Bags) XLarge_Bags,
 COUNT(*) - COUNT(type) type,
 COUNT(*) - COUNT(year) year,
 COUNT(*) - COUNT(region) region
FROM `prices.avocado_prices`;

-- checking for duplicate rows

SELECT *
FROM `prices.avocado_prices`
GROUP BY
  Date,
  int64_field_0,
  AveragePrice,
  Total_Volume,
  _4046,
  _4225,
  _4770,
  Total_Bags,
  Small_Bags,
  Large_Bags,
  XLarge_Bags,
  type,
  year,
  region
HAVING COUNT(*) > 1;

-- Type -  2 unique types of avocados

SELECT DISTINCT type, COUNT(type) AS acovado_type
FROM `prices.avocado_prices`
GROUP BY type;

-- MAX and MIN AveragePrice

SELECT
  MAX(AveragePrice) AS Max_Average_Price,
  MIN(AveragePrice) AS Min_Average_Price
FROM `prices.avocado_prices`;

-- MAX and MIN TotalVolume

SELECT
  MAX(Total_Volume) AS max_volume,
  MIN(Total_Volume) AS Min_volume
FROM `prices.avocado_prices`;
