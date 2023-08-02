USE master
DROP DATABASE ASM_PRJ301_SP23
CREATE DATABASE ASM_PRJ301_SP23

USE [ASM_PRJ301_SP23]

create table [User](
	account nvarchar(255) NOT NULL primary key, 
	password nvarchar(255), 
	fistName nvarchar(255), 
	lastName nvarchar(255), 
	gender char, 
	phone char(12),
	mail nvarchar(50),
	address nvarchar(255), 
	dob date
)

create table [DailyNote](
	account nvarchar(255) NOT NULL references [User](account),
	[date] date  NOT NULL,
	weather nvarchar(255),
	energy nvarchar(255),
	feeling nvarchar(255),
	highlight nvarchar(max),
	memorise nvarchar(max),
	achiverment nvarchar(max),
	problem nvarchar(max),
	gratefull nvarchar(max),
	nextDay nvarchar(max),
	primary key (account, [date])
)

insert into [User](account, password, fistName, lastName, gender, phone, mail, address, dob)
values 
('quan', '123', 'quan', 'nguyen', 'm', '0654789123', 'quan123@gmail.com', 'Tien Lang- Hai Phong', '2002-06-23'),
('admin', '123', 'ad','min', 'f', '0123456789', 'admin456@gmail.com', 'Thach That- Ha Noi','2000-10-23')



