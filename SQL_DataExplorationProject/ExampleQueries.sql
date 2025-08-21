-- 1. Total Incidents
SELECT COUNT(*) AS TotalIncidents
FROM dbo.TrafficIncidents;

-- 2. Incidents per Location
SELECT Location, COUNT(*) AS Incidents
FROM dbo.TrafficIncidents
GROUP BY Location
ORDER BY Incidents DESC;

-- 3. Most Common Issues
SELECT Issue_Reported, COUNT(*) AS Occurrences
FROM dbo.TrafficIncidents
GROUP BY Issue_Reported
ORDER BY Occurrences DESC;

-- 4. Incidents by Date
SELECT CAST(Published_Date AS DATE) AS IncidentDate, COUNT(*) AS Incidents
FROM dbo.TrafficIncidents
GROUP BY CAST(Published_Date AS DATE)
ORDER BY IncidentDate;

-- 5. Filtering Example
SELECT *
FROM dbo.TrafficIncidents
WHERE Issue_Reported = 'Traffic Hazard';
