-- Traffic Incidents Table
CREATE TABLE dbo.TrafficIncidents (
    IncidentID INT IDENTITY(1,1),
    Published_Date DATETIME,
    Issue_Reported NVARCHAR(100),
    Location NVARCHAR(50)
);

INSERT INTO dbo.TrafficIncidents (Published_Date, Issue_Reported, Location)
VALUES 
('2025-08-01', 'Traffic Hazard', 'Highway 1'),
('2025-08-02', 'Crash Urgent', 'Highway 2'),
('2025-08-02', 'Traffic Hazard', 'Highway 1'),
('2025-08-03', 'Crash Service', 'Highway 3'),
('2025-08-03', 'Traffic Hazard', 'Highway 2');
