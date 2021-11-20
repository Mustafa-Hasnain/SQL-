CREATE DATABASE SCHOOL;
USE SCHOOL;


CREATE TABLE AFTS(
AFTS_id_pk int identity (1,1) primary key,
name varchar (50),
contact varchar (50)
);


CREATE TABLE AFTS_LOG(
id int,
name_log varchar (50),
contact_log varchar (50),
log_action varchar (50),
log_date DATETIME 
);


CREATE TRIGGER afterupdate_2 on	AFTS 
AFTER update
AS 
declare @id int;
declare @name varchar(50);
declare @contact varchar(50);
declare @log_action varchar(50);

select @id=i.AFTS_id_pk, @name=i.name, @contact=i.contact from inserted i;
select @log_action='AFTER UPDATED TRIGGER FIRED';

insert into AFTS_LOG(id,name_log,contact_log,log_action,log_date) values (@id,@name,@contact,@log_action,GETDATE());
PRINT 'AFTER UPDATED TRIGGER FIRED';

GO

INSERT INTO AFTS (name,contact) VALUES ('fabiha','03340036522');
INSERT INTO AFTS (name,contact) VALUES ('ghazwan','03650036522');
INSERT INTO AFTS (name,contact) VALUES ('simrah','03740036522');

select * from AFTS;
select * from AFTS_LOG;

UPDATE AFTS SET NAME='SARIM' where AFTS_id_pk=1;
