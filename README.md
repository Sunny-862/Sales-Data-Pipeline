#  Sales Data Pipeline (End-to-End)

An end-to-end modern data pipeline built using **AWS S3, Snowflake, dbt and Power BI** to ingest, transform and visualize retail sales data.

---

##  Project Overview

This project demonstrates how raw sales data is ingested from cloud storage, transformed into analytics-ready datasets, and visualized for business insights.

The pipeline follows a **modern data engineering architecture**:

> **S3 ➝ Snowflake (Raw ➝ Staging ➝ Analytics) ➝ dbt Transformations ➝ Power BI Dashboard**

---

##  Architecture

```
AWS S3  →  Snowflake RAW  →  Snowflake STAGING  →  Snowflake ANALYTICS  →  Power BI
            (External Stage)     (dbt models)         (marts)              (Dashboard)
```

---

##  Tech Stack

| Tool             | Purpose                        |
| ---------------- | ------------------------------ |
| **AWS S3**       | Store raw CSV data             |
| **Snowflake**    | Data warehouse                 |
| **Snowpipe**     | Auto ingestion from S3         |
| **dbt**          | Data transformation & modeling |
| **SQL**          | Data transformation logic      |
| **Power BI**     | Data visualization             |
| **Git & GitHub** | Version control                |

---

## 📁 Project Structure

```
Sales-Data-Pipeline/
│
├── retail_project/              # dbt project
│   ├── models/
│   │   ├── staging/
│   │   └── marts/
│   ├── seeds/
│   ├── snapshots/
│   ├── tests/
│   ├── macros/
│   ├── dbt_project.yml
│   └── packages.yml
│
├── snowflake_sql/
│   └── pipeline_setup.sql       # Snowflake setup (DB, stage, pipe)
│
├── data_sample/
│   └── orders.csv               # sample dataset
│
├── README.md
└── .gitignore
```

---

##  Data Pipeline Flow

### 1️ Data Ingestion

* Raw CSV file uploaded to **AWS S3**
* Snowflake **External Stage** connects to S3
* **Snowpipe** automatically loads data into `RAW` schema

### 2️ Data Transformation (dbt)

* `stg_orders.sql` cleans raw data
* `dim_customers.sql`, `dim_products.sql` build dimension tables
* `fact_orders.sql` builds fact table

### 3️ Data Modeling

* Star schema created in **Analytics layer**
* Fact + dimension tables optimized for BI

### 4️ Visualization

* Snowflake connected to **Power BI**
* Dashboard created showing:

  * Sales trends
  * Revenue by region
  * Top products
  * Customer segmentation

---

##  Key Business Insights

*  Region-wise sales performance
*  Top selling products
*  Revenue trends over time
*  Customer behavior analysis

---

##  How to Run This Project

### Step 1 — Setup Snowflake

Run the SQL script:

```sql
snowflake_sql/pipeline_setup.sql
```

### Step 2 — Upload Data to S3

Upload CSV file to S3 bucket.

### Step 3 — Snowpipe Auto Load

Snowpipe automatically loads data into RAW schema.

### Step 4 — Run dbt Models

```bash
dbt run
dbt test
```

### Step 5 — Connect Power BI

* Connect to Snowflake
* Use Analytics schema
* Build dashboard

---

## 📸 Dashboard Preview

*(Add your Power BI screenshots here later)*

---

##  Security & Best Practices

* Used **role-based access in Snowflake**
* Used **separate schemas (RAW, STAGING, ANALYTICS)**
* Ignored sensitive files using `.gitignore`

---

##  Learnings from this Project

* Building modern ELT pipeline
* Using Snowpipe for real-time ingestion
* Data modeling with dbt
* Creating star schema for analytics
* Connecting Snowflake with BI tools

---

##  Author

**Sunny Kadam**
Aspiring Data Analyst & Data Engineer


