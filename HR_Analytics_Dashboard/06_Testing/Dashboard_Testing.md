# Dashboard Testing – HR Analytics Dashboard

## 1. Project Overview

Project Name: HR Analytics Dashboard using Power BI

Purpose:
To test the dashboard functionality, visuals, filters, slicers, and KPI cards to ensure they work correctly.

## 2. Testing Objectives

- Verify all KPI cards.
- Test charts and visualizations.
- Check Department slicer functionality.
- Verify data accuracy.
- Test dashboard interactions.
- Check report performance.
- Ensure the dashboard is user-friendly.

## 3. Testing Environment

Tools Used:
- Microsoft Power BI Desktop
- Power Query Editor
- DAX Measures
- HR_Analytics.csv Dataset

## 4. KPI Card Testing

| Test Case | Expected Result | Status |
|---|---|---|
| Employee Count | Displays total employees | Pending |
| Attrition | Displays total attrition | Pending |
| Attrition Rate | Displays correct percentage | Pending |
| Average Age | Displays average age | Pending |
| Average Salary | Displays average salary | Pending |
| Average Years | Displays average experience | Pending |

## 5. Visual Testing

### 5.1 Donut Chart
Visual: Attrition by Education

Test:
- Check education categories.
- Verify attrition values.
- Check chart labels and legend.

Expected Result:
Chart should display attrition across education categories.

### 5.2 Column Chart
Visual: Attrition by Age

Test:
- Check age groups.
- Verify attrition values.
- Check axis labels.

Expected Result:
Chart should display attrition across age groups.

### 5.3 Bar Chart
Visual: Attrition by Job Role

Test:
- Check all job roles.
- Verify attrition counts.
- Check category labels.

Expected Result:
Chart should display attrition by job role.

### 5.4 Bar Chart
Visual: Attrition by Salary

Test:
- Check salary slabs.
- Verify attrition counts.
- Check chart labels.

Expected Result:
Chart should display attrition across salary slabs.

### 5.5 Area Chart
Visual: Attrition by Years at Company

Test:
- Check experience categories.
- Verify attrition values.
- Check axis labels.

Expected Result:
Chart should display attrition based on years at company.

### 5.6 Treemap
Visual: Attrition by Gender

Test:
- Check gender categories.
- Verify attrition values.

Expected Result:
Treemap should display attrition by gender.

### 5.7 Matrix
Visual: Job Role and Job Satisfaction

Test:
- Check job role categories.
- Verify job satisfaction values.
- Check row and column labels.

Expected Result:
Matrix should display job satisfaction across job roles.

## 6. Slicer Testing

Slicer Name: Department

Test Steps:
1. Select a department.
2. Check whether KPI cards update.
3. Check whether charts update.
4. Select another department.
5. Clear the slicer selection.

Expected Result:
All connected visuals should respond correctly to the selected department.

## 7. Data Testing

- Check missing values.
- Check duplicate employee IDs.
- Verify data types.
- Check invalid values.
- Compare dashboard values with source data.

## 8. User Interaction Testing

- Test chart selections.
- Test cross-filtering.
- Test slicer interactions.
- Check visual tooltips.
- Verify report navigation if applicable.

## 9. Performance Testing

- Check dashboard loading time.
- Check visual response after filtering.
- Check for calculation errors.
- Ensure visuals display without errors.

## 10. Testing Checklist

- [ ] All KPI cards display correctly.
- [ ] All charts display correctly.
- [ ] Department slicer works correctly.
- [ ] Data values are verified.
- [ ] Chart labels are readable.
- [ ] Cross-filtering works correctly.
- [ ] No unexpected blank visuals.
- [ ] No DAX errors.
- [ ] Dashboard layout is consistent.
- [ ] Report is ready for review.

## 11. Test Results

| Testing Area | Status |
|---|---|
| KPI Testing | Pending |
| Chart Testing | Pending |
| Slicer Testing | Pending |
| Data Testing | Pending |
| Interaction Testing | Pending |
| Performance Testing | Pending |

Update the status to Passed only after completing each test.

## 12. Conclusion

Dashboard testing ensures that the HR Analytics Dashboard works correctly and provides reliable information. It helps identify errors in KPI calculations, charts, filters, and user interactions before sharing the report with stakeholders.