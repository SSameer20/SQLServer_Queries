use EmployeeDB;

create table Employee
(
	id int identity(1000,1) primary key,
	first_name varchar(30) not null,
	second_name varchar(30),
	email varchar(50) not null,
	mobile varchar(10) not null,
	eid int not null,
	dob Date not null,
	gender char(5) not null,
	address_details varchar(50) not null
)

insert into Employee (first_name, second_name, email, mobile, eid, dob, gender, address_details)
values
('Emily', 'Davis', 'emily.d@example.com', '1112223333', 201, '1993-02-28', 'F', '987 Maple St'),
('Michael', 'Brown', 'michael.b@example.com', '7778889999', 202, '1980-12-05', 'M', '654 Birch St'),
('Sophia', 'Miller', 'sophia.m@example.com', '4445556666', 203, '1998-07-18', 'F', '321 Cedar St'),
('Daniel', 'Wilson', 'daniel.w@example.com', '3334445555', 204, '1992-09-14', 'M', '111 Oak St'),
('Olivia', 'Taylor', 'olivia.t@example.com', '6667778888', 205, '1987-11-30', 'F', '222 Elm St'),
('Matthew', 'Jones', 'matthew.j@example.com', '9990001111', 206, '1991-04-22', 'M', '333 Pine St'),
('Ella', 'Anderson', 'ella.a@example.com', '1230004567', 207, '1996-06-25', 'F', '444 Maple St'),
('William', 'Moore', 'william.m@example.com', '5556667777', 208, '1984-10-08', 'M', '555 Birch St'),
('Ava', 'Clark', 'ava.c@example.com', '8889990000', 209, '1994-03-17', 'F', '666 Cedar St'),
('James', 'Harris', 'james.h@example.com', '2223334444', 210, '1989-08-12', 'M', '777 Oak St');