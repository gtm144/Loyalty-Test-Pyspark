# Loyalty-Test-Pyspark
A test design to verify my skills on Pyspark. Here, the challenge comes to create all procedures as its explained next.

## Basic Toolset
Candidates may use any cloud storage and compute platform of their choice.

Few things to keep in mind:
This challenge is focused on the ingestion and transformation of data required to derive insights. While it is not an expectation from this exercise, consider what might be required to turn your solution into a scalable, production solution. Some topics that you may be asked about include code versioning, testing, automation and documentation.
Consider how your code could be made more generic or reusable. Can object oriented principles be used to better encapsulate your data and encourage code re-use? 
Consider the use of partitioning. Even though the sample dataset is small, how may you use partitioning or other performance techniques to scale your solution to larger datasets?

## Data
The data provided is from a fake grocery store called ACME. There are 12 CSV files in total: 10 trans fact files, 1 location file and 1 product file. How the data can be integrated is pretty evident in the field names. Collector key that have positive values are customers that are in the loyalty program. There may be missing sales and units in some trans fact files that need to be replaced with zero value.

## Challenges
### Step 1: Data Gathering & Ingestion
Ingest your data into storage of a cloud platform of your choice. Do not modify the 
data during the process. While you do not need to make this repeatable, be 
prepared to discuss how you might automate this process if additional files were to 
be provided, and how you might ensure security of the data.

### Step 2: Prepare & Cleanse the data in memory
Prepare the data by combining the 10 trans fact files and replacing any null sales 
and null units with zero. Be prepared to discuss any additional considerations that 
you would need to take into account if you were asked to extend this process to a 
second (unrelated) retail store.

### Step 3: Gather insights from data
The data provided allows us to gather many different insights into the performance 
of the ACME business and performance of the loyalty program. Use the cleansed 
data above to provide the following insights.
- The president of company wants to understand which provinces and stores 
are performing well and how much are the top stores in each province 
performing compared with the average store of the province.
- The president further wants to know how customers in the loyalty program 
are performing compared to non-loyalty customers and what category of 
products is contributing to most of ACME’s sales
- Determine the top 5 stores by province and top 10 product categories by 
department.

### Step 4: Display your analytics (bonus points)
This is an optional bonus question. 
Create a dashboard showing absolute numbers, trend for last 12 months and year 
over year (YoY) for the following metrics:
- Sales, units, distinct count of transactions, distinct count of collectors
- Display the metrics for loyalty customers, non-loyalty customers and overall
- Consider how the president of ACME might use the dashboard and any further 
questions he may have that can be answered through the use of the dashboard.

---
# Development Workflow
This project have a continous development (CD) workflow in order to robust the code. For many data projects, I use the following sequence:
Development branch (dev) &rarr; Quality Assurance branch (qa) &rarr; Production branch (prod

**- Development Branch** All tryouts, tests, experiments will be handle in this branch. Once, final codebase is ready, it will be send to quality assurance. 

**- QA Branch** When pull requests arrive to this branch, github actions will perform unit tests on the module functions. Once it gets accepted, data would be put on manual quality tests. If many of those tests can be automated they will be integraget to github actions. At the end, when everything is good to go it will be send to production.  

**- Production Branch** Final code base will be written here.

