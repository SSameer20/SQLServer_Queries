create proc sp_addUpdateData
(
	@Id			int = NULL,
	@firstName	varchar(300),
	@secondName	varchar(300),
	@email		varchar(300),
	@mobile		varchar(10),
	@eid		INT,
	@dob		date,
	@gender		char(10),
	@address	varchar(300)
)
as
Begin
		update Employee
		set 
		first_name = @firstName,
		second_name = @secondName,
		email = @email,
		mobile =@mobile,
		eid = @eid,
		dob =@dob,
		gender = @gender,
		address_details = @address
		where id = @Id
end

--exec sp_addUpdateData 1000,'sam','shaik','sam@gmail.com','7894561230',456,'2004-08-20', 'M', '777 Oak St'