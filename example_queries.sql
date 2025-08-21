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
