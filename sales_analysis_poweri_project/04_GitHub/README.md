# 📊 Sales Analysis Dashboard using Power BI

## 📌 Project Overview
The Sales Analysis Dashboard using Power BI is a data analytics project designed to analyze sales and profit performance through interactive visualizations.

The dashboard helps users understand daily, monthly, quarterly, and yearly sales trends and monitor important business KPIs.

## 🎯 Project Objectives
- Analyze overall sales and profit.
- Identify sales trends over different time periods.
- Create interactive dashboards.
- Monitor key performance indicators (KPIs).
- Support data-driven business decisions.

## 🛠️ Tools & Technologies
- Microsoft Power BI Desktop
- Power Query Editor
- DAX (Data Analysis Expressions)
- Microsoft Excel

## 📂 Dataset Description

| Column Name | Description |
|---|---|
| Order Date | Customer order date |
| Ship Date | Product shipping date |
| Sales | Sales amount |
| Profit | Profit amount |

## 📊 Dashboard Features
1. Total Sales KPI Card
2. Total Profit KPI Card
3. Daily Sales Analysis
4. Monthly Sales Analysis
5. Quarterly Sales Analysis
6. Yearly Sales Analysis
7. Interactive Date Slicer

## 🧮 DAX Measures

### Total Sales
```DAX
Total Sales = SUM(Sheet1[Sales])
```

### Total Profit
```DAX
Total Profit = SUM(Sheet1[Profit])
```

### Average Sales
```DAX
Average Sales = AVERAGE(Sheet1[Sales])
```

### Profit Margin
```DAX
Profit Margin = DIVIDE([Total Profit], [Total Sales], 0)
```

Format Profit Margin as Percentage in Power BI.

## 🔄 Project Workflow
1. Data Import
2. Data Cleaning
3. Data Transformation
4. Data Modeling
5. DAX Calculations
6. Dashboard Creation
7. Data Validation
8. Dashboard Publishing

## 📈 Project Outcome
The dashboard provides useful insights into sales and profit performance. It helps users identify trends, monitor KPIs, and understand business performance using interactive reports.

## 📁 Project Structure

```text
Sales_Analysis_PowerBI/
│
├── 01_Data/
│   └── Sales_Dataset.xlsx
│
├── 02_PowerBI_Project/
│   ├── Sales_Analysis_Dashboard.pbix
│   ├── DAX_Measures.txt
│   └── Dashboard_Screenshot.png
│
├── 03_Documentation/
│   ├── Project_Overview.docx
│   ├── Data_Cleaning_Steps.docx
│   └── Project_Report.pdf
│
└── README.md
```

## 🚀 How to Use
1. Download or clone this repository.
2. Open the `.pbix` file using Power BI Desktop.
3. If required, update the dataset source path.
4. Refresh the data.
5. Explore the dashboard using the date slicer.

## 👨‍💻 Author
**Name:** Your Name

**Project:** Sales Analysis Dashboard using Power BI

**Role:** Aspiring Data Analyst

## ⭐ Conclusion
This project demonstrates practical knowledge of Power BI, Power Query, DAX, data cleaning, and data visualization for business analysis.