# Amazon Product Pricing, Discounts & Customer Review Analysis

## Project Overview

This project analyzes Amazon product data to uncover pricing strategies, discount patterns, customer behavior, and category-level business insights using **Python, SQL, and Data Visualization**.

The workflow includes:

* Raw data cleaning and preprocessing
* Feature engineering
* MySQL database integration
* SQL business analysis
* Exploratory Data Analysis (EDA)
* Visualization and dashboard preparation

---

# Objectives

### Primary Goals:

* Analyze product pricing and discount structures
* Identify top-performing product categories
* Evaluate customer ratings and review behavior
* Measure product value through savings analysis
* Segment products by pricing tiers
* Generate actionable business recommendations

---

# Dataset Information

### Source:

Amazon Product Dataset

### Key Features:

* Product ID
* Product Name
* Category
* Discounted Price
* Actual Price
* Discount Percentage
* Rating
* Rating Count
* Review Data

### Dataset Challenges:

* Currency symbols
* Percentage formatting
* Mixed object datatypes
* Missing values
* Duplicate records
* Hierarchical categories

---

# Tech Stack

## Languages & Tools:

* Python
* Pandas
* NumPy
* Matplotlib
* Seaborn
* MySQL
* Jupyter Notebook
* GitHub

---

# Project Workflow

## Phase 1: Data Understanding

* Dataset inspection
* Column structure review
* Business objective definition

---

## Phase 2: Data Cleaning & Preprocessing

### Steps:

* Handled missing values
* Removed duplicates
* Converted object columns into numeric formats
* Cleaned pricing and discount fields
* Simplified categories
* Added engineered features:

  * `main_category`
  * `savings`
  * `price_range`

### Output:

`amazon_cleaned.csv`

---

## Phase 3: SQL Analysis

### Key SQL Tasks:

* Product count analysis
* Category performance
* Average discount analysis
* Highest savings products
* Rating trends
* Price segment performance
* Customer behavior insights

### Deliverable:

`amazon_analysis_queries.sql`

---

## Phase 4: Visualization & EDA

### Major Visualizations:

* Category distribution
* Discount trends
* Rating distribution
* Price segmentation
* Savings analysis
* Correlation heatmaps
* Discount vs rating analysis

---

# Key Business Insights

### Pricing Insights:

* Budget and affordable products dominate listings
* Mid-range products often balance value and customer satisfaction
* Luxury products offer high nominal savings but lower demand

### Discount Insights:

* High discounts do not guarantee higher ratings
* Discount strategies vary significantly by category

### Customer Behavior:

* Popular products often combine affordability and strong ratings
* Electronics and accessories frequently dominate customer engagement

### Market Trends:

* Mid-market pricing appears strongest
* Category segmentation reveals clear competitive strategies

---

# Feature Engineering Highlights

### Added Columns:

* `main_category`: Top-level category extraction
* `savings`: Actual price - discounted price
* `price_range`: Budget to Luxury segmentation

---

# Repository Structure

```bash
Amazon-Product-Analysis/
│
├── data/
│   ├── amazon.csv
│   └── amazon_cleaned.csv
│
├── notebooks/
│   ├── data_cleaning.ipynb
│   └── visualization.ipynb
│
├── sql/
│   └── amazon_analysis_queries.sql
│
├── screenshots/
│
├── README.md
├── requirements.txt
└── .gitignore
```

---

# Installation & Setup

## Clone Repository:

```bash
git clone https://github.com/yourusername/Amazon-Product-Analysis.git
cd Amazon-Product-Analysis
```

---

## Install Dependencies:

```bash
pip install -r requirements.txt
```

---

## Required Libraries:

```txt
pandas
numpy
matplotlib
seaborn
sqlalchemy
pymysql
jupyter
```

---

# How to Run

### 1. Open Jupyter Notebook

```bash
jupyter notebook
```

### 2. Run:

* `data_cleaning.ipynb`
* `visualization.ipynb`

### 3. Import cleaned data into MySQL

### 4. Execute SQL queries from:

```bash
sql/amazon_analysis_queries.sql
```

---

# Sample Visual Outputs

### Include screenshots for:

* Category distribution charts
* Discount analysis
* SQL query outputs
* Heatmaps
* Dashboard previews

---

# Future Improvements

### Potential Enhancements:

* Sentiment analysis on reviews
* NLP-based customer feedback analysis
* Interactive Streamlit dashboard
* Power BI dashboard
* Predictive pricing models
* Recommendation systems

---

# Learning Outcomes

### Skills Demonstrated:

* Data cleaning
* Data preprocessing
* SQL querying
* Exploratory data analysis
* Data visualization
* Business intelligence
* GitHub project structuring
* End-to-end analytics workflow

---

# Resume / Portfolio Value

This project demonstrates practical proficiency in:

* Python data analysis
* SQL analytics
* Business problem solving
* Data storytelling
* Real-world project deployment

---

# Author

### Kunal Mohnani

B.Tech CSE | Aspiring Data Scientist / AI-ML Engineer

---

# License

This project is for educational and portfolio purposes.

---

# Final Note

This project is designed to simulate a real-world e-commerce analytics pipeline, combining technical implementation with business intelligence to create a recruiter-ready portfolio asset.
