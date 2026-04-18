# 📊 Mobile Data Analysis

## 📌 Project Overview

This project performs SQL-based analysis on a mobile phone dataset to uncover pricing trends, feature correlations, and key market insights.

The analysis focuses on understanding how different specifications such as RAM, battery capacity, and brand influence mobile phone pricing.

---

## 📁 Dataset

The dataset contains information about mobile phones, including:

* Brand
* Price
* RAM
* Storage
* Battery capacity
* Other specifications

File:

* `data/cleaned_data.csv`

---

## 🛠 Tools & Technologies

* SQL (MySQL / PostgreSQL)
* CSV dataset

---

## 🎯 Objectives

* Analyze price distribution across mobile phones
* Identify relationship between features and price
* Compare brands and their pricing strategies
* Extract actionable insights from raw data

---

## 📂 Project Structure

```
mobile-data-analysis/
│
├── data/
│   └── cleaned_data.csv
│
├── sql/
│   ├── schema.sql
│   └── analysis.sql
│
├── results/
│   
└── README.md
```

---

## 🔍 Key SQL Analysis

Examples of queries performed:

* Average price by brand
* Price vs RAM comparison
* Battery capacity impact on pricing
* Top-performing brands in premium segment

---

## 📈 Key Insights

(*Replace these with REAL results from your queries*)

* Phones with higher RAM tend to have higher average prices
* Premium brands dominate the high-price segment
* Battery capacity shows moderate correlation with pricing
* Mid-range segment has the highest number of devices

---

## 🚀 How to Use

1. Import `schema.sql` into your SQL database
2. Load `cleaned_data.csv` into the table
3. Run queries from `analysis.sql`

---

## 📊 Future Improvements

* Add data visualization (Power BI / Tableau)
* Perform analysis using Python (Pandas)
* Build an interactive dashboard
* Include advanced statistical analysis

---

## ⚠️ Note

This project is focused on SQL-based analysis. Insights depend on dataset quality and may vary with different data sources.
