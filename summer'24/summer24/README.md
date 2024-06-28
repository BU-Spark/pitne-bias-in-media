Boston Globe Data Processing and Analysis

Project Overview

This repository contains a collection of Jupyter notebooks that detail the processing, cleaning, merging, and analysis of the Boston Globe dataset, alongside relevant census data. The primary focus is on sentiment analysis, keyword analysis, and geographic analysis of the articles.

Repository Structure

1. bg_data_processing.ipynb: Processes Boston Globe data for a specific year, cleaning and preparing it for analysis.
2. census_API.ipynb: Fetches and processes census data using the Census API, preparing it for integration with the article dataset.
3. cleaning_merging.ipynb: Merges multiple years of Boston Globe data and census data, standardizing and cleaning the datasets for analysis.
4. extracting_2010tracts.ipynb: Extracts and updates census tract IDs for articles using geographic coordinates.
5. final_keyword_analysis.ipynb: Conducts keyword analysis on the article dataset, generating word clouds and sentiment scores.
6. more_analysis.ipynb: Additional analyses on the dataset, focusing on various aspects of the data.
7. sentiment_analysis.ipynb: Performs sentiment analysis on the articles and visualizes the results.
8. specific_keyword_analysis.ipynb: Analyzes specific keywords in the articles and their occurrences.
9. trial_keyword_analysis.ipynb: Similar to final_keyword_analysis, but used for testing and trial purposes.

Usage

Each Jupyter notebook in this repository can be run independently. The notebooks are organized to follow a logical progression from data extraction to processing, merging, and analysis.

Data Processing: Start with bg_data_processing.ipynb to clean and prepare the Boston Globe data for a specific year.
Census Data: Use census_API.ipynb to fetch and process census data.
Data Merging: Merge the datasets using cleaning_merging.ipynb.
Tract Extraction: Extract and update census tracts with extracting_2010tracts.ipynb.
Keyword and Sentiment Analysis: Perform keyword and sentiment analysis using final_keyword_analysis.ipynb, specific_keyword_analysis.ipynb, and sentiment_analysis.ipynb.
Additional Analysis: Further analyze the data with more_analysis.ipynb and trial_keyword_analysis.ipynb.