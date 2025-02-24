**Project 2 Overview:<br>**
This project involves building an ETL (Extract, Transform, Load) pipeline for crowdfunding data.<br>
<br>
**Objective:** Extract data from a given source, transform it as needed, and load it into a database. The project also includes analyzing and querying the crowdfunding data.<br>
<br>
**Outcome:** This project creates a database that houses the different companies that have launched a crowdfunding campaign, complete with information such as contact info for the campaign, the description of the company, and whether or not the crowdfunding was successful. With this database, the user can search for companies and campaigns based on specific parameters that the user wants. <br>
<br>

**Method:** We extracted Excel data and created 4 different dataframes (Category, Subcategory, Campaign, Contacts) and transformed the data by renaming columns and converting data types. For the Contacts dataframe specifically, we used regex commands to clean and transform the dataframe into a more readable document showing with 4 columns. We would then merge 3 of the dataframes (Category, Subcategory, and Campaign) to create a more comprehensive dataframe of the different crowdfunding campaigns. After cleaning and transforming, we would export these dataframes into 4 separate CSV files. We also would create a database using PostgreSQL from an ERD schema that we sketched to help guide our primary key and foreign key designations for each table. After the creation of the database, we imported the different CSV files into the appropriate tables and then ran a SELECT * statement to verify that the files were added correctly.
