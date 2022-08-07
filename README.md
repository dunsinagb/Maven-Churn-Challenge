
## Data analysis project on Maven Analytics Challenge focusing on Telecom Customer Churn

As a BI Consultant for Maven Communications, a telecom firm with headquarters in California, I have identified high-value clients, churn threats, and suggested approaches to increase client retention.

Recommendations
⦿ Offer attractive and affordable bundles.

⦿ Customer service professionals should receive new training and education to achieve service excellence.

⦿ Offer discounts to customers since they are highly appealing to them and may help draw in both new and repeat business.

⦿ Consider investing in innovation as a result of consumers' increasing appetite for technology.

##
Source Data : https://www.mavenanalytics.io/data-playground

Tableau Dashboard : https://lnkd.in/gDcTVuYH

Softwares Used = Excel, PostgreSQL, Tableau
##

Steps on how to run the SQL code are in the .sql file.


* [Tableau Dashboard](https://public.tableau.com/app/profile/oluwadunsin.agbolabori/viz/MavenChurnchallenge_16575706084600/TelecomChurnAnalysis#1)

![App Screenshot](https://user-images.githubusercontent.com/99708829/179544769-a57b7770-b58f-4fc4-9e9e-682c51856464.png)

# Maven Churn Challenge

 A breakdown of my entry for the #mavenchurnchallenge by Maven Analytics. I have identified high-value clients, churn threats, and strategies to improve client retention as a BI consultant for Maven Communications, a fictitious telecom company with headquarters in California.




Companies aim to draw in and keep clients. That is how they develop. Businesses do, however, win and lose clients, just like in other facets of life. Customer churn is the proportion of customers who cancel their subscriptions within a given time frame. It may also be referred to as the churn rate or attrition rate. However, the growth rate is the proportion of new customers who signed up with a business during a specific time frame.

## Background information and Data

Data for this project included details on all 7,043 Maven Communications clients in Q2 2022. Each record corresponds to a single client and contains information on their demographics, place of residence, length of employment, subscription services, status for the quarter (joined, stayed, or churned), and other things. There was a total of 37 columns. The screenshot only displays a fraction of the information.

Preview data set in the **[link](https://www.mavenanalytics.io/blog/maven-churn-challenge?utm_source=linkedin&utm_campaign=churnchallengelaunch_jp20220623)**

![App Screenshot](https://user-images.githubusercontent.com/99708829/179550264-2ccc334d-a87c-47c0-916b-fa6b657afb7c.png)
**Dataset snippet**

As a BI consultant, my job is to determine the rate of net growth or churn, classify consumers into low - and high segments total revenue earned, examine customer behavior within each segment, ascertain the reasons why customers departed, and develop ways to lower churn. I also wanted to understand the optimal profile for customers who stay and churn.
## Project Phases

To get to the dashboard and recommendations, I followed the procedure below.

- Initial research
- Data cleaning
- Data exploration
- Data visualization
- Key recommendations

![App Screenshot](https://dpbnri2zg3lc2.cloudfront.net/en/wp-content/uploads/old-blog-uploads/the-data-analysis-process-2.jpg)

Microsoft Excel was the tool utilized for the cleaning, processing, and visualization. Basic operations (addition, subtraction, multiplication and division, sum, average, percentages, etc.), pivot tables, VLOOKUP, conditionals (COUNTIF, COUTIFS, SUMIFS), filtering, sorting, and data labels are just a few of the Excel capabilities I employed here. 
## Initial Research

The telecommunications industry faces the precarious challenge of high customer churn. Therefore, this report amasses pertinent data to assist you in understanding the psychological, behavioral, and economic factors behind high customer churn. I've gained knowledge through the challenge about how to combine data, technology, and design to express my narrative clearly and intelligently. It also aided in developing a deeper comprehension of the power of data analysis, its application to actual business issues, and how to produce impactful visualizations.

![app screenshot](https://www.voxco.com/wp-content/uploads/2021/10/GENERATIVE-RESEARCH-scaled.jpg)
## Data Cleaning

For any data visualisation project, fixing your data is essential. If your data has errors, how can you expect to get reliable results? Data cleaning is the process of making sense of your numbers and creating a better platform for people to understand your message and the story behind it.

![app screenshot](https://xaltius.tech/wp-content/uploads/2018/11/8f1a7eb4fbba8d600d3c819b96ffd8c0.png)

## Data Exploration

 Data exploration is a collection and mapping process that helps you identify interesting trends in your data. A graphic interface is used to identify which combinations of metrics are most interesting and to understand which metrics are most important to track. Data exploration will also help with further analysis of the same data to support business decisions.
 I observed that around $3.7 million was lost when 27% of Maven's clients left.
 
 ![app screenshot](https://user-images.githubusercontent.com/99708829/179556935-791d2f94-304d-4175-9151-ee7cc890bb67.png)
**Data Summary**

The primary factor behind customers leaving is competition as it accounts for 45% of the total churned customers. The percentage of customers that have abandoned a telecom service within a predetermined time frame is known as the churn rate. Losing hope and not intending to stick with the service increases the likelihood that customers may depart.

![app screenshot](https://user-images.githubusercontent.com/99708829/179558231-d25a3bc7-fbdc-43fc-89e9-1c1c37b9603e.png)
**Churn Category**

Of these, married male customers tend to be leaving more.

![app screenshot](https://user-images.githubusercontent.com/99708829/179559151-01ed430f-d55f-4a32-b886-9e8771c85a54.png)
**Churn by Marital status and gender**




## The High-Value Customers

 High-value customers are more likely to buy more and remain loyal over time. They also create a strong relationship with your product or service, which increases the likelihood of a repeat purchase. High-value customers spend more money with you than those who aren't high-value customers, leading to higher revenue and inventory turns.

 ![app screenshot](https://user-images.githubusercontent.com/99708829/179566166-99bc910e-4aea-4ccc-bcea-cee6198184b1.png)
 **High-value customers by age group**

 Compared to other age groups, high-value consumers between the ages of 37 and 42 and 19 and 24 are observed to be remaining longer. On a broad scale, more high-value clients are remaining than are departing.
 Given the average of $3K, the HVCs are taken to be the clients who contribute at least $8K to the business. They represent 8% of all customers while contributing 25% of overall revenue.

 ![app screenshot](https://user-images.githubusercontent.com/99708829/179567504-f46de5d8-2b99-4e44-b02a-2eef46dd96ac.png)
 **High-value customers by gender**

 ## Impact Analysis of churning customers

 ![app screenshot](https://user-images.githubusercontent.com/99708829/179568391-9c0dcefe-8f33-4f3d-9141-800403119a8b.png)
**Impact analysis**

 I discovered that married male consumers account for most of the revenue lost from churned clients. Most churned customers prefer fiber optic internet. Customers who have not been provided an offer appear to be churning more, and San Diego is the city where customer churning is most prevalent.


## Data Visualization

 Data visualization helps users explore, understand, and share data. Data visualization is a method of representing data in tabular form so that it can be presented visually to others either directly or indirectly. The goal of a data visualization is to make the dataset easier for people to perceive through various visual components such as color, size, shape, opacity, layout, and symbolization.
 
 Following my exploration, I was tasked with organizing the acquired information into a single-page dashboard. For me, this was the most intriguing aspect of the analysis. I was inspired by many excellent dashboards from previous Maven Analytics contest winners and wanted to try some of them out. It was even more enjoyable because most of the dashboards I saw were created using specialized BI applications like as Power Bi and Tableau; I wanted to mimic them in Excel, a less specialized tool for creating dashboards.

 ![app screenshot](https://user-images.githubusercontent.com/99708829/179569463-96ed2388-d9f6-41b8-ad13-c13c9da9e3e6.png)
## Key Recommendations

 Recommendations are the highest level of interest. It's the most specific intent, and the easiest way to build trust and rapport with your audience.

It is quite evident that competition is the primary cause of our client loss. What distinguishes the rivals' methods?

The onus is on the marketing department to benchmark and determine how costs might be adjusted to a desirable level if rivals are offering less expensive and attractive bundles.

To ensure the delivery of high-quality services, additional sources of churn should be investigated and remedied through educating and retraining customer support representatives.


I also learned that customers without offers account for the majority of customer attrition. Therefore, these offers should be made to this group of clients in order to increase retention.

San Diego should receive more focus because it has the greatest rate of customer attrition.

In conclusion, Consumers are becoming more and more tech-hungry, therefore it makes sense to consider investing in innovation.
## Relevant links

Thank you for reading up to this point! Here are some relevant links:

* [Dataset](https://www.mavenanalytics.io/data-playground)
* [DataCamp data cleaning checklist](https://www.linkedin.com/posts/datacampinc_data-cleaning-checklist-activity-6948658073720774656-z-34?utm_source=linkedin_share&utm_medium=member_desktop_web)
* [Tableau Dashboard](https://public.tableau.com/app/profile/oluwadunsin.agbolabori/viz/MavenChurnchallenge_16575706084600/TelecomChurnAnalysis#1)
* [Linkedin profile](https://www.linkedin.com/in/dunsinagb/)
