_________________________________________________________________________________________________________
# 📊 Excel Dashboard – Road Accident Analysis (2021–2022)
# Overview
This Excel dashboard provides an interactive and executive-ready analysis of road accident data for the 
years 2021 and 2022.
It is designed to deliver quick, high-impact insights into casualties, accident severity, vehicle 
involvement, road conditions, and environmental factors.
The dashboard is built entirely using Excel Pivot Tables and Pivot Charts, making it highly scalable,
refreshable, and suitable for business users without advanced BI tools.
___________________________________________________________________________________________________________
## 📊 Excel Dashboard (Pivot Table Based)

Due to GitHub’s 25 MB file size limit, the full Excel dashboard is hosted externally.

# 📥 **Download Excel Dashboard**
https://docs.google.com/spreadsheets/d/100br9p5aHFclqecP5zvf7Cml5G4VedU-/edit?usp=drive_link&ouid=103884255912938521241&rtpof=true&sd=true

## Key Notes
- Built using Pivot Tables and Pivot Charts
- Optimized for KPI validation and analysis
- Fully interactive (filters, slicers, drill-downs)
___________________________________________________________________________________________________________
# 🧹 Data Cleaning & Preparation
Before dashboard creation, the dataset was cleaned and standardized in Excel to ensure accuracy,
consistency, and usability.
Cleaning Steps Performed
•	Removed duplicate accident records
•	Standardized accident date formats
•	Validated casualty counts
•	Cleaned and normalized categorical fields (severity, road type, light conditions)
•	Grouped detailed vehicle types into analytical categories
•	Checked missing values and handled them using business-aligned assumptions
•	Reconciled totals against SQL query outputs
These steps ensured the data was pivot-ready and analysis-ready.
___________________________________________________________________________________________________________
# 🔄 Pivot Table–Driven Architecture (Core Design)
All metrics, KPIs, and visuals in this dashboard are generated using Excel Pivot Tables, ensuring:
•	No hard-coded calculations
•	Dynamic refresh with new data
•	Consistent KPI logic across visuals
•	Fast aggregation over large datasets
Pivot Table Design Approach
•	Created dedicated Pivot Tables for each analytical requirement:
o	Casualties by severity
o	Casualties by vehicle type
o	Monthly YoY trends
o	Road type and surface analysis
o	Location and light condition analysis
•	Used Pivot Charts linked directly to Pivot Tables
•	Centralized Pivot Tables in hidden sheets to keep the dashboard clean
•	Applied report filters and slicers for interactivity
This approach mirrors enterprise Excel dashboard standards.
___________________________________________________________________________________________________________
# Dashboard Objectives
The Excel dashboard was built to help stakeholders:
•	Monitor total casualties and severity distribution
•	Compare current year vs previous year trends
•	Identify high-risk vehicle types, road types, and surfaces
•	Analyze casualties by location, lighting, and area type
•	Perform interactive, filter-driven analysis without manual recalculation
____________________________________________________________________________________________________________
# Key KPIs Displayed
## 🔑 Primary Metrics
•	Total Casualties
•	Fatal Casualties
•	Serious Casualties
•	Slight Casualties
•	Casualties Involving Cars
Each KPI is calculated using Pivot Table aggregations and displayed with numeric values and percentage 
contribution.
____________________________________________________________________________________________________________
# Analytical Views & Visuals
📌 Casualties by Vehicle Type
•	Pivot-based aggregation by vehicle category
•	Highlights vehicles contributing most to casualties
____________________________________________________________________________________________________________
# 📈 Monthly Trend Analysis (YoY)
•	Pivot Table with Month on rows and Year as a filter
•	Line chart comparing 2021 vs 2022
•	Enables clear seasonal trend identification
____________________________________________________________________________________________________________
# 🛣 Casualties by Road Type
•	Pivot Table grouping casualties by road type
•	Horizontal bar chart for easy comparison
____________________________________________________________________________________________________________
# 🌧 Casualties by Road Surface
•	Pivot-based breakdown by surface condition
•	Highlights risk under dry, wet, and snow/ice conditions
____________________________________________________________________________________________________________
# 🏙 Casualties by Location / Area
•	Urban vs Rural analysis using Pivot Table filters
•	Donut chart for proportional comparison
____________________________________________________________________________________________________________
# 🌙 Casualties by Light Conditions
•	Day vs Night casualty distribution
•	Percentage contribution calculated via Pivot Table values
____________________________________________________________________________________________________________
# Interactive Filters & Slicers
The dashboard supports dynamic filtering using:
•	Year slicer (2021–2022)
•	Urban / Rural area slicer
All Pivot Tables and charts update simultaneously when slicers are applied.
____________________________________________________________________________________________________________
# Data Source & Processing
•	Source: Road accident dataset (2021–2022)
•	Processing:
o	Pivot Tables
o	Pivot Charts
o	Calculated fields (where required)
•	KPI definitions aligned with PostgreSQL logic for cross-tool consistency
____________________________________________________________________________________________________________
# Design Principles
•	Pivot-first architecture
•	No hard-coded values
•	Reusable and refreshable design
•	Business-friendly interactivity
•	Clean and minimal dashboard layout
____________________________________________________________________________________________________________



