insert into medicines (medicine_name, manufacturer, price) values (N'Тест дәрі A', N'Test', 100);
delete from medicines where medicine_name = N'Тест дәрі A' and manufacturer = N'Test';
insert into admins (full_name, email, password) values (N'Тест әкімші', 'testadmin@example.kz', 'demo123');
delete from admins where email = 'testadmin@example.kz';
insert into intake_schedule (prescription_medicine_id, intake_time, status) values (1, convert(datetime2(0), '2026-11-01T09:00:00', 126), 'pending');
delete from intake_schedule where prescription_medicine_id = 1 and intake_time = convert(datetime2(0), '2026-11-01T09:00:00', 126);
insert into pharmacy_inventory (pharmacy_id, medicine_id, quantity) values (1, 15, 3);
delete from pharmacy_inventory where pharmacy_id = 1 and medicine_id = 15;
go