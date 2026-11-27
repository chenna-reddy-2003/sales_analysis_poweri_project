# KPI Validation – HR Analytics Dashboard

## 1. Introduction

This document explains the validation process for Key Performance Indicators (KPIs) used in the HR Analytics Dashboard developed using Microsoft Power BI.

The main purpose is to verify that all KPI values are calculated correctly and display accurate employee information.

## 2. Tools Used

- Microsoft Power BI Desktop
- Power Query Editor
- DAX Measures
- HR_Analytics.csv Dataset
- Excel (optional, for cross-checking)

## 3. KPIs to Validate

### 3.1 Total Employees

**Purpose:** To calculate the total number of employees.

DAX Formula:

```dax
Total Employees =
COUNT('HR_Analytics Data'[EmpID])
```

Validation:
- Compare the KPI card with the count of nonblank EmpID values.
- Check for duplicate employee IDs.
- Check for blank employee IDs.

Expected Result: KPI should match the validated employee count.

### 3.2 Total Attrition

**Purpose:** To calculate the number of employees who left the company.

DAX Formula:

```dax
Total Attrition =
SUM('HR_Analytics Data'[Attrition_Count])
```

Validation:
- Check Attrition_Count values.
- Confirm that the column contains valid employee attrition flags.
- Compare the sum with the dashboard card.

Expected Result: KPI should match the total attrition count.

### 3.3 Attrition Rate

**Purpose:** To calculate the percentage of employees who left the company.

DAX Formula:

```dax
Calculated Attrition Rate =
DIVIDE(
    [Total Attrition],
    [Total Employees],
    0
)
```

Validation:
- Check total employees.
- Check total attrition.
- Verify the percentage calculation.
- Format the measure as Percentage in Power BI.

Expected Result: Attrition rate should match the calculation.

### 3.4 Average Age

**Purpose:** To calculate the average employee age.

DAX Formula:

```dax
Average Age =
AVERAGE('HR_Analytics Data'[Age])
```

Validation:
- Check missing age values.
- Verify the average against the source dataset.

### 3.5 Average Salary

**Purpose:** To calculate the average monthly salary.

DAX Formula:

```dax
Average Salary =
AVERAGE('HR_Analytics Data'[MonthlyIncome])
```

Validation:
- Check salary data types.
- Check blank and invalid salary values.
- Compare with the source dataset.

### 3.6 Average Experience

**Purpose:** To calculate the average years employees have worked at the company.

DAX Formula:

```dax
Average Experience =
AVERAGE('HR_Analytics Data'[YearsAtCompany])
```

Validation:
- Check missing experience values.
- Verify the average against the source data.

## 4. KPI Validation Checklist

- [ ] Total Employees verified.
- [ ] Total Attrition verified.
- [ ] Attrition Rate verified.
- [ ] Average Age verified.
- [ ] Average Salary verified.
- [ ] Average Experience verified.
- [ ] Blank values checked.
- [ ] Duplicate EmpID values checked.
- [ ] Department slicer interaction checked.
- [ ] KPI cards checked after filtering.

## 5. Filter Validation

Test the Department slicer:

1. Select a department.
2. Check whether KPI cards update.
3. Check whether charts update.
4. Clear the filter.
5. Confirm that original totals return.

## 6. Validation Rules

- KPI values must match the underlying dataset.
- Employee IDs should be checked for duplicates and blanks.
- Attrition_Count should contain valid values.
- Numeric columns should have correct data types.
- Percentage measures should use correct formatting.
- Filters should not produce unexpected results.

## 7. Validation Status

| KPI | Validation Status |
|---|---|
| Total Employees | Pending |
| Total Attrition | Pending |
| Attrition Rate | Pending |
| Average Age | Pending |
| Average Salary | Pending |
| Average Experience | Pending |

Update the status to Passed only after completing the validation.

## 8. Conclusion

KPI validation helps ensure that the HR Analytics Dashboard provides accurate and reliable information. Validated KPIs support better workforce analysis and HR decision-making.