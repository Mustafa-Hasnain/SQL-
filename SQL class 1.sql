Create Table tbl_mustafa
(
Id int,
Name Varchar(20),
email Varchar(30),
phone int
)


Select * from tbl_mustafa

Insert into tbl_mustafa values(1, 'Mustafa', 'mustafahasnain19@gmail.com', 92134)
Insert into tbl_mustafa values(2, 'Umair', 'umair@gmail.com', 92345)
Insert into tbl_mustafa values(3, 'Ashar', 'ashar12@gmail.com', 92234)
Insert into tbl_mustafa values(4, 'Ali', 'wasim2@gmail.com', 92468)


update tbl_mustafa set email = 'abc@gmail.com' where Id=1

delete tbl_mustafa where Id=4