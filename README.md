# Air Traffic Performance & Trend Analysis

![Python](https://img.shields.io/badge/-Python-3776AB?style=flat&logo=python&logoColor=white) ![Pandas](https://img.shields.io/badge/-Pandas-150458?style=flat&logo=pandas&logoColor=white) ![NumPy](https://img.shields.io/badge/-NumPy-013243?style=flat&logo=numpy&logoColor=white) ![Matplotlib](https://img.shields.io/badge/-Matplotlib-11557c?style=flat) ![Seaborn](https://img.shields.io/badge/-Seaborn-4C72B0?style=flat)

---

## 📌 Project Overview

The **Sales Data Pipeline & Analytics Dashboard** project demonstrates a complete **modern cloud-based ELT pipeline** built to process, transform, and visualize retail sales data for business intelligence and decision-making.

This project integrates **AWS S3, Snowflake, dbt, SQL, and Power BI** to automate the movement of raw data into analytics-ready dashboards.

The project focuses on:

✅ Automating cloud-based data ingestion  
✅ Building scalable data transformation workflows  
✅ Creating analytics-ready star schema models  
✅ Delivering interactive business dashboards  
✅ Generating actionable sales insights using BI tools  

---

## 🔄 Project Workflow

Raw CSV Data → AWS S3 → Snowflake RAW Layer → dbt Transformations → Analytics Layer → Power BI Dashboard

---

## 🎯 Objectives

The major objectives of this project are:

✅ Build an end-to-end cloud-based ELT pipeline  
✅ Automate ingestion of retail sales datasets into Snowflake  
✅ Transform raw datasets into analytics-ready models using dbt  
✅ Create optimized fact and dimension tables for reporting  
✅ Develop interactive dashboards for sales and customer insights  

---

## 🗂️ Dataset Overview

The dataset contains retail sales transaction records including customer, product, and regional sales information.

### Key Features Included:

- 📦 **Product Information**
- 👥 **Customer Details**
- 🌍 **Region & Location**
- 📅 **Order Date**
- 💰 **Revenue & Sales Metrics**
- 🧾 **Order Information**
- 📊 **Category & Segment Data**

These features help analyze customer behavior, sales performance, product demand, and regional revenue trends.

---

## 🛠️ Tech Stack & Tools Used

| Category | Tools / Technologies |
|----------|----------------------|
| Cloud Storage | AWS S3 |
| Data Warehouse | Snowflake |
| Data Transformation | dbt, SQL |
| Visualization | Power BI |
| Version Control | Git & GitHub |
| Environment | Jupyter Notebook |

---

## 🧹 Data Ingestion & Processing

The project implements an automated ELT workflow for handling retail sales data.

### ✔️ Data Ingestion Steps

- Uploaded raw CSV datasets into **AWS S3**
- Connected Snowflake using **External Stages**
- Automated ingestion using **Snowpipe**
- Loaded raw datasets into the **RAW schema**

### 🔍 Processing Improvements

- Automated data loading workflows
- Reduced manual intervention using Snowpipe
- Structured scalable cloud-based ingestion architecture

---

## 🔄 Data Transformation with dbt

The raw data was transformed into analytics-ready datasets using **dbt models** and **SQL transformations**.

### Key Transformations Performed:

✅ Cleaned and standardized raw sales records  
✅ Built **staging models** for preprocessing  
✅ Created **fact and dimension tables**  
✅ Implemented **star schema architecture**  
✅ Optimized tables for BI reporting and analytics  

### Core Models Created:

- 📦 `dim_products`
- 👥 `dim_customers`
- 🧾 `fact_orders`
- 📊 `sales_summary`

---

## 📊 Data Modeling & Analytics

A scalable analytics layer was created inside Snowflake for faster querying and reporting.

### Analytics Features:

- ⭐ Star schema implementation
- 📈 Optimized reporting tables
- ⚡ Faster analytical query performance
- 📊 BI-ready structured datasets

---

## 📈 Dashboard & Visualization

Interactive dashboards were created using **Power BI** to generate actionable business insights.

### Dashboard Highlights:

- 📈 Sales performance trends
- 🌍 Revenue analysis by region
- 🏆 Top-selling products
- 👥 Customer segmentation analysis
- 📦 Product category performance
- 💰 Revenue growth tracking

---

## 📊 Key Insights & Findings

✨ Identified high-performing products and regions  
✨ Analyzed customer purchasing behavior trends  
✨ Tracked revenue growth across multiple segments  
✨ Improved visibility into sales performance metrics  
✨ Enabled faster business reporting and analytics  

---

## 🚀 Business Impact

This project can support:

✔️ Retail sales optimization  
✔️ Customer behavior analysis  
✔️ Faster business reporting  
✔️ Revenue trend monitoring  
✔️ Data-driven strategic decision making  

---

## 🏗️ Pipeline Architecture

```text
AWS S3 ➝ Snowflake RAW ➝ Snowflake STAGING ➝ Snowflake ANALYTICS ➝ Power BI Dashboard
```

---

## ⚙️ How to Run This Project

### 🔹 Step 1 — Setup Snowflake

Run the SQL setup script inside Snowflake.

```sql
pipeline_setup.sql
```

---

### 🔹 Step 2 — Upload Dataset to AWS S3

Upload raw CSV datasets into the configured S3 bucket.

---

### 🔹 Step 3 — Configure Snowpipe

Enable automated ingestion from AWS S3 into Snowflake RAW schema.

---

### 🔹 Step 4 — Run dbt Models

```bash
dbt run
dbt test
```

---

### 🔹 Step 5 — Connect Power BI

- Connect Power BI to Snowflake
- Use analytics schema tables
- Build dashboards and reports

---

## 🔐 Security & Best Practices

✅ Separate schemas for RAW, STAGING, and ANALYTICS layers  

✅ Automated ingestion using Snowpipe  

✅ Version control using Git & GitHub  

✅ Modular transformation workflow using dbt  

✅ Structured cloud-based architecture for scalability  

---

## 📚 Learnings From This Project

🎯 Building modern ELT pipelines  

🎯 Cloud-based data warehousing with Snowflake  

🎯 Data transformation using dbt & SQL  

🎯 Designing analytics-ready star schema models  

🎯 Creating interactive Power BI dashboards  

🎯 Automating ingestion workflows using Snowpipe  

---

## 📬 Connect With Me

- **Sunny Kadam**

- 📧 Email: sunnykadam872@gmail.com

- 💼 LinkedIn: www.linkedin.com/in/sunny-862
