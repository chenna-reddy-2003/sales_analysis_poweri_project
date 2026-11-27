# Data Transformation Steps – HR Analytics Dashboard

## 1. Project Information

**Project Name:** HR Analytics Dashboard using Power BI

**Module:** Power Query – Data Transformation

**Tool:** Microsoft Power BI Desktop

**Editor:** Power Query Editor

## 2. Project Objective

The objective of data transformation is to convert raw HR employee data into a structured and consistent format for dashboard development.

## 3. Data Transformation Operations

### Step 1: Rename Columns

Rename columns to make them easy to understand.

| Existing Column | New Column |
|---|---|
| EmpID | Employee ID |
| Age | Employee Age |
| JobRole | Job Role |
| MonthlyIncome | Monthly Income |
| YearsAtCompany | Years At Company |
| EducationField | Education Field |

**Process:**
1. Open Power Query Editor.
2. Right-click the column name.
3. Select Rename.
4. Enter the new column name.

### Step 2: Change Data Types

Set appropriate data types.

| Column | Data Type |
|---|---|
| EmpID | Whole Number |
| Age | Whole Number |
| AgeGroup | Text |
| Department | Text |
| Gender | Text |
| JobRole | Text |
| MonthlyIncome | Whole Number |
| YearsAtCompany | Whole Number |
| JobSatisfaction | Whole Number |
| Attrition_Count | Whole Number |
| Attrition_Rate | Decimal Number |
| SalarySlab | Text |
| EducationField | Text |

### Step 3: Replace Values

Use Replace Values to standardize inconsistent category values.

**Example:**
- Check Gender values.
- Check Department names.
- Check JobRole names.
- Correct inconsistent spellings if present.

**Process:**
1. Select the required column.
2. Click Transform.
3. Select Replace Values.
4. Enter the old and new values.
5. Click OK.

### Step 4: Trim and Clean Text

Remove unnecessary spaces and unwanted characters from text columns.

Columns:
- Gender
- Department
- JobRole
- EducationField
- SalarySlab

**Process:**
1. Select a text column.
2. Open Transform tab.
3. Select Format.
4. Click Trim.
5. Select Clean if necessary.

### Step 5: Create Conditional Column

Create a conditional column when additional business categories are required.

**Example: Age Category**

| Condition | Category |
|---|---|
| Age below 25 | Young |
| Age 25–35 | Early Career |
| Age 36–45 | Mid Career |
| Age above 45 | Senior |

**Process:**
1. Open Add Column.
2. Select Conditional Column.
3. Enter the new column name.
4. Add the conditions.
5. Click OK.

### Step 6: Create Custom Column

Custom columns can be created using Power Query formulas.

Example:

```powerquery
if [YearsAtCompany] >= 5
then "Experienced"
else "Less Experienced"
```

New Column Name: Experience Category

### Step 7: Remove Unnecessary Columns

1. Identify columns not required for HR analysis.
2. Select the unnecessary columns.
3. Right-click.
4. Select Remove Columns.

Keep all columns required for dashboard visuals and calculations.

### Step 8: Sort Data

Sort employee data based on required columns.

Examples:
- Age – Ascending
- MonthlyIncome – Descending
- YearsAtCompany – Descending

### Step 9: Apply Transformations

1. Review all transformation steps.
2. Check column names.
3. Verify data types.
4. Check missing values.
5. Verify category values.
6. Click Close & Apply.

## 4. Final Data Validation

Check the following:

- Employee ID values are valid.
- Age values are numeric.
- Department categories are consistent.
- Job Role categories are consistent.
- Monthly Income contains numeric values.
- Attrition Count is valid.
- Years At Company contains numeric values.

## 5. Expected Output

After completing data transformation:

- Structured HR employee dataset.
- Consistent column names.
- Correct data types.
- Standardized text values.
- Additional analysis columns where required.
- Data ready for Power BI Data Modeling.

## 6. Next Project Step

After completing Power Query transformations:

1. Open Model View.
2. Check table structure.
3. Verify relationships if multiple tables exist.
4. Create DAX Measures.
5. Develop HR Analytics Dashboard.

## 7. Conclusion

Power Query transformations help convert raw HR data into a structured format. These transformations support accurate employee analysis and interactive HR dashboard development.

**Tool:** Microsoft Power BI Desktop

**Feature:** Power Query Editor

**Output:** Transformed HR Dataset