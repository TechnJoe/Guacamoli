

 
Temperature Impact on US Avocado Sales

The goal of our project is to be able to use two datasets to uncover trends in weather (temperature) and the sale of avocados (conventional and organic) in California. This will be completed by pulling a dataset containing avocado sales from Kaggle and a temperature dataset from NOAA.  Datasets will be merged in a Jupyter notebook to clean and transform the information.  Once we have our clean data we will then load the cleaned datasets into postgres as our final production database. 

Sources:
Kaggle - https://www.kaggle.com/timmate/avocado-prices-2020

NOAA - https://www.ncdc.noaa.gov/cag/statewide/time-series/4/tavg/all/10/2015-2020?base_prd=true&begbaseyear=1901&endbaseyear=2000

Avocado2020- average the price and add total sales for each week in csv.



Our first steps in cleaning up the datasets involved finding and removing irelevant data.
- We used an excel worksheet to drop the PLU Codes columns fromn the avocado sales dataset. PLU codes are used   by retail industry to assist with point-of-sale (POS) identification.
- We also dropped 4 columns containing various avocado bag sizes.
- Used Python's Pandas library in Jupyter Notebook to load the 2 datasets.
- Created Dataframes for both  Avocado sales and Climate datasets  
- Created queries to address our hypothesis by merging the data with an outer join.

Load
- Created engine in Jupyter Notebook to connect to Postgres Db
- Created database in Postgresql and tables to reflect to the Pandas Dataframe.
- Connected the Postgresql database to Pandas.
- Stored the data inside the avocados database. 