# ☕ Bright Coffee Shop Sales Analysis

[![Excel](https://img.shields.io/badge/Excel-217346?style=for-the-badge\&logo=microsoft-excel\&logoColor=white)](dashboards/excel_dashboard.xlsx)
![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge\&logo=power-bi\&logoColor=black)
![Google Data Studio](https://img.shields.io/badge/Google%20Data%20Studio-4285F4?style=for-the-badge\&logo=google-data-studio\&logoColor=white)
[![Lovable](https://img.shields.io/badge/Lovable-FF69B4?style=for-the-badge\&logo=heart\&logoColor=white)](https://lovable.dev/projects/fc03dc60-4007-4e3e-9fdb-31046d11c6c8)
![Databricks](https://img.shields.io/badge/Databricks-FF3621?style=for-the-badge\&logo=databricks\&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-336791?style=for-the-badge\&logo=postgresql\&logoColor=white)
![PowerPoint](https://img.shields.io/badge/PowerPoint-B7472A?style=for-the-badge\&logo=microsoft-powerpoint\&logoColor=white)
![Miro](https://img.shields.io/badge/Miro-050038?style=for-the-badge\&logo=miro\&logoColor=yellow)
![Canva](https://img.shields.io/badge/Canva-00C4CC?style=for-the-badge\&logo=canva\&logoColor=white)

---

## ☕ Project Overview

Welcome to the **Bright Coffee Shop Sales Analysis** project.

This project was developed as part of the **Bright Coffee Shop Case Study (2026)** and follows an end-to-end data analytics workflow — from raw transactional data through to data cleaning, analysis, interactive dashboards, business insights, and executive recommendations.

The goal was to transform everyday coffee shop transactions into meaningful business intelligence that can help management understand **what is selling, when customers are buying, how revenue is performing, and where opportunities for growth exist.**

### ☕ From Beans to Business Intelligence

**Raw Data → Clean Data → Analysis → Visualization → Insights → Recommendations**

---

## 🎯 Business Challenge

The Bright Coffee Shop case study required the analysis of transactional sales data to answer key business questions and provide data-driven recommendations.

The analysis focused on:

* ☕ Which products generate the most revenue?
* 🏆 Which products and categories perform best?
* 📈 How does revenue change over time?
* ⏰ What times of day generate the highest revenue?
* 📅 How does performance vary across days and months?
* 🏪 How does performance differ across store locations?
* 💡 Where are the opportunities to improve sales performance?
* 🎯 What actions could management take to increase revenue?

The project was designed to move beyond simply creating visualizations and instead use data to support **business decision-making**.

---

# 🗄️ The Data

The project uses transactional coffee shop sales data containing information about individual purchases.

Key fields included:

* `transaction_id`
* `transaction_date`
* `transaction_time`
* `transaction_qty`
* `store_id`
* `store_location`
* `product_id`
* `product_category`
* `product_type`
* `product_detail`
* `unit_price`
* `total_amount`

Additional analytical fields were created during the data transformation process to support time-based and business analysis.

---

# 🧹 From Raw Data to Clean Data

Before analysis could begin, the raw dataset required cleaning and transformation.

This stage was completed in **Databricks using SQL**.

### 🔧 Data Cleaning & Transformation

The main preparation steps included:

### 1️⃣ Standardizing Unit Price

The original unit price field contained inconsistent formatting.

The values were cleaned and converted into a standardized decimal field:

`Unit_price_standardized`

This ensured that pricing could be used reliably in calculations and visualizations.

### 2️⃣ Calculating Transaction Revenue

Revenue for each transaction was calculated using:

**Unit Price × Transaction Quantity**

This produced the:

`total_amount`

field used throughout the analysis.

### 3️⃣ Creating Date Attributes

The transaction date was transformed into additional analytical fields:

* `Day_Name`
* `Month_Name`
* `Event_Year`
* `Event_Day`

These fields allowed revenue patterns to be analyzed across different time periods.

### 4️⃣ Extracting the Hour

The transaction time was transformed into:

`Hour_of_the_Day`

This enabled analysis of revenue performance throughout the trading day.

### 5️⃣ Weekday vs Weekend Classification

Transactions were classified into:

* **Weekday**
* **Weekend**

This allowed trading patterns to be compared across different day classifications.

### 6️⃣ Creating Time-of-Day Buckets

The trading day was divided into **3-hour intervals** to make peak and lower-performing periods easier to identify.

The resulting classifications included:

* 🌅 Morning
* ☕ Late Morning
* 🌤️ Afternoon
* 🌇 Late Afternoon
* 🌙 Evening

This became an important component of the time-based sales analysis.

---

## 🗄️ Clean Analytical Dataset

The cleaned dataset was stored in Databricks as:

`coffee_shop.coding.bright_coffee_sales_clean`

This cleaned table became the foundation for the subsequent analysis and dashboard development.

---

# 💻 SQL & Databricks

SQL was used extensively throughout the data preparation process.

Key SQL techniques included:

* `CAST`
* `REPLACE`
* `DECIMAL` conversion
* `DATE_FORMAT`
* `YEAR`
* `DAY`
* `HOUR`
* `CASE WHEN`
* Calculated fields
* Table creation
* Data transformation

This stage demonstrated the importance of preparing reliable data before moving into visualization and business analysis.

---

# 📊 Turning Data Into Insights

Once the data had been cleaned and transformed, the next stage was to explore the data and identify meaningful patterns.

The analysis focused on four major areas:

### 📈 Revenue Performance

Understanding how revenue changes over:

* Days
* Months
* Trading periods
* Weekdays and weekends

### ☕ Product Performance

Identifying:

* Top-performing products
* Top 10 products
* Product categories generating the most revenue
* Differences in product performance

### ⏰ Time-Based Performance

Understanding customer purchasing behaviour across:

* Hours of the day
* 3-hour time intervals
* Time-of-day classifications

### 🏪 Store Performance

Using store location information to understand how sales performance varies across the available locations.

---

# 📈 Dashboard Development

To demonstrate the ability to communicate insights through different business intelligence platforms, the analysis was developed across multiple visualization environments.

---

## ☕ Microsoft Excel

Excel was used for detailed exploratory analysis and interactive dashboard development.

The Excel workflow included:

* Pivot tables
* Pivot charts
* Slicers
* KPI development
* Revenue analysis
* Product analysis
* Time-based analysis
* Interactive filtering
* Dashboard design

### Key Excel Visualizations

The dashboard included visuals such as:

* 📈 **Monthly Revenue Trend**
* ☕ **Revenue by Product Category**
* 🏆 **Top 10 Products**
* ⏰ **Revenue by Time of Day**
* 📅 **Daily Revenue**
* Revenue performance across different trading periods

---

# 📊 Power BI

Power BI was used to develop an interactive business intelligence version of the analysis.

The Power BI dashboard focused on:

* KPI cards
* Interactive slicers
* Revenue performance
* Product performance
* Time-based analysis
* Business-focused visualizations
* Interactive reporting

The objective was to provide management with a dashboard that could be explored dynamically rather than relying only on static reports.

---

# 📉 Google Data Studio

Google Data Studio was used as another visualization platform to explore the presentation of the coffee shop analysis through an interactive reporting environment.

This provided additional experience in:

* Dashboard layout
* Interactive filtering
* Data visualization
* Business reporting
* Visual storytelling

---

# 🌐 Lovable Interactive Dashboard

The analysis was also transformed into a web-based interactive dashboard using **Lovable**.

The dashboard follows the same visual identity established throughout the project, using a warm café-inspired design.

### ☕ Live Dashboard

Since the Lovable dashboard cannot be exported as a PDF, the live interactive version is available below for easy review:

👉 **[Pixel Perfect Preview | Lovable](https://lovable.dev/projects/fc03dc60-4007-4e3e-9fdb-31046d11c6c8)**

The dashboard uses the same analytical framework as the other reporting platforms while presenting the information in a modern web-based environment.

---

# 🎨 Bright Coffee Visual Identity

A consistent design language was maintained throughout the project.

The dashboard theme was inspired by the warm, inviting atmosphere of a coffee shop while keeping the presentation professional enough for business reporting.

### 🎨 Colour Palette

| Purpose      | Colour      | Hex       |
| ------------ | ----------- | --------- |
| 🟫 Primary   | Soft Mocha  | `#8B6F5A` |
| 🌿 Secondary | Sage Green  | `#A8B5A2` |
| 🟠 Accent    | Terracotta  | `#C47A52` |
| 🤎 Text      | Dark Brown  | `#3F3025` |
| ☕ Canvas     | Warm Cream  | `#F6F0E6` |
| 🤍 Cards     | Light Cream | `#FFF9F0` |

This colour palette was carried across the dashboard design to create a consistent **Bright Coffee** identity.

---

# 💡 Business Insights

The analysis provides a framework for understanding the key drivers of coffee shop revenue.

### 🏆 Product Performance

Product and category analysis helps identify the items that contribute most strongly to revenue.

These high-performing products can inform:

* Stock planning
* Promotional campaigns
* Product placement
* Product bundling
* Inventory management

### ⏰ Trading Periods

Time-of-day analysis provides visibility into when customer purchasing activity is strongest and where slower periods may exist.

This creates opportunities to:

* Target slower periods with promotions
* Adjust staffing levels
* Plan inventory around demand
* Optimize marketing campaigns

### 📈 Revenue Trends

Daily and monthly revenue analysis provides visibility into changes in sales performance over time.

Understanding these patterns allows management to identify stronger trading periods and investigate potential opportunities for improvement.

---

# 🎯 Business Recommendations

Based on the analytical framework and findings from the case study, the following strategies can support improved business performance:

### ☕ 1. Protect High-Performing Products

Ensure that popular, high-revenue products are adequately stocked to reduce missed sales opportunities.

### ⏰ 2. Target Slower Trading Periods

Introduce targeted promotions, bundles, or limited-time offers during lower-performing periods to encourage additional purchases.

### 📦 3. Improve Inventory Planning

Use historical sales patterns to better align stock levels with customer demand.

### 🧁 4. Use Product Bundling

Pair popular products with slower-moving items to increase exposure and encourage customers to purchase additional products.

### ❤️ 5. Encourage Customer Loyalty

Consider loyalty initiatives that encourage repeat purchases and strengthen customer retention.

### 📢 6. Make Marketing Data-Driven

Use product and time-of-day insights to target promotional campaigns when and where they are most likely to generate additional revenue.

---

# 🗺️ Project Planning

The project planning and analytical workflow were supported using **Miro** and **Canva**.

### 🧠 Miro

Miro was used for:

* Project planning
* Process mapping
* Data flow visualization
* Structuring the analytical workflow

### 📅 Canva

Canva was used to create:

* Project Gantt chart
* Timeline visualization
* Planning materials

These tools helped structure the project from the initial data stage through to the final presentation.

---

# 📑 Executive Presentation

The final analysis was prepared for executive communication using **Microsoft PowerPoint**.

The presentation focuses on translating the analytical findings into:

* Key business insights
* Performance observations
* Opportunities
* Recommendations
* Actionable business decisions

The objective was to communicate the analysis in a way that could be understood by a non-technical business audience.

---

# 🧠 Skills Demonstrated

This project demonstrates practical experience across the full data analytics lifecycle.

### 📊 Data Analytics

* Data cleaning
* Data transformation
* Exploratory data analysis
* Revenue analysis
* Product analysis
* Time-based analysis
* Business analysis
* Data storytelling

### 💻 SQL

* Data type conversion
* String manipulation
* Date functions
* Time functions
* Conditional logic
* Calculated fields
* Table creation
* Data transformation

### 🗄️ Databricks

* Data preparation
* SQL-based transformations
* Analytical dataset creation
* Data cleaning workflow

### 📈 Excel

* Pivot tables
* Pivot charts
* Slicers
* KPIs
* Dashboard development
* Interactive reporting

### 📊 Power BI

* Interactive dashboards
* KPI cards
* Slicers
* Business intelligence
* Data visualization

### 🎨 Data Visualization

* Dashboard design
* Visual hierarchy
* Chart selection
* Interactive reporting
* Data storytelling

### 🧠 Business Communication

* Executive reporting
* Business recommendations
* PowerPoint presentation
* Translating data into business language

### 🗺️ Project Planning

* Miro
* Process mapping
* Gantt charts
* Project workflow planning

---

# 🔄 End-to-End Analytics Journey

```text
                    ☕ BRIGHT COFFEE SHOP
                           │
                           ▼
                    RAW TRANSACTION DATA
                           │
                           ▼
                  🧹 DATA CLEANING
                           │
                           ▼
                💻 DATABRICKS + SQL
                           │
                           ▼
                CLEAN ANALYTICAL DATA
                           │
             ┌─────────────┼─────────────┐
             ▼             ▼             ▼
          📈 EXCEL      📊 POWER BI   📉 DATA STUDIO
             │             │             │
             └─────────────┼─────────────┘
                           ▼
                    🌐 LOVABLE
                           │
                           ▼
                    💡 INSIGHTS
                           │
                           ▼
                   🎯 RECOMMENDATIONS
                           │
                           ▼
                    📑 POWERPOINT
                           │
                           ▼
                 ☕ BUSINESS DECISIONS
```

---

# 📑 Project Deliverables

The project includes the following key deliverables:

* 📊 **Excel Dashboard**
* 📈 **Power BI Dashboard**
* 📉 **Google Data Studio Dashboard**
* 🌐 **Lovable Interactive Dashboard**
* 🗄️ **Cleaned Dataset**
* 💻 **SQL Code**
* 🗺️ **Miro Project Planning / Data Flow**
* 📅 **Canva Gantt Chart**
* 📑 **PowerPoint Executive Presentation**

### 🌐 Live Lovable Dashboard

**[☕ Open the Bright Coffee Interactive Dashboard](https://lovable.dev/projects/fc03dc60-4007-4e3e-9fdb-31046d11c6c8)**

> **Note:** The Lovable dashboard is provided as a live interactive application because the platform does not provide a PDF export of the dashboard.

---

# 🏆 Project Outcome

The Bright Coffee Shop Sales Analysis demonstrates how raw transactional data can be transformed into meaningful business intelligence through a structured analytics process.

The project brings together:

**SQL + Databricks → Data Preparation → Excel → Power BI → Data Studio → Lovable → Business Insights → Executive Reporting**

The key objective was not simply to create dashboards, but to demonstrate the complete process of:

**Cleaning the data → Understanding the data → Finding patterns → Communicating insights → Recommending action**

This project demonstrates my ability to work across multiple analytics platforms while maintaining a consistent business objective and visual identity.

---

# 🚀 Future Improvements

Future enhancements could include:

* 🤖 Automating daily sales reporting
* 📈 Developing predictive sales forecasting
* 👥 Adding customer segmentation
* ❤️ Integrating customer loyalty data
* 📦 Connecting sales patterns with inventory levels
* 🏪 Expanding analysis across additional locations
* 📊 Developing automated KPI monitoring
* 🌐 Further enhancing the web-based analytics application

---

# 👩🏽‍💻 Project Author

## Lerato Legodi

**Data Analytics Portfolio Project**

**Bright Coffee Shop Case Study — 2026**

---

### ☕ From Transactions to Insights

*Turning coffee shop data into decisions.*
