CREATE TABLE TIMELINE (
    TimeID INT PRIMARY KEY,
    Date DATE NOT NULL,
    MonthID INT NOT NULL,
    MonthText CHAR(15),
    QuarterID INT,
    QuarterText CHAR(10),
    Year CHAR(10)
);

CREATE TABLE PROPERTY (
    PropertyID INT PRIMARY KEY,
    PropertyName CHAR(50),
    City CHAR(35),
    State CHAR(2),
    Zip CHAR(10)
);

CREATE TABLE EMPLOYEE (
    EmployeeID INT PRIMARY KEY,
    LastName CHAR(25),
    FirstName CHAR(25),
    ExperienceLevel CHAR(15)
);

CREATE TABLE SERVICE_HOURS (
    TimeID INT,
    PropertyID INT,
    EmployeeID INT,
    HoursWorked NUMERIC(4,2),
    PRIMARY KEY (TimeID, PropertyID, EmployeeID),
    FOREIGN KEY (TimeID) REFERENCES TIMELINE(TimeID),
    FOREIGN KEY (PropertyID) REFERENCES PROPERTY(PropertyID),
    FOREIGN KEY (EmployeeID) REFERENCES EMPLOYEE(EmployeeID)
);
