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

-- Query 3: Top 5 busiest days by number of incidents (handles timezone)
SELECT TOP 5
    TRY_CONVERT(DATE, LEFT(Published_Date, 20)) AS Report_Date,
    COUNT(*) AS Incident_Count
FROM Real_Time_Traffic_Incident_Reports
WHERE TRY_CONVERT(DATE, LEFT(Published_Date, 20)) IS NOT NULL
GROUP BY TRY_CONVERT(DATE, LEFT(Published_Date, 20))
ORDER BY COUNT(*) DESC;

-- Query 4: Find the top 10 locations with the highest number of incidents
SELECT TOP 10 location, COUNT(*) AS Incident_Count
FROM Real_Time_Traffic_Incident_Reports
GROUP BY location
ORDER BY Incident_Count DESC;

-- Query 5: Filter incidents for a specific type ("Traffic Hazard")
SELECT *
FROM Real_Time_Traffic_Incident_Reports
WHERE Issue_Reported = 'Traffic Hazard';



