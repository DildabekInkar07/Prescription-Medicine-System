use PrescriptionMedicineDB;
go
insert into users (full_name,email,password,role) values
(N'Айбек Сәрсенов','aibek@mail.kz','12345','patient'),
(N'Айдана Нұрланова','aidana@mail.kz','12345','doctor'),
(N'Мадина Асқарова','madina@mail.kz','12345','pharmacist'),
(N'Арман Қасымов','arman@mail.kz','12345','admin');
insert into patients (patient_id,birth_date,phone) values
(1,'2000-05-15','+77011111111');
insert into doctors (doctor_id,specialization) values
(2,N'Терапевт');
insert into pharmacists (pharmacist_id) values
(3);
insert into admins (admin_id) values
(4);
insert into medicines (medicine_name,manufacturer,price) values
(N'Амоксициллин',N'Sandoz',3500),
(N'Ибупрофен',N'Borisov',1800),
(N'Парацетамол',N'Pharmstandard',1200);
insert into pharmacies (pharmacy_name,address,phone) values
(N'Europharma',N'Алматы, Абая көшесі 50','+77271111111'),
(N'Аптека №1',N'Алматы, Төле би көшесі 100','+77272222222');
insert into prescriptions (patient_id,doctor_id,issue_date,status) values
(1,2,'2026-10-07','active');
insert into prescription_medicines (prescription_id,medicine_id,dosage,frequency,duration_days) values
(1,1,N'500 мг',N'Күніне 2 рет',7);
insert into pharmacy_inventory (pharmacy_id,medicine_id,quantity) values
(1,1,20),
(1,2,15),
(2,1,10),
(2,3,30);
insert into bookings (patient_id,prescription_id,pharmacy_id,qr_code) values
(1,1,1,'QR-000001');
insert into intake_schedule (prescription_medicine_id,intake_time) values
(1,'2026-10-08 09:00:00'),
(1,'2026-10-08 21:00:00');
go
select * from users;
select * from patients;
select * from doctors;
select * from medicines;
select * from pharmacies;
select * from prescriptions;
select * from prescription_medicines;
select * from pharmacy_inventory;
select * from bookings;
select * from intake_schedule;