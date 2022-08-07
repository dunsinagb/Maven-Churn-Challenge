--Exploratory data analysis 
--Author : Oluwadunsin Agbolabori
--Data source : (https://www.mavenanalytics.io/data-playground)

/* ======================= TABLES ========================*/

--- CREATE TABLE 1
CREATE TABLE PUBLIC.CHURN (
Customerid CHAR (50),
Gender CHAR (50),
Age INT,
Married CHAR (50),
Numberofdependents INT,
City CHAR (50),
Zipcode INT,
Latitude DECIMAL,
Longitude DECIMAL,
Numberofreferrals INT,
Tenureinmonths INT,
Offer CHAR (50),
Phoneservice CHAR (50),
Avgmonthlylongdistancecharges DECIMAL,
Multiplelines CHAR (50),
Internetservice CHAR (50),
Internettype CHAR (50),
Avgmonthlygbdownload INT,
Onlinesecurity CHAR (50),
Onlinebackup CHAR (50),
Deviceprotectionplan CHAR (50),
Premiumtechsupport CHAR (50),
Streamingtv CHAR (50),
Streamingmovies CHAR (50),
Streamingmusic CHAR (50),
Unlimiteddata CHAR (50),
Contract CHAR (50),
Paperlessbilling CHAR (50),
Paymentmethod CHAR (50),
Monthlycharge DECIMAL,
Totalcharges DECIMAL,
Totalrefunds DECIMAL,
Totalextradatacharges DECIMAL,
Totallongdistancecharges DECIMAL,
Totalrevenue DECIMAL,
Customerstatus CHAR (50),
Churncategory CHAR (50),
Churnreason CHAR (50)

);

COPY PUBLIC.CHURN FROM '/private/tmp/telecom_customer_churn.csv' WITH CSV HEADER

SELECT * FROM PUBLIC.CHURN

--- CREATE TABLE 2
drop table public.dictionary

CREATE TABLE PUBLIC.DICTIONARY (
	Code CHAR (50),
	Field CHAR (50),
	Description CHAR (1000)
);

COPY PUBLIC.DICTIONARY FROM '/private/tmp/telecom_data_dictionary.csv' with delimiter ',' csv header encoding 'windows-1251';

SELECT * FROM PUBLIC.DICTIONARY

--- CREATE TABLE 3
drop table public.POPULATION

CREATE TABLE PUBLIC.POPULATION (
	Zipcode CHAR (50),
	Population1 INT
);

COPY PUBLIC.POPULATION FROM '/private/tmp/telecom_zipcode_population.csv' with delimiter ',' csv header encoding 'windows-1251';

SELECT * FROM PUBLIC.POPULATION

/*======================== END TABLES ======================*/


/* =================== QUERY QUESTIONS =================================== */
--- Select major dataset
SELECT * FROM churn;

--- Select supplementary dataset 1
SELECT * FROM population;

--- Row Count
SELECT COUNT(*) FROM churn;

--- Count Distinct Customer ID to remove any duplicate
SELECT COUNT(DISTINCT "customerid") FROM churn;

--- Percentage comparison of customer status (Stayed, Churned and New Joined Customer)
SELECT 
    COUNT(CASE WHEN "customerstatus" = 'Stayed' THEN customerid ELSE NULL END) AS Stayed,
	CONCAT(COUNT(CASE WHEN "customerstatus" = 'Stayed' THEN customerid ELSE NULL END) *100 / COUNT(DISTINCT customerid),'%') AS Percen_Stayed,
	COUNT(CASE WHEN "customerstatus" = 'Churned' THEN customerid ELSE NULL END) AS Churned,
    CONCAT(COUNT(CASE WHEN "customerstatus" = 'Churned' THEN customerid ELSE NULL END)*100 / COUNT (DISTINCT customerid),'%') AS Percen_Churned,
    COUNT(CASE WHEN "customerstatus" = 'Joined' THEN customerid ELSE NULL END) AS Joined,
	CONCAT(COUNT(CASE WHEN "customerstatus" = 'Joined' THEN customerid ELSE NULL END) * 100 / COUNT (DISTINCT customerid),'%') AS Joined
FROM churn;

--- Sum of total revenue
SELECT ROUND(SUM(Totalrevenue),0) AS Totalrevenue FROM churn;

--- Sum revenue by category
SELECT 
	ROUND(SUM(CASE WHEN Customerstatus = 'Stayed' THEN Totalrevenue ELSE NULL END),0) AS Stayedrevenue,
	ROUND(SUM(CASE WHEN Customerstatus = 'Churned' THEN Totalrevenue ELSE NULL END),0) AS Lostrevenue,
	ROUND(SUM(CASE WHEN Customerstatus = 'Joined' THEN Totalrevenue ELSE NULL END),0) AS Newrevenue
FROM churn;

--- Top 10 city with the biggest customer churn
SELECT
    city,
	COUNT(customerid) AS overallconsumer
FROM churn
WHERE customerstatus = 'Churned'
GROUP BY city
ORDER BY overallconsumer DESC
FETCH FIRST 10 ROWS ONLY; 

--- Churn Category
SELECT 
	churncategory,
	COUNT(customerid) AS overallconsumer
FROM churn
WHERE customerstatus = 'Churned'
GROUP BY churncategory;

--- Churn Reason Where Customer Customer_Status = 'Churned' AND Churn_Category = 'Competitor'
SELECT 
	Churnreason,
	COUNT(Customerid) AS overallconsumer
FROM churn
WHERE Customerstatus = 'Churned' AND Churncategory = 'Competitor'
GROUP BY Churnreason;

/* ==================================== STORED PROCEDURE QUERY QUESTIONS =================================== */
