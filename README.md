# Balochistan: Mapping the protest movement against enforced disappearances. 

## Overview
This repository contains the data, scrapers, and analysis notebooks for this project for Columbia Journalism School's Data Studio class. 
With this project I set out to map the protest movement in Balochistan, Pakistan's conflict-ridden province where there's an insurgency going on and where the state/military forces are accused of human rights violations. 
You can read my piece here: [somaiyahhafeez.github.io/balochistan](https://somaiyahhafeez.github.io/balochistan)
## Objectives
- Gather data on protests and conflict incidents in Balochistan.
- Map protest locations using data by ACLED.
- Present findings through visualizations and narratives.

## Key Findings
- ACLED has a granular database on Balochistan.
- Protest movement after the case of Balach Mola Bakhsh was widespread.
- There is very less data on Balochistan.
## Data Collection Process
- Data was collected using Armed Conflict Location & Event Data, a non-profit organization working on conflicts across the world. The data for the chart was collected by scraping data from Paank, an organization aimed at documenting human rights violations in the province.
- Scraper was written in Python using `requests`, `BeautifulSoup`, and `pandas`.
- Protest data from the Baloch Yakjehti Committee (BYC) was extracted from ACLED.

## Data Analysis Process
- Data was cleaned and processed using Python and pandas.
- Visualizations were created using datawrapper.

## Skills & Growth
- Improved data visualization and mapping skills.

## Challenges & Future Work
- The paank data as well as ACLED data has some cavaets as these are reported cases in regional and local media. 
- Couldn't map on QGIS and couldn't create a visualization of missing persons data as I wanted to: a more interactive viz that showed the information of each case.


## Data & Notebooks
- **Data:** Hosted in the `data/` folder: the asia_pacific_acled.csv file is above 100MB so not hosted here. Can be downloaded from here: https://acleddata.com/curated-data-files/
- **Scrapers & Notebooks:** Located in the `analysis/` folder.
- **Key Files:**
  - `paank_scraper_and_cleaner.py` – Web scraper for gathering data.
  - `ACLED_data_cleaning_protests_in_Balochistan` – Jupyter notebook for data cleaning of ACLED.


