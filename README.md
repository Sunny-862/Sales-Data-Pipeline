# 🚀 Sales Data Pipeline (End-to-End)

<p align="center">
  <img src="https://img.shields.io/badge/AWS-S3-orange?style=for-the-badge&logo=amazonaws" />
  <img src="https://img.shields.io/badge/Snowflake-Data%20Warehouse-blue?style=for-the-badge&logo=snowflake" />
  <img src="https://img.shields.io/badge/dbt-Transformations-orange?style=for-the-badge&logo=dbt" />
  <img src="https://img.shields.io/badge/Power%20BI-Dashboard-yellow?style=for-the-badge&logo=powerbi" />
  <img src="https://img.shields.io/badge/GitHub-Version%20Control-black?style=for-the-badge&logo=github" />
</p>

<p align="center">
  <b>Modern ELT Pipeline using AWS S3, Snowflake, dbt & Power BI</b>
</p>

---

# 📌 Project Overview

This project demonstrates a **modern cloud-based data engineering pipeline** that ingests raw retail sales data, transforms it into analytics-ready datasets, and visualizes actionable business insights.

### 🔄 Pipeline Flow

```text
AWS S3 ➝ Snowflake RAW ➝ Snowflake STAGING ➝ Snowflake ANALYTICS ➝ Power BI
```

---

# 🏗️ Architecture

```text
           ┌────────────┐
           │   AWS S3   │
           │ Raw CSV    │
           └─────┬──────┘
                 │
                 ▼
      ┌────────────────────┐
      │ Snowflake RAW      │
      │ External Stage     │
      │ + Snowpipe         │
      └─────────┬──────────┘
                │
                ▼
      ┌────────────────────┐
      │ Snowflake STAGING  │
      │ dbt Models         │
      └─────────┬──────────┘
                │
                ▼
      ┌────────────────────┐
      │ Snowflake MARTS    │
      │ Analytics Layer    │
      └─────────┬──────────┘
                │
                ▼
         📊 Power BI Dashboard
```

---

# 🛠️ Tech Stack

| 🚀 Tool | 📌 Purpose |
|---------|------------|
| ☁️ **AWS S3** | Store raw CSV files |
| ❄️ **Snowflake** | Cloud Data Warehouse |
| ⚡ **Snowpipe** | Automated ingestion |
| 🔄 **dbt** | Data transformation & modeling |
| 🧠 **SQL** | Data transformation logic |
| 📊 **Power BI** | Dashboard & visualization |
| 🐙 **Git & GitHub** | Version control |

---

# 📁 Project Structure

```bash
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
│   └── pipeline_setup.sql       # Snowflake setup
│
├── data_sample/
│   └── orders.csv               # Sample dataset
│
├── README.md
└── .gitignore
```

---

# 🔄 Data Pipeline Flow

## 1️⃣ Data Ingestion

📂 Raw CSV files uploaded to **AWS S3**

🔗 Snowflake **External Stage** connects to S3

⚡ **Snowpipe** automatically loads data into the `RAW` schema

---

## 2️⃣ Data Transformation (dbt)

🧹 `stg_orders.sql` cleans raw data

👥 `dim_customers.sql` builds customer dimension

📦 `dim_products.sql` builds product dimension

🧾 `fact_orders.sql` builds fact table

---

## 3️⃣ Data Modeling

⭐ Star schema created in the **Analytics Layer**

⚡ Optimized fact & dimension tables for BI reporting

📈 Faster querying and dashboard performance

---

## 4️⃣ Visualization

📊 Snowflake connected to **Power BI**

Dashboard includes:

- 📈 Sales trends
- 🌍 Revenue by region
- 🏆 Top selling products
- 👥 Customer segmentation

---

# 💡 Key Business Insights

✅ Region-wise sales performance

✅ Top-selling products

✅ Revenue growth trends

✅ Customer behavior analysis

✅ Product performance tracking

---

# ⚙️ How to Run This Project

## 🔹 Step 1 — Setup Snowflake

Run the SQL setup script:

```sql
snowflake_sql/pipeline_setup.sql
```

---

## 🔹 Step 2 — Upload Data to AWS S3

Upload the CSV dataset into your configured S3 bucket.

---

## 🔹 Step 3 — Snowpipe Auto Ingestion

Snowpipe automatically loads data into the `RAW` schema.

---

## 🔹 Step 4 — Run dbt Models

```bash
dbt run
dbt test
```

---

## 🔹 Step 5 — Connect Power BI

- Connect Power BI to Snowflake
- Use the `ANALYTICS` schema
- Build dashboards & reports

---

# 📊 Dashboard Preview

<p align="center">
  <img width="1277" height="718" alt="dashboard" src="https://github.com/user-attachments/assets/fe127cf5-2f7b-463d-99ad-9e8c477abd4a" />
</p>

---

# 🔐 Security & Best Practices

✅ Role-based access control in Snowflake

✅ Separate schemas (`RAW`, `STAGING`, `ANALYTICS`)

✅ Secure ingestion using Snowpipe

✅ Sensitive files ignored via `.gitignore`

✅ Version control using Git & GitHub

---

# 📚 Learnings From This Project

🎯 Building a modern ELT pipeline

🎯 Using Snowpipe for automated ingestion

🎯 Data transformation with dbt

🎯 Creating star schema architecture

🎯 Building analytics-ready data marts

🎯 Connecting Snowflake with BI tools

---

# 🤝 Connect With Me

💼 Aspiring Data Engineer & Data Analyst  
📊 Passionate about Cloud, Analytics & Data Engineering

⭐ If you found this project useful, consider giving it a star on GitHub!

---
