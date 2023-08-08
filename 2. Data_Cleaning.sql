-- Data Cleaning

DROP TABLE IF EXISTS`prices.cleaned_avocado_prices`

--Create a new table with the desired schema (excludingint64_field_0 to be removed):

CREATE TABLE `prices.cleaned_avocado_prices`
AS
SELECT
  Date,
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

FROM
`prices.avocado_prices`
