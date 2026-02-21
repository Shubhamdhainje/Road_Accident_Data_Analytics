_________________________________________________________________________________________
# 📊 Power BI Dashboard – Road Accident Analysis
Overview
This Power BI dashboard delivers a comprehensive analytical view of road accident data, 
focusing on casualties, accident severity, time-based trends, and geographic distribution.
The dashboard is built using a proper star-schema-style data model, where time 
intelligence is handled through a dedicated Calendar (Date) table, ensuring accurate, 
scalable, and reusable time-based analysis.

## Dataset – File Size Notice

The Power BI dashboard is built using an Excel-based dataset as its primary data source.  
However, the dataset Excel file exceeds GitHub’s 25 MB file size limit due to the volume of historical road accident records.

To maintain data completeness and analytical accuracy, the dataset file is **not stored directly in this repository**.

📥 **Download Dataset (Excel – Full Version):**  
https://drive.google.com/drive/folders/1clqaFrRLNlpk5DJG2QSK-zruM0HZ4ccn?usp=drive_link

### How the Dataset Is Used
- The Excel dataset is imported into Power BI
- A dedicated Calendar (Date) table is created from the dataset’s date column
- All time-based analysis (CY, PY, YoY) is driven by the Calendar table
- The dataset remains unchanged to preserve data integrity
_________________________________________________________________________________________
# Business Objectives
•	Monitor overall road safety performance
•	Compare Current Year (CY) vs Previous Year (PY) trends
•	Identify high-risk vehicle types, locations, and road conditions
•	Enable time-based analysis (monthly, yearly, YoY)
__________________________________________________________________________________________
# Data Model & Calendar Table Design (Key Enhancement)
# 📅 Calendar (Date) Table Implementation
To support robust time intelligence, a separate Calendar table was created instead 
of using the date column directly from the fact table.
Process Followed:
1.	Copied the accident date column from the main road accident dataset
2.	Created a new Calendar table
3.	Extracted and derived time attributes:
o	Year
o	Month
o	Month Name
4.	Established a relationship between:
o	Calendar[Date] → Fact_Table[Accident_Date]
5.	Used only Calendar table fields for:
o	Axis in visuals
o	Time-based slicers
o	CY / PY / YoY calculations
____________________________________________________________________________________________
# Key KPIs (Top Summary Layer)
Metric	Description
CY Casualties	Total casualties in the current year
CY Accidents	Total accidents in the current year
CY Fatal Casualties	Fatal casualties with YoY % change
CY Serious Casualties	Serious casualties with YoY % change
CY Slight Casualties	Slight casualties with YoY % change
All KPIs are calculated using Calendar table–driven time logic.
____________________________________________________________________________________________
# Core Visual Insights
1️ Casualties by Vehicle Type
Shows casualties across:
•	Car
•	Bike
•	Bus
•	Van
•	Agricultural
•	Other
🔍 Insight: Cars account for the highest number of casualties.
____________________________________________________________________________________________
2️ CY vs PY Monthly Trend Analysis
Time-series comparison using:
•	Calendar[Month]
•	Calendar[Year]
🔍 Insight: Clear seasonal patterns emerge across months, enabling YoY comparison.
____________________________________________________________________________________________
3️ Casualties by Urban / Rural Area
Donut chart distribution:
•	Urban
•	Rural
🔍 Insight: Urban regions contribute a larger share of casualties.
___________________________________________________________________________________________
4️ Casualties by Road Type
Analysis across:
•	Single carriageway
•	Dual carriageway
•	Roundabout
•	One-way street
•	Slip road
🔍 Insight: Single carriageways show the highest casualty count.
___________________________________________________________________________________________
5️ Casualties by Light Condition
Comparison between:
•	Daylight
•	Dark conditions
🔍 Insight: Majority of casualties occur during daylight hours, driven by traffic volume.
___________________________________________________________________________________________
6️ Top 10 Locations by Casualties
Ranks locations based on casualty volume, enabling geographic prioritization.
___________________________________________________________________________________________
# Interactive Filters
Dashboard supports filtering by:
•	Road Surface
•	Weather Conditions
All visuals dynamically respond using the Calendar table as the time dimension.
___________________________________________________________________________________________
# Measures & Calculations
•	CY, PY, and YoY % change implemented using DAX
•	Time intelligence functions reference Calendar table
•	Measures designed for:
o	Accuracy
o	Reusability
o	Performance
___________________________________________________________________________________________
# Intended Users
•	Data Analysts
•	Business Intelligence Teams
•	Traffic Safety Authorities
•	Policy & Decision Makers
___________________________________________________________________________________________
# File Information
•	Tool: Power BI
•	File Type: .pbix
•	Time Period Covered: 2021–2022
•	Modeling Style: Star Schema with Calendar Table
___________________________________________________________________________________________
# 📌 Conclusion 
This dashboard demonstrates strong data modeling fundamentals, proper time intelligence 
design, and production-ready Power BI development suitable for analytics roles.
___________________________________________________________________________________________

