create table vacation
(
	id int IDENTITY(1,1) primary key,
	emp_id int,
	days int,
	FOREIGN KEY (emp_id) REFERENCES employee(id)
)

select * from employee
select * from vacation
select * from payroll

create proc addEmployee
(
	@name varchar(30),
	@address varchar(30),
	@email varchar(30),
	@phone bigint,
	@role varchar(10)
)
as
begin
	insert into employee (name,address,email,phone,role) 
	values (@name,@address,@email,@phone,@role)
end;
delete employee
where id = 1

exec addEmployee 'sameer','107-110-14','sam@gmail.com',9849270904,'manager'