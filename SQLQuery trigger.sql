Create database YHO;

use YHO;

create table customers(
id_pk int identity (1,1) primary key,
name varchar(50),
email varchar(50),
contact varchar(50)
);
 


create table cus_history(
id int,
name_log varchar(50),
email_log varchar (50),
contatct_log varchar (50),
log_action varchar (50),
log_date datetime
);

select * from customers;
select * from cus_history;

create trigger cusinsert on 
customers
for insert 
as
declare @id int;
declare @name_log varchar (50);
declare @contact_log varchar (50);
declare @email_log varchar (50);
declare @log_action varchar (50);
declare @log_date datetime;


select @id=id_pk from inserted;
select @name_log=name from inserted;
select @contact_log=contact from inserted;
select @email_log=email from inserted;

begin 
insert into cus_history(id,name_log,contatct_log,email_log,log_action,log_date) values (@id,@name_log,@contact_log,@email_log,@log_action,getdate());
end
go


insert into customers(name,contact,email) values ('fabiha','03452440206','fabiha@hotmail.com ');
insert into customers(name,contact,email) values ('daniyal','03452880206','daniyal@hotmail.com ');
insert into customers(name,contact,email) values ('ghazwan','03128440206','ghazwan@hotmail.com ');
insert into customers(name,contact,email) values ('osama','0355640206','osama@hotmail.com');


select * from customers;
select * from cus_history;


