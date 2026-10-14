use PrescriptionMedicineDB;
go
delete from intake_schedule
where schedule_id = 1;

delete from bookings
where booking_id = 2;

delete from pharmacy_inventory
where inventory_id = 2;

delete from intake_schedule
where schedule_id = 2;

select * from medicines;
select * from pharmacy_inventory;
select * from bookings;
select * from intake_schedule;