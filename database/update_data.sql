use PrescriptionMedicineDB;
go
update medicines
set price = 2500
where medicine_id = 1;

update medicines
set medicine_name = N'Парацетамол'
where medicine_id = 2;

update pharmacy_inventory
set quantity = 50
where inventory_id = 1;

update bookings
set status = 'received'
where booking_id = 1;
