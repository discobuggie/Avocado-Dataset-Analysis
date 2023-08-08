# Introduction

The dataset originates from [Kaggle](https://www.kaggle.com/datasets/neuromusic/avocado-prices) and focuses on avocado-related information. For further details about its source and content, interested individuals may refer to Kaggle's website, specifically the section dedicated to avocado data. The dataset encompasses data regarding the prices of Hass avocados and the quantity sold for various avocado types across different time periods. Originally, this data was provided by the Hass Avocado Board. Here's how they describe the data on their website:
>The table below represents weekly 2018 retail scan data for National retail volume (units) and price. Retail scan data comes directly from retailers’ cash registers based on actual retail sales of Hass avocados. Starting in 2013, the table below reflects an expanded, multi-outlet retail data set. Multi-outlet reporting includes an aggregation of the following channels: grocery, mass, club, drug, dollar and military. The Average Price (of avocados) in the table reflects a per unit (per avocado) cost, even when multiple units (avocados) are sold in bags. The Product Lookup codes (PLU’s) in the table are only for Hass avocados. Other varieties of avocados (e.g. greenskins) are not included in this table.

<h3> Quick Links </h3> 

Data Source: [Avocado Prices](https://www.kaggle.com/datasets/neuromusic/avocado-prices)  
SQL Queries:
.  
Data Visualization: [Tableau](https://public.tableau.com/views/AvocadoMarketTrendAnalysis/Story1?:language=en-US&:display_count=n&:origin=viz_share_link)  

# Ask

<h3>Business Task</h3>  
It is a well known fact that Millenials LOVE Avocado Toast. It's also a well known fact that all Millenials live in their parents basements. Clearly, they aren't buying home because they are buying too much Avocado Toast! But maybe there's hope… if a Millenial could find a city with cheap avocados, they could live out the Millenial American Dream. The dataset contains intriguing variables, including the average price, total sales volume, quantity of bags sold, and avocado type. Upon examining these columns, I found myself pondering a couple of questions to explore further. Firstly, I wondered if the recent trend of millennials' admiration for 'avocado toast' has <strong>contributed to a surge in the total volume of avocado sale</strong>. Additionally, I was curious about the <strong>price trends</strong>., considering that avocados have transformed from the not-so-appealing green smoothie of childhood to an Instagram-worthy meal. Uncovering the answers to these questions could shed light on the impact of changing perceptions and preferences surrounding avocados.

<h3>Analysis Questions</h3>  
&nbsp;1. Which is the best city for millenials to have their avocado toast AND buy a home?  
&nbsp;2. Which type of Avocados are more in demand (Conventional or Organic)?  
&nbsp;3. What are TOP 5 regions where Average price are very high?
&nbsp;4. What are TOP 5 regions where Average consumption is very high?  
&nbsp;5. In which year and for which region was the Average price the highest?  




# Prepare

<h3> Data Source </h3>  
The dataset I worked with is Avocado prices and is available on Kaggle to analyze and identify trends. It consists of avocado sales data in the USA market from 2015 to 2018.  

<h3> Data Organization </h3>  
The data has already been combined and comprises of 1 file with 18249 observations of 14 columns.

&nbsp;1. Date - Date of the observation between 2015-2018  
&nbsp;2. Average Price - Average Price of a single avocado  
&nbsp;3. Total Volume - Total # of Avocados Sold  
&nbsp;4. 4046/4225/4770 - Total Volume of avocados sold by PLU  
&nbsp;5. Total Bags - Total bags sold  
&nbsp;6. Small/Large/XLarge Bags - Total Bags sold by type  
&nbsp;7. Type - Organic or Conventional  
&nbsp;8. Year - Year of observation  
&nbsp;9. Region - City or Region of the observation

# Process

For cleaning and exploring the dataset, BigQiery is the chosen platform.

<h3> Data Organization </h3>  
SQL Query:  
Reviewing the data to identify and understand any inconsistencies present.  

Findings and Observations:  
&nbsp; 1. Below is a table displaying all column names along with their respective data types.  Note that the column "int64_field_0" is just a useless index feature that will be removed later.  
&nbsp;&nbsp;&nbsp;&nbsp; ![Screenshot 2023-08-01 at 1 53 11 PM](https://github.com/discobuggie/Avocado-Dataset-Analysis/assets/108239917/6fcab9fd-43e1-4407-a7d1-b37e8e702abe)

&nbsp; 2. The table has no null values and no duplicate rows. 
&nbsp;&nbsp;&nbsp;&nbsp; ![Screenshot 2023-08-01 at 1 59 12 PM](https://github.com/discobuggie/Avocado-Dataset-Analysis/assets/108239917/1fb19fdc-d52d-45a3-b570-db514b8d5120)

&nbsp; 3. There are 2 unique types of avocados in our data.  
&nbsp;&nbsp;&nbsp;&nbsp;![Screenshot 2023-08-01 at 2 15 29 PM](https://github.com/discobuggie/Avocado-Dataset-Analysis/assets/108239917/ae22c4c9-2537-4c9f-8006-30411771ef6d)

&nbsp; 4. The MIN and MAX prices of avocados.  
&nbsp;&nbsp;&nbsp;&nbsp;![Screenshot 2023-08-01 at 2 34 05 PM](https://github.com/discobuggie/Avocado-Dataset-Analysis/assets/108239917/865446cf-5289-4b36-9108-077c1c5e40ce)

&nbsp; 5. The MIN and MAX volume of sold avocados.  
&nbsp;&nbsp;&nbsp;&nbsp;![Screenshot 2023-08-01 at 3 07 53 PM](https://github.com/discobuggie/Avocado-Dataset-Analysis/assets/108239917/a295af44-bc0a-4ef5-aa17-ee2fc81e00d9)

&nbsp; 5. The column that neesd to be removed is **int64_field_0** as it does not add value to our analysis. 

<h3>Data Cleaning</h3>

SQL Query: Data Cleaning

&nbsp; 1. The column **int64_field_0** has been removed.

# Analyze and Share  
SQL Query:  
Data Visualization: [Tableau](https://public.tableau.com/views/AvocadoMarketTrendAnalysis/Story1?:language=en-US&:display_count=n&:origin=viz_share_link)  

The data is stored appropriately and is now prepared for analysis. I queried multiple relevant tables for the analysis and visualized them in Tableau.

&nbsp;Q. 1. Which type of Avocados are more in demand (Conventional or Organic)?  
Just over 2% of our dataset is organic. Conventional are more in demand and the average price of avocados reached their peak in 2017, 
around $1.52.  
![Sales 2015-2018](https://github.com/discobuggie/Avocado-Dataset-Analysis/assets/108239917/53af0456-c7cd-446f-ae33-31a5e9fd90e7)

&nbsp;Q. 2 & 3. What are TOP 5 regions where average price and average consumption are very high?  
![prices vs consumption (1) copy](https://github.com/discobuggie/Avocado-Dataset-Analysis/assets/108239917/91fcdb83-412f-4dea-b008-d3c109d30725) ![prices vs consumption (1)](https://github.com/discobuggie/Avocado-Dataset-Analysis/assets/108239917/dab7d994-dd64-409c-9d4a-8167b4d24cd0)  
Amidst these dynamics, Houston emerges as an attractive destination for avocado enthusiasts seeking cost-effective indulgence.

&nbsp;Q. 4. In which year and for which region was the Average price the highest?  
The pink represents the year 2017 and is moslty the last dot to appear in every year when describing average prices. It appears that Avocado prices experienced a significant surge due to heightened demand in the San Francisco region during the year 2017. This trend is widely acknowledged and can be verified through a quick Google search.
![Avg prices by Region](https://github.com/discobuggie/Avocado-Dataset-Analysis/assets/108239917/b1890aaa-25a7-4486-842d-5bdb0c03a124)


