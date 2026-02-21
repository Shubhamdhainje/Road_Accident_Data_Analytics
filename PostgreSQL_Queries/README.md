____________________________________________________________________________________
# 🧮 PostgreSQL Analytics – Road Accident Data (2021–2022)
# Overview
This module contains all PostgreSQL-based analytics logic used to power the 
Road Accident Analysis project.
It acts as the data foundation layer, where raw accident data is transformed into 
business-ready KPIs consumed by Excel, Power BI, and Tableau dashboards.
All calculations strictly follow the business requirements defined by the client and 
ensure metric consistency across all reporting tools.

## Dataset – File Size Notice

Using an CSV-based dataset as its primary data source.  
However, the dataset CSV file exceeds GitHub’s 25 MB file size limit due to the 
volume of historical road accident records.

To maintain data completeness and analytical accuracy, the dataset file is 
**not stored directly in this repository**.

📥 **Download Dataset (CSV – Full Version):**  
https://drive.google.com/drive/folders/1clqaFrRLNlpk5DJG2QSK-zruM0HZ4ccn?usp=drive_link
_________________________________________________________________________________________
# Business Requirements Addressed
The SQL queries in this module were designed to fulfill the following analytical 
requirements:
# 🔑 Primary KPIs
•	Total Casualties (Current Year & Year-over-Year growth)
•	Total Accidents (Current Year & YoY growth)
•	Casualties by Accident Severity
o	Fatal
o	Serious
o	Slight
# 📊 Secondary KPIs
•	Casualties by Vehicle Type (Current Year)
•	Monthly Casualty Trends (2021 vs 2022)
•	Casualties by Road Type
•	Casualties by Area / Location (Urban vs Rural)
•	Casualties by Day vs Night
•	Top Locations by Total Casualties
•	Casualties and Accidents by:
o	Road Surface Condition
o	Weather Condition
_________________________________________________________________________________________
# Data Source
•	Table Name: road_accidents
•	Granularity: One row per accident record
•	Time Period: 2021 and 2022
The dataset is treated as raw and immutable, with all transformations applied 
at the SQL layer.
_________________________________________________________________________________________
# Query Design Principles
The SQL logic in this module follows enterprise-grade principles:
•	Single Source of Truth (SSOT) for all KPIs
•	Use of CASE statements for business-friendly categorization
•	Time-based analysis using EXTRACT(YEAR FROM accident_date)
•	Aggregations using SUM, COUNT(DISTINCT)
•	Clear separation of Current Year (CY) and Previous Year (PY) metrics
•	Reusable and dashboard-ready query outputs
_________________________________________________________________________________________
# KPI Query Breakdown
# 1️⃣ Current Year (CY) Metrics
•	Total Casualties (2022)
•	Total Accidents (2022)
•	Fatal, Serious, and Slight Casualties
These queries establish the core performance indicators for the reporting year.
_________________________________________________________________________________________
# 2️⃣ Vehicle Type Analysis
•	Normalizes detailed vehicle categories into business groups:
o	Cars
o	Bikes
o	Buses
o	Vans
o	Agricultural
o	Other
This enables clean, high-level reporting across dashboards.
_________________________________________________________________________________________
# 3️⃣ Monthly Trend Analysis (YoY)
•	Monthly casualty totals for:
o	2021 (Previous Year)
o	2022 (Current Year)
Used to identify:
•	Seasonal patterns
•	YoY trend changes
•	High-risk months
_________________________________________________________________________________________
# 4️⃣ Road & Environmental Analysis
•	Casualties by Road Type
•	Casualties and Accidents by:
o	Road Surface Condition (Dry, Wet, Snow)
o	Weather Condition (Fine, Rain, Snow/Fog, Other)
•	Casualties by Light Condition (Day vs Night)
These queries support risk factor identification related to infrastructure 
and environment.
___________________________________________________________________________________________
# 5️⃣ Location-Based Insights
•	Urban vs Rural casualty distribution
•	Top 10 locations by total casualties
Supports geographic prioritization and policy-level decision making.
___________________________________________________________________________________________
# Output Usage
The outputs from these queries are directly used in:
•	Excel → KPI validation & reconciliation
•	Power BI → Interactive dashboards and YoY analysis
•	Tableau → Trend visualization and storytelling
All dashboards rely on this module for metric accuracy and alignment.
__________________________________________________________________________________________
# Key Takeaways
•	Demonstrates SQL-first analytics engineering
•	Enforces metric consistency across tools
•	Translates raw data into decision-ready KPIs
•	Designed with real-world business reporting standards
___________________________________________________________________________________________

