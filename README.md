

TEMPERATURE IMPACT ON US AVOCADO SALES

The goal of our project is to be able to clean and transform two datasets then load them into a database for further analysis to uncover trends in weather (temperature) and the sale of avocados (conventional and organic) in California. This will be completed by pulling a dataset containing avocado sales from Kaggle and a temperature dataset from NOAA.  Datasets will be merged in a Jupyter notebook to clean and transform the information.  Once we have our clean data we will then load the cleaned datasets into postgres as our final production database. 

BACKGROUND:
- Finding a relationship between two separate datasets
- Can we notice a trend between Avocado sales and temperature in California between 2015 and 2020?
- Extract , Transform, Load processes

EXTRACTION
Used two different datasets:
- Climate at a Glance (CSV), Source: NOAA 
- Avocados (CSV), Source: Kaggle
Purpose:
Find two variables:  Avocado Volume/Sales VS. Climate
We found a common theme between the two sets which was time. 
Then we had to find data sets that reflected same time period (2015-2020). 
Narrowed down to California due to high volume of harvesting. 
Sources:links
Kaggle - https://www.kaggle.com/timmate/avocado-prices-2020

NOAA - https://www.ncdc.noaa.gov/cag/statewide/time-series/4/tavg/all/10/2015-2020?base_prd=true&begbaseyear=1901&endbaseyear=2000

TRANSFORMATION:
Our first steps in cleaning up the datasets involved finding and removing irelevant data.
- We used an excel worksheet to drop the PLU Codes columns from the avocado sales dataset. PLU codes are used by retail industry to assist with point-of-sale (POS)     identification.
- We also dropped 4 columns containing various avocado bag sizes.
- Used Python's Pandas library in Jupyter Notebook to load the 2 datasets.
- Created Dataframes for both  Avocado sales and Climate datasets  
- Created queries to address our hypothesis by merging the data with an outer join.

LOAD:
- Created engine in Jupyter Notebook to connect to Postgres Db
- Created database in Postgresql and tables to reflect to the Pandas Dataframe.
- Connected the Postgresql database to Pandas.
- Stored the data inside the avocados database. 
- We used structured database (Postgresql) since our datasets are clearly defined and searchable.
