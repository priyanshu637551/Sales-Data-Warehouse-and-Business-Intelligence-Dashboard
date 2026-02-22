# 📊 Sales Data Warehouse & Business Intelligence Dashboard
🚀 Project Overview

This project demonstrates an end-to-end Business Intelligence workflow starting from raw transactional data to a fully interactive Power BI dashboard using a Star Schema data warehouse.

The goal of this project is to simulate a real-world analytics environment where raw sales data is transformed, modeled, and analyzed to generate actionable business insights.

The project covers:

Data warehousing concepts

ETL processing

Dimensional modeling (Star Schema)

PostgreSQL database design

Power BI data modeling

DAX-based analytics

Interactive dashboard creation

# --------Architecture--------
Raw CSV Data
      ↓
PostgreSQL (Staging Table)
      ↓
ETL Transformation
      ↓
Star Schema Data Warehouse
      ↓
Power BI Semantic Model
      ↓
Interactive Dashboard


-----Tech Stack------
| Tool       | Purpose                              |
| ---------- | ------------------------------------ |
| PostgreSQL | Data warehouse & SQL transformations |
| pgAdmin    | Database management                  |
| Power BI   | Data visualization & reporting       |
| DAX        | Analytical calculations              |
| SQL        | Data extraction & modeling           |


# 📂 Dataset

Dataset: Superstore Sales Dataset

Contains transactional retail sales data including:

Orders

Customers

Products

Locations

Sales & Profit metrics

# 🧱 Data Modeling (Star Schema)

The raw dataset was transformed into a dimensional model.

Fact Table

fact_sales

sales

profit

quantity

order_id

foreign keys

Dimension Tables

dim_customer

dim_product

dim_location

dim_date

# -----Model Structure-------

              dim_customer
                   | 
      dim_date — fact_sales — dim_product
                   |
              dim_location


# 🧠 Skills Demonstrated

Data Warehouse Design

Dimensional Modeling

SQL ETL Development

Analytical Thinking

Power BI Modeling

DAX Calculations

Business KPI Design


# You can check dashborad Screen shots
