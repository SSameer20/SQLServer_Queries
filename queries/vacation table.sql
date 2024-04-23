
CREATE TABLE VacationDays (
    ID INT PRIMARY KEY IDENTITY(1,1),
    employeeID INT,
    numberOfDays INT DEFAULT 14
);

