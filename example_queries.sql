-- Query 1: Count how many records are in the traffic incidents table
SELECT COUNT(*) AS TotalIncidents
FROM Real_Time_Traffic_Incident_Reports;

-- Query 2: Find the top 5 most common incident types
SELECT TOP 5 
    Issue_Reported, 
    COUNT(*) AS Total
FROM Real_Time_Traffic_Incident_Reports
GROUP BY Issue_Reported
ORDER BY Total DESC;

-- Query 3: Find the busiest days with the most reported incidents
SELECT CAST(date_time AS DATE) AS Report_Date, COUNT(*) AS Incident_Count
FROM Real_Time_Traffic_Incident_Reports
GROUP BY CAST(date_time AS DATE)
ORDER BY Incident_Count DESC
LIMIT 5;

