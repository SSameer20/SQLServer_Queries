USE [EmployeeDatabase]
GO
/****** Object:  StoredProcedure [dbo].[sp_addEmployee]    Script Date: 05-02-2024 23:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[sp_addEmployee]
(
	@name varchar(30),
	@address varchar(30),
	@email varchar(30),
	@phone bigint,
	@role varchar(10)
)
as
begin
	insert into emp (name, address, email, phone, role)
	values (@name,@address,@email,@phone,@role)

end