/*declare @count int
set @count = 1
while (@count <=50)
begin
print @count
set @count = @count + 1
end*/

/*Hands on Exercise 2:
Write a Sql query to get the staff members working in a store and iterate through data using a for loop.

sales.stores
sales.staffs*/
select * from [sales].[staffs]
select * from [sales].[stores]