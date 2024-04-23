
CREATE PROCEDURE AddPayroll
    @emp_id INT,
    @work_hour INT,
    @rate INT,
    @date DATE
AS
BEGIN
    INSERT INTO payroll (emp_id, work_hour, rate, [date])
    VALUES (@emp_id, @work_hour, @rate, @date);
END;


--exec AddPayroll 1,10,5,'2024-02-05'

--select * from payroll