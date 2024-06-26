USE [EmployeeDatabase]
GO
/****** Object:  StoredProcedure [dbo].[UpdateVacationDays]    Script Date: 05-02-2024 23:38:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[UpdateVacationDays]
    @employeeID INT
AS
BEGIN
    UPDATE VacationDays
    SET numberOfDays = numberOfDays + 1
    WHERE employeeID = @employeeID;
END;
