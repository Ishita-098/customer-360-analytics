# customer-360-analytics
End-to-end Customer 360 analytics platform using PostgreSQL, Python, machine learning and Power BI to analyze customer behavior, segmentation, retention, CLV and churn.

# Customer 360 Analytics Platform

## Overview

The Customer 360 Analytics Platform is an end-to-end customer analytics project designed to create a unified view of customer behavior, value, engagement and churn risk.

The project integrates transactional sales data with customer, product, store and customer-service interaction data to generate actionable customer insights.

## Business Problem

Organizations often have customer information distributed across multiple operational systems. Sales transactions, customer profiles and service interactions may exist separately, making it difficult to understand the complete customer journey.

This project aims to build a unified Customer 360 view that can answer questions such as:

* Who are the highest-value customers?
* Which customer segments generate the most revenue?
* How does customer retention change across acquisition cohorts?
* Which customers are at risk of churn?
* What factors are associated with customer churn?
* Which high-value customers require retention attention?
* How do customer-service interactions relate to purchasing behavior?

## Objectives

The project will:

1. Build a structured analytical data model in PostgreSQL.
2. Perform data-quality assessment and cleaning.
3. Create a unified Customer 360 analytical dataset.
4. Perform RFM customer segmentation.
5. Analyze customer retention using cohort analysis.
6. Calculate historical and predictive Customer Lifetime Value (CLV).
7. Analyze customer-service and engagement behavior.
8. Build a customer churn prediction model.
9. Develop an interactive Power BI dashboard.
10. Document the complete analytical workflow.

## Dataset

The project uses a multi-table business operations dataset containing customer, store, product, sales and customer-service interaction data.

### Source Tables

* `dim_customers`
* `dim_stores`
* `dim_products`
* `dim_agents`
* `fact_sales`
* `fact_call_logs`
* `fact_message_interactions`
* `fact_targets`
* `fact_sales_data_quality_practic`

## Technology Stack

* PostgreSQL
* SQL
* Python
* Pandas
* NumPy
* Scikit-learn
* Power BI
* Git & GitHub

## Project Architecture

```text
Raw Business Data
       |
       v
PostgreSQL
       |
       v
Data Quality & Cleaning
       |
       v
Customer 360 Data Model
       |
       +----------------+
       |                |
       v                v
Customer Analytics   Customer Service
       |                |
       +-------+--------+
               |
               v
     RFM / Cohorts / CLV
               |
               v
       Churn Prediction
               |
               v
          Power BI
               |
               v
       Business Insights
```

## Project Status

* [ ] Data understanding
* [ ] PostgreSQL database setup
* [ ] Data ingestion
* [ ] Data-quality assessment
* [ ] Data cleaning
* [ ] Customer 360 model
* [ ] RFM segmentation
* [ ] Cohort analysis
* [ ] CLV analysis
* [ ] Churn prediction
* [ ] Power BI dashboard
* [ ] Final documentation

## Key Outputs

The final project will contain:

* PostgreSQL data model
* SQL analytical queries
* Data-quality checks
* Customer 360 dataset
* RFM segmentation
* Cohort retention analysis
* CLV analysis
* Churn prediction model
* Power BI dashboard
* Business insights and recommendations
