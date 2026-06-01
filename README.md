<h1 align="center"> 🚀 Sales Data Pipeline (End-to-End)</h1>

# Sales Data Pipeline & Analytics Dashboard

![AWS S3](https://img.shields.io/badge/-AWS%20S3-FF9900?style=flat&logo=amazons3&logoColor=white) ![Snowflake](https://img.shields.io/badge/-Snowflake-29B5E8?style=flat&logo=snowflake&logoColor=white) ![dbt](https://img.shields.io/badge/-dbt-FF694B?style=flat&logo=dbt&logoColor=white) ![SQL](https://img.shields.io/badge/-SQL-4479A1?style=flat&logo=postgresql&logoColor=white) ![Power BI](https://img.shields.io/badge/-Power%20BI-F2C811?style=flat&logo=powerbi&logoColor=black)

---
  <b>Modern ELT Pipeline using AWS S3, Snowflake, dbt & Power BI</b>
</p>

---

## 📌 Project Overview

This project demonstrates a **modern cloud-based data engineering pipeline** that ingests raw retail sales data, transforms it into analytics-ready datasets, and visualizes actionable business insights.

### 🔄 Pipeline Flow

```text
AWS S3 ➝ Snowflake RAW ➝ Snowflake STAGING ➝ Snowflake ANALYTICS ➝ Power BI
```

---

## Architecture

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

## 🛠️ Tech Stack & Tools Used

| Category | Tools / Technologies |
| :--- | :--- |
| **Cloud Storage** | AWS S3 |
| **Data Warehouse** | Snowflake |
| **Data Transformation** | dbt, SQL |
| **Visualization** | Power BI |
| **Version Control** | Git & GitHub |
| **Environment** | Jupyter Notebook |

---

## 📁 Project Structure

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

## 🔄 Data Pipeline Flow

### 1️⃣ Data Ingestion

📂 Raw CSV files uploaded to **AWS S3**

🔗 Snowflake **External Stage** connects to S3

⚡ **Snowpipe** automatically loads data into the `RAW` schema

---

### 2️⃣ Data Transformation (dbt)

🧹 `stg_orders.sql` cleans raw data

👥 `dim_customers.sql` builds customer dimension

📦 `dim_products.sql` builds product dimension

🧾 `fact_orders.sql` builds fact table

---

### 3️⃣ Data Modeling

⭐ Star schema created in the **Analytics Layer**

⚡ Optimized fact & dimension tables for BI reporting

📈 Faster querying and dashboard performance

---

### 4️⃣ Visualization

📊 Snowflake connected to **Power BI**

Dashboard includes:

- 📈 Sales trends
- 🌍 Revenue by region
- 🏆 Top selling products
- 👥 Customer segmentation

---

## 💡 Key Business Insights

✅ Region-wise sales performance

✅ Top-selling products

✅ Revenue growth trends

✅ Customer behavior analysis

✅ Product performance tracking

---

## ⚙️ How to Run This Project

### 🔹 Step 1 — Setup Snowflake

Run the SQL setup script:

```sql
snowflake_sql/pipeline_setup.sql
```

---

### 🔹 Step 2 — Upload Data to AWS S3

Upload the CSV dataset into your configured S3 bucket.

---

### 🔹 Step 3 — Snowpipe Auto Ingestion

Snowpipe automatically loads data into the `RAW` schema.

---

### 🔹 Step 4 — Run dbt Models

```bash
dbt run
dbt test
```

---

### 🔹 Step 5 — Connect Power BI

- Connect Power BI to Snowflake
- Use the `ANALYTICS` schema
- Build dashboards & reports

---

## 📊 Dashboard Preview

<p align="center">
  <img width="1277" height="718" alt="dashboard" src="https://github.com/user-attachments/assets/fe127cf5-2f7b-463d-99ad-9e8c477abd4a" />
</p>

---

## 🔐 Security & Best Practices

✅ Role-based access control in Snowflake

✅ Separate schemas (`RAW`, `STAGING`, `ANALYTICS`)

✅ Secure ingestion using Snowpipe

✅ Sensitive files ignored via `.gitignore`

✅ Version control using Git & GitHub

---

## 📚 Learnings From This Project

🎯 Building a modern ELT pipeline

🎯 Using Snowpipe for automated ingestion

🎯 Data transformation with dbt

🎯 Creating star schema architecture

🎯 Building analytics-ready data marts

🎯 Connecting Snowflake with BI tools

---

## 📬 Connect With Me

- **Sunny Kadam**

- 📧 Email: sunnykadam872@gmail.com

- 💼 LinkedIn: [www.linkedin.com/in/sunny-862](https://www.linkedin.com/in/sunny-862)

---
