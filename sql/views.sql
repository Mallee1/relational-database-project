CREATE VIEW TotalHoursWorked AS
SELECT 
    EMPLOYEE.EmployeeID,
    EMPLOYEE.ExperienceLevel,
    PROPERTY.PropertyID,
    PROPERTY.City,
    PROPERTY.State,
    PROPERTY.Zip,
    SUM(SERVICE_HOURS.HoursWorked) AS TotalHoursWorked
FROM 
    (SERVICE_HOURS 
    INNER JOIN EMPLOYEE ON SERVICE_HOURS.EmployeeID = EMPLOYEE.EmployeeID)
    INNER JOIN PROPERTY ON SERVICE_HOURS.PropertyID = PROPERTY.PropertyID
GROUP BY 
    EMPLOYEE.EmployeeID,
    EMPLOYEE.ExperienceLevel,
    PROPERTY.PropertyID,
    PROPERTY.City,
    PROPERTY.State,
    PROPERTY.Zip
ORDER BY 
    EMPLOYEE.EmployeeID,
    EMPLOYEE.ExperienceLevel,
    PROPERTY.State,
    PROPERTY.City,
    PROPERTY.Zip;
