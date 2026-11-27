# Refresh Configuration – HR Analytics Dashboard

## 1. Project Overview

Project Name: HR Analytics Dashboard using Power BI

Purpose:

The purpose of refresh configuration is to update the HR Analytics Dashboard whenever new employee data is added or existing data is modified.

## 2. Tools Used

- Microsoft Power BI Desktop
- Power BI Service
- Power Query Editor
- HR_Analytics.csv Dataset

## 3. Types of Data Refresh

### 3.1 Manual Refresh

Manual refresh updates the dataset whenever the user clicks the Refresh option.

Steps:
1. Open Power BI Desktop.
2. Open HR_Analytics_Dashboard.pbix.
3. Go to the Home tab.
4. Click Refresh.
5. Wait for the data refresh to complete.
6. Verify the updated dashboard values.

### 3.2 Scheduled Refresh

Scheduled refresh automatically updates the dataset at configured times in Power BI Service.

Steps:
1. Open Power BI Service.
2. Navigate to the workspace.
3. Open the Semantic model settings.
4. Find the Refresh section.
5. Configure the data source credentials.
6. Enable Scheduled refresh if available.
7. Select the required refresh frequency and time.
8. Click Apply.

Note: Scheduled refresh availability and frequency depend on the Power BI license, workspace capacity, and administrator settings.

## 4. Data Source Configuration

Dataset Name: HR_Analytics

Source File: HR_Analytics.csv

Data Source Type: CSV File

Data Source Location: Local or cloud storage location.

Important:
If the CSV file is stored on a local computer, Power BI Service may require an On-premises Data Gateway for scheduled refresh.

For cloud storage, configure the appropriate connection and credentials.

## 5. Refresh Frequency

Suggested Refresh Schedule:

| Refresh Type | Frequency |
|---|---|
| Manual Refresh | When required |
| Scheduled Refresh | Daily, if needed |
| Data Validation | After refresh |

Actual refresh frequency should depend on how often the HR dataset changes.

## 6. Refresh Validation

After completing a refresh:

1. Check the dataset refresh history.
2. Verify that the latest data is loaded.
3. Check total employee count.
4. Check total attrition.
5. Verify attrition rate.
6. Check dashboard charts.
7. Test the Department slicer.

## 7. Common Refresh Issues

### Issue 1: Data Source Not Found

Solution:
- Verify the CSV file location.
- Check the file path.
- Confirm that the source file is accessible.

### Issue 2: Authentication Error

Solution:
- Open semantic model settings.
- Check data source credentials.
- Sign in again if required.

### Issue 3: Gateway Offline

Solution:
- Check whether the gateway is installed.
- Verify that the gateway is running.
- Check the gateway connection.

### Issue 4: Column Name Changed

Solution:
- Verify column names in the CSV file.
- Check Power Query steps.
- Update affected transformations if necessary.

## 8. Refresh Testing Checklist

- [ ] Manual refresh tested.
- [ ] Data source connection verified.
- [ ] Credentials configured.
- [ ] Scheduled refresh configured if available.
- [ ] Latest data verified.
- [ ] KPI values checked.
- [ ] Dashboard visuals checked.
- [ ] Refresh history reviewed.

## 9. Security Considerations

- Use authorized data source credentials.
- Protect confidential employee information.
- Restrict access to the semantic model.
- Do not expose sensitive HR data through public links.

## 10. Expected Outcome

The HR Analytics Dashboard should display updated employee information after a successful data refresh.

## 11. Conclusion

Refresh configuration helps maintain updated and reliable HR analytics information. Manual and scheduled refresh options allow users to keep the dashboard current based on business requirements.