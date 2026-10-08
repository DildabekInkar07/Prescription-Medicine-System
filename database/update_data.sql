use PrescriptionMedicineDB;
go
update medicines set price=3700 where medicine_id=1;
update pharmacy_inventory set quantity=19 where pharmacy_id=1 and medicine_id=1;
update bookings set status='received' where booking_id=1;
update intake_schedule set status='taken' where schedule_id=1;
select * from medicines;
select * from pharmacy_inventory;
select * from bookings;
select * from intake_schedule;