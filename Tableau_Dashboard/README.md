___________________________________________________________________________________________________________
# 📊 Tableau Dashboard – Road Accident Analysis
Overview
This Tableau dashboard provides a fatality-focused road accident analysis, enabling users to explore 
year-over-year (YoY) performance, accident severity, vehicle involvement, environmental conditions, 
and geographic distribution.
The dashboard is built using calculated fields and parameters to support dynamic comparisons, flexible
filtering, and interactive analysis.

## 📁 Dataset – File Size Notice

The Power BI dashboard is built using a **CSV-based dataset** as its primary data source.
However, the dataset CSV file exceeds GitHub’s **25 MB file size limit** due to the volume of historical 
road accident records.

To maintain **data completeness and analytical accuracy**, the dataset file is **not stored directly in 
this repository**.

📥 **Download Dataset (CSV – Full Version):**
👉 https://docs.google.com/spreadsheets/d/1Bdq36Uh41HLpf40f2yIBFiLWVu97agvbKhbvypIF3PU/edit?usp=sharing

## Dataset Update for Tableau Dashboard

An **updated version of the dataset** is used for the **Tableau dashboard**, covering an extended time period:

* **Year range:** **2019 to 2022**
* Enables **multi-year comparison and trend analysis**
* Supports **parameter-driven CY vs PY analysis** in Tableau

____________________________________________________________________________________________________________
# Business Objectives
•	Analyze fatal road accident patterns.

•	Compare Current Year (CY) vs Previous Year (PY) metrics.

•	Identify high-risk vehicles, road types, and conditions.

•	Enable interactive and parameter-driven exploration.

•	Support data-driven safety and policy decisions.
____________________________________________________________________________________________________________
# Parameters (User-Controlled Inputs)
The dashboard uses Tableau Parameters to allow dynamic analysis:
Parameter	Purpose

Current Year	Selects the analysis year

Previous Year	Enables YoY comparison

Accident Severity	Filters analysis by severity level (Fatal focus)

📌 Why Parameters Are Used

•	Enable side-by-side year comparison.

•	Avoid hard-coded filters.

•	Improve dashboard flexibility and reuse.
____________________________________________________________________________________________________________
# Calculated Fields (Core Logic)
Custom Calculated Fields are used to derive KPIs and trends, including:

•	Total Accidents

•	Total Casualties

•	Fatal Casualties

•	Serious Casualties

•	Slight Casualties

•	Year-over-Year (YoY) % Change

•	CY vs PY monthly trend calculations

📌 Calculations ensure:

•	Consistent metric definitions

•	Accurate time-based comparison

•	Reusable logic across visuals
____________________________________________________________________________________________________________
# Key KPIs (Summary Layer)

KPI	Description

Total Accidents	Total accident count for selected year

Total Casualties	Total casualties across severities

Fatal Casualties	Fatal casualty count with YoY change

Serious Casualties	Serious injuries with YoY change

Slight Casualties	Minor injuries with YoY change

All KPIs dynamically respond to parameters and filters.
____________________________________________________________________________________________________________
# Core Visual Analysis

1️ Fatal Casualties by Vehicle Type

Displays fatal casualties and YoY variance across:

•	Car

•	Motorcycle

•	Bus

•	Van

•	Agricultural vehicles

•	Others

🔍 Insight: Cars and motorcycles dominate fatal counts, with notable YoY variation.
_____________________________________________________________________________________________________________
2️ Monthly Trend Analysis (CY vs PY)

Sparkline and line visuals driven by:

•	Selected Current Year

•	Selected Previous Year

🔍 Insight: Clear seasonal trends and year-based differences are visible.
_____________________________________________________________________________________________________________
3️ Fatal Casualties by Weather Condition

Segmentation across:

•	Fine

•	Rain

•	Snow / Fog

•	Other

🔍 Insight: Most fatalities occur under fine weather conditions.
_____________________________________________________________________________________________________________
4️ Fatal Casualties by Road Surface

Distribution across:

•	Dry

•	Wet

•	Frost / Snow

•	Unknown

🔍 Insight: Dry surfaces account for the highest fatality counts.
_____________________________________________________________________________________________________________
5️ Fatal Casualties by Road Type

Bar chart comparison:

•	Single carriageway

•	Dual carriageway

•	Roundabout

•	Slip road

•	One-way street

🔍 Insight: Single carriageways are the most accident-prone.
______________________________________________________________________________________________________________
6️ Geographic Distribution (Map View)

Map visualization highlights location-wise concentration of fatal casualties, supporting geographic 
risk assessment.
______________________________________________________________________________________________________________
# Interactivity & Filters

•	Parameter-driven year selection

•	Severity-based filtering

•	Dynamic recalculation of KPIs and visuals

•	Responsive charts and maps
______________________________________________________________________________________________________________
# Data Modeling & Design Practices

•	Cleaned and standardized dataset

•	Calculated fields centralized for reuse

•	Parameters used instead of hard-coded filters

•	Dashboard optimized for performance and clarity
______________________________________________________________________________________________________________
# File Information

•	Tool: Tableau

•	File Type: .twbx

•	Analysis Type: Fatal Accident & YoY Analysis

•	Interaction Type: Parameter-driven dashboard
______________________________________________________________________________________________________________
# 📌 Conclusion
 This Tableau dashboard demonstrates strong command of calculated fields, parameters, and analytical
 storytelling—skills expected in data analytics roles.
______________________________________________________________________________________________________________
