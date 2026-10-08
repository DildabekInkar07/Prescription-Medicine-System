use PrescriptionMedicineDB;
go
insert into medicines (medicine_name,manufacturer,price) values
(N'Тест дәрі',N'Test Company',500);
delete from medicines where medicine_name=N'Тест дәрі';
select * from medicines;
drop table student;
