# Data Cleaning Steps – HR Analytics Dashboard

## 1. Project Information

**Project Name:** HR Analytics Dashboard using Power BI

**Module:** Power Query – Data Cleaning

**Tool Used:** Microsoft Power BI Desktop

**Feature Used:** Power Query Editor

## 2. Project Objective

The main objective of data cleaning is to prepare accurate, consistent, and reliable HR employee data for dashboard development.

Data cleaning helps to:
- Remove duplicate employee records.
- Handle missing values.
- Correct data types.
- Remove unnecessary spaces.
- Maintain consistent data formats.
- Improve data quality.

## 3. Dataset Columns

The HR dataset contains the following fields:

| Column Name | Description |
|---|---|
| EmpID | Employee ID |
| Age | Employee age |
| AgeGroup | Employee age category |
| Attrition_Count | Attrition count |
| Attrition_Rate | Attrition rate |
| Department | Employee department |
| EducationField | Education background |
| Gender | Employee gender |
| JobRole | Employee job role |
| JobSatisfaction | Job satisfaction rating |
| MonthlyIncome | Monthly salary |
| SalarySlab | Salary category |
| YearsAtCompany | Years worked in company |

## 4. Data Cleaning Process

### Step 1: Import Dataset

1. Open Power BI Desktop.
2. Click Get Data.
3. Select the dataset file.
4. Choose the HR dataset.
5. Click Transform Data.

### Step 2: Remove Duplicate Records

1. Select EmpID column.
2. Click Remove Rows.
3. Select Remove Duplicates.
4. Check whether employee IDs are unique.

**Purpose:** Avoid duplicate employee records.

### Step 3: Handle Missing Values

1. Open Power Query Editor.
2. Check all dataset columns.
3. Identify null and blank values.
4. Review missing values.
5. Replace or remove values only when appropriate.

**Purpose:** Improve data completeness.

### Step 4: Change Data Types

| Column | Expected Data Type |
|---|---|
| EmpID | Whole Number |
| Age | Whole Number |
| AgeGroup | Text |
| Attrition_Count | Whole Number |
| Attrition_Rate | Decimal Number |
| Department | Text |
| EducationField | Text |
| Gender | Text |
| JobRole | Text |
| JobSatisfaction | Whole Number |
| MonthlyIncome | Whole Number |
| SalarySlab | Text |
| YearsAtCompany | Whole Number |

**Purpose:** Ensure correct calculations and visualizations.

### Step 5: Remove Extra Spaces

1. Select text columns.
2. Open Transform tab.
3. Select Format.
4. Click Trim.
5. Select Clean if necessary.

**Purpose:** Maintain consistent text values.

### Step 6: Standardize Text Values

Check columns such as:
- Gender
- Department
- EducationField
- JobRole
- SalarySlab

Make sure category names are consistent.

### Step 7: Validate Data

Check the following:
- Employee IDs are unique.
- Age values are valid.
- MonthlyIncome contains valid numeric values.
- Attrition_Rate contains valid numeric values.
- Department names are consistent.
- No unexpected blank values remain.

## 5. Data Quality Checklist

- [ ] Dataset imported successfully.
- [ ] Duplicate records checked.
- [ ] Missing values checked.
- [ ] Data types corrected.
- [ ] Extra spaces removed.
- [ ] Text values standardized.
- [ ] Data quality validated.

## 6. Final Output

After completing the data cleaning process:

1. Click Close & Apply.
2. Load the cleaned data into Power BI.
3. Verify the columns in Data View.
4. Continue with Data Modeling.
5. Create DAX Measures.
6. Develop the HR Analytics Dashboard.

## 7. Conclusion

Data cleaning is an important step in the HR Analytics Dashboard project. Power Query Editor helps prepare employee data for accurate analysis and meaningful HR insights.

**Tool:** Microsoft Power BI Desktop  
**Feature:** Power Query Editor  
**Output:** Cleaned HR Employee Dataset