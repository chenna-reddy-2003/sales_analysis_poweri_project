# HR Analytics Dashboard Using Power BI

## 1. Project Overview

The HR Analytics Dashboard is a Data Analytics project developed using Microsoft Power BI.

This project analyzes employee information and helps understand employee attrition, salary patterns, job satisfaction, employee age groups and workforce trends through interactive visualizations.

## 2. Project Objectives

- Analyze employee data.
- Calculate total employees and attrition rate.
- Understand employee attrition patterns.
- Analyze salary and job satisfaction.
- Explore department-wise and job role-wise employee information.
- Create an interactive HR dashboard.
- Support data-driven HR decisions.

## 3. Tools & Technologies

| Tool | Purpose |
|---|---|
| Power BI Desktop | Dashboard development |
| Power Query | Data cleaning and transformation |
| DAX | KPI calculations |
| CSV | Dataset source |

## 4. Dataset Description

**Dataset Name:** HR_Analytics.csv

Important columns:

- EmpID
- Age
- Gender
- Department
- JobRole
- MonthlyIncome
- YearsAtCompany
- Attrition_Count
- EducationField
- JobSatisfaction
- SalarySlab
- AgeGroup

## 5. Project Folder Structure

```text
HR_Analytics_Dashboard/
│
├── 01_Data_Source/
│   └── HR_Analytics.csv
│
├── 02_Power_Query/
│   ├── Data_Cleaning_Steps.md
│   └── Data_Transformation_Steps.md
│
├── 03_Data_Model/
│   ├── Data_Model_Screenshot.png
│   └── Relationships_Documentation.md
│
├── 04_DAX_Measures/
│   ├── Employee_Measures.dax
│   ├── Attrition_Measures.dax
│   └── HR_KPI_Measures.dax
│
├── 05_PowerBI_Dashboard/
│   ├── HR_Analytics_Dashboard.pbix
│   ├── Dashboard_Screenshot.png
│   └── Dashboard_Design.md
│
├── 06_Testing/
│   ├── KPI_Validation.md
│   └── Dashboard_Testing.md
│
├── 07_PowerBI_Service/
│   ├── Publishing_Steps.md
│   └── Refresh_Configuration.md
│
└── 08_Documentation/
    ├── Project_Overview.docx
    ├── Project_Report.pdf
    ├── Business_Insights.docx
    └── README.md
```

## 6. Dashboard KPIs

The dashboard contains the following KPIs:

1. Total Employees
2. Total Attrition
3. Attrition Rate
4. Average Age
5. Average Salary
6. Average Years at Company

## 7. Dashboard Visualizations

- Attrition by Education – Donut Chart
- Attrition by Age – Column Chart
- Attrition by Job Role – Bar Chart
- Attrition by Salary – Bar Chart
- Attrition by Years at Company – Area Chart
- Attrition by Gender – Treemap
- Job Role and Job Satisfaction – Matrix
- Department – Slicer

## 8. DAX Measures

Example:

### Total Employees

```dax
Total Employees =
COUNT('HR_Analytics Data'[EmpID])
```

### Total Attrition

```dax
Total Attrition =
SUM('HR_Analytics Data'[Attrition_Count])
```

### Average Salary

```dax
Average Salary =
AVERAGE('HR_Analytics Data'[MonthlyIncome])
```

### Average Age

```dax
Average Age =
AVERAGE('HR_Analytics Data'[Age])
```

## 9. Project Workflow

1. Import HR dataset into Power BI.
2. Review and clean data using Power Query.
3. Check data types and data quality.
4. Prepare the data model.
5. Create DAX measures.
6. Design KPI cards and charts.
7. Add slicers and interactive features.
8. Validate dashboard calculations.
9. Document business insights.

## 10. Business Insights

This dashboard helps HR teams investigate:

- Employee attrition patterns.
- Age-wise employee exits.
- Gender-wise attrition.
- Job role-wise attrition.
- Salary-wise attrition.
- Employee satisfaction.
- Department-level workforce trends.

Actual findings should be added after analyzing the dashboard values.

## 11. Project Benefits

- Interactive HR reporting.
- Easy employee data analysis.
- Better workforce monitoring.
- Identification of attrition patterns.
- Support for HR decision-making.

## 12. Conclusion

The HR Analytics Dashboard demonstrates the use of Microsoft Power BI for analyzing employee data and creating interactive reports.

This project provides practical experience in Power Query, DAX, data modeling and dashboard development.

## 13. Author

**Project:** HR Analytics Dashboard Using Power BI

**Domain:** Data Analytics

**Technology:** Microsoft Power BI

**Project Level:** Beginner to Intermediate
