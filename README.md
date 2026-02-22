_______________________________________________________________________________________
# 🚦 Road Accident Data Analytics – Capstone Project
# Project Overview
This capstone project delivers an end-to-end analytics solution for road accident data,
covering the full analytics lifecycle:
Raw Data → SQL Analytics → Excel Validation → BI Dashboards (Power BI & Tableau)
The project focuses on analyzing accident severity, casualties, trends, road conditions, 
vehicle types, and geographic patterns to support data-driven road safety insights.
________________________________________________________________________________________
# Tech Stack

•	Database: PostgreSQL

•	Data Analysis: SQL

•	Validation & Exploration: Excel (Pivot Tables)

•	Business Intelligence: Power BI, Tableau

•	Version Control: Git & GitHub
________________________________________________________________________________________
# Data Source

•	Format: CSV / Excel

•	Time Coverage:

•	Power BI & Excel: 2021–2022

•	Tableau (updated dataset): 2019–2022

•	Dataset size exceeds GitHub’s 25 MB limit and is hosted externally.

📥 Dataset Download (Full Version):

👉 Google Drive (link provided in tool-specific READMEs)
_________________________________________________________________________________________
# Data Architecture

Raw Dataset (CSV / Excel)
        ↓
PostgreSQL (KPI & Aggregation Logic)
        ↓
Excel (Pivot-based Validation)
        ↓
Power BI / Tableau Dashboards
_________________________________________________________________________________________
# PostgreSQL (Data Foundation)

Role: Core analytics and business logic layer

Key Highlights

•	KPI calculations (Total Accidents, Casualties, Fatal/Serious/Slight)

•	Aggregations by:

o	Year / Month

o	Vehicle Type

o	Road Type

o	Weather & Surface Conditions

o	Urban vs Rural

•	Query-level data standardization

•	Optimized for BI consumption

📂 Folder: PostgreSQL_Queries/
___________________________________________________________________________________________
# Excel Dashboard (Validation Layer)

Role: Metric validation and exploratory analysis

Key Highlights

•	Built using Pivot Tables & Pivot Charts

•	KPI validation against SQL outputs

•	Interactive slicers and timelines

•	Used as a sanity-check layer before BI publishing

⚠️ Due to file size (>25 MB), the Excel dashboard is hosted externally.

📥 Download link available in Excel_Dashboard/README.md

📂 Folder: Excel_Dashboard/
____________________________________________________________________________________________
# Power BI Dashboard (Primary BI Layer)

Role: Executive-level, interactive analytics

Key Highlights

•	Star-schema data model

•	Dedicated Calendar (Date) table for time intelligence

•	CY vs PY & YoY analysis using DAX

•	KPIs:

o	Total Accidents

o	Total Casualties

o	Fatal, Serious, Slight Casualties

•	Visual analysis by:

o	Vehicle Type

o	Road Type & Surface

o	Light Conditions

o	Urban vs Rural

o	Monthly trends

📥 External download link provided in PowerBI_Dashboard/README.md

📂 Folder: PowerBI_Dashboard/
______________________________________________________________________________________________
# Tableau Dashboard (Visualization & Storytelling Layer)

Role: Interactive, parameter-driven analysis with geographic insights

Key Highlights

•	Focus on Fatal Accident Analysis

•	Parameters:

o	Current Year

o	Previous Year

o	Accident Severity

•	Calculated Fields for KPIs & YoY metrics

•	Visuals include:

o	Vehicle Type Analysis

o	Road Type & Surface

o	Weather Conditions

o	Monthly Trends

o	Geographic Map View

•	Dataset covers 2019–2022 for multi-year comparison

📂 Folder: Tableau_Dashboard/
______________________________________________________________________________________________
# Key Analytics Insights

•	Cars and single carriageways contribute the highest casualties

•	Urban regions show higher accident density

•	Most accidents occur under fine weather and daylight

•	Clear seasonal and YoY patterns across years

•	Fatal accidents show strong geographic clustering
______________________________________________________________________________________________
# Why This Project Matters

This project demonstrates:

•	Real-world analytics engineering workflow

•	Strong SQL and data modeling fundamentals

•	Proficiency across multiple BI tools

•	Ability to manage large datasets professionally

•	Portfolio-ready documentation and structure
______________________________________________________________________________________________
📌 Conclusion 
This capstone project reflects production-grade analytics practices suitable for 
Data Analyst, BI Analyst, and Analytics Engineer roles.
_______________________________________________________________________________________________
