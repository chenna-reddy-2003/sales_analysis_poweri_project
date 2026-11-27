# Relationships Documentation – HR Analytics Dashboard

## 1. Project Information

**Project Name:** HR Analytics Dashboard using Power BI

**Module:** Data Modeling

**Tool Used:** Microsoft Power BI Desktop

**Model Type:** Single Table Model

## 2. Introduction

Data modeling is an important step in Power BI development.

The purpose of data modeling is to organize data and prepare it for reporting and analysis.

In this HR Analytics Dashboard project, employee information is maintained in a single table named HR_Analytics Data.

## 3. Data Model Structure

**Table Name:** HR_Analytics Data

The table contains HR-related employee information such as:

- EmpID
- Age
- Gender
- Department
- JobRole
- EducationField
- JobSatisfaction
- MonthlyIncome
- SalarySlab
- YearsAtCompany
- Attrition_Count
- Attrition_Rate

## 4. Table Relationships

This project uses a Single Table Model.

Only one table is present in the inspected model layout.

Therefore:

- No relationship between multiple tables is required.
- No One-to-Many relationship is configured in the displayed model layout.
- No Many-to-Many relationship is required.
- No separate lookup or dimension tables are shown.

## 5. Primary Key

**Column:** EmpID

EmpID represents the employee identification number.

It can be used to identify individual employee records.

Note: Verify that EmpID contains unique, non-blank values before treating it as a primary key.

## 6. Data Modeling Process

1. Open Power BI Desktop.
2. Import the HR employee dataset.
3. Open Model View.
4. Check the HR_Analytics Data table.
5. Verify available columns.
6. Check whether relationships exist.
7. Confirm that the model is suitable for the dashboard.

## 7. Data Model Validation

Check the following:

- Dataset table is loaded successfully.
- Required columns are available.
- Employee IDs are valid.
- Data types are correct.
- No unexpected duplicate records exist.
- Dashboard visuals use the correct fields.

## 8. Benefits of Single Table Model

- Simple data structure.
- Easy to understand.
- Easy to create visualizations.
- Suitable for a dataset containing all required HR fields.
- No additional table relationships are required.

## 9. Conclusion

The HR Analytics Dashboard uses a Single Table Model in Power BI.

The HR_Analytics Data table contains employee information required for analyzing employee attrition, department performance, job roles, salary categories and workforce trends.

This model supports the development of an interactive HR Analytics Dashboard.

**Tool:** Microsoft Power BI Desktop

**Output:** HR Analytics Data Model