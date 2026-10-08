use PrescriptionMedicineDB;
go
insert into users (full_name,email,password,role) values
(N'Айбек Сәрсенов','aibek@mail.kz','12345','patient'),
(N'Айдана Нұрланова','aidana@mail.kz','12345','doctor'),
(N'Мадина Асқарова','madina@mail.kz','12345','pharmacist'),
(N'Арман Қасымов','arman@mail.kz','12345','admin'),
(N'Данияр Ахметов','daniyar@mail.kz','12345','patient'),
(N'Аружан Серікқызы','aruzhan@mail.kz','12345','patient'),
(N'Нұрсұлтан Әлиев','nursultan@mail.kz','12345','patient'),
(N'Алина Төлегенова','alina@mail.kz','12345','patient'),
(N'Ержан Беков','erzhan@mail.kz','12345','patient'),
(N'Диана Омарова','diana@mail.kz','12345','patient'),
(N'Мирас Жұмабеков','miras@mail.kz','12345','doctor'),
(N'Жанар Әбілова','zhanar@mail.kz','12345','doctor'),
(N'Руслан Сапаров','ruslan@mail.kz','12345','doctor'),
(N'Назерке Қайратова','nazerke@mail.kz','12345','pharmacist'),
(N'Самат Ибраев','samat@mail.kz','12345','admin');
insert into patients (patient_id,birth_date,phone) values
(1,'2000-05-15','+77011111111'),
(5,'2001-03-12','+77011111112'),
(6,'1999-07-21','+77011111113'),
(7,'2002-11-05','+77011111114'),
(8,'2000-01-18','+77011111115'),
(9,'1998-09-25','+77011111116'),
(10,'2003-06-14','+77011111117');
insert into doctors (doctor_id,specialization) values
(2,N'Терапевт'),
(11,N'Кардиолог'),
(12,N'Невролог'),
(13,N'Педиатр');
insert into pharmacists (pharmacist_id) values
(3),
(14);
insert into admins (admin_id) values
(4),
(15);
insert into medicines (medicine_name,manufacturer,price) values
(N'Амоксициллин',N'Sandoz',3500),
(N'Ибупрофен',N'Borisov',1800),
(N'Парацетамол',N'Pharmstandard',1200),
(N'Азитромицин',N'Sandoz',4200),
(N'Нурофен',N'Reckitt',2500),
(N'Аспирин',N'Bayer',1600),
(N'Цитрамон',N'Pharmstandard',900),
(N'Лоратадин',N'Teva',1300),
(N'Омепразол',N'Sandoz',2100),
(N'Но-шпа',N'Chinoin',2400),
(N'Активтелген көмір',N'Medical',700),
(N'Анальгин',N'Borisov',850),
(N'Супрастин',N'Egis',2200),
(N'Витамин C',N'Pharma',1100),
(N'Амброксол',N'Vertex',1900);
insert into pharmacies (pharmacy_name,address,phone) values
(N'Europharma',N'Алматы, Абая көшесі 50','+77271111111'),
(N'Аптека №1',N'Алматы, Төле би көшесі 100','+77272222222'),
(N'Аптека 24',N'Алматы, Сәтбаев көшесі 20','+77273330001'),
(N'Садыхан',N'Алматы, Жандосов көшесі 40','+77273330002'),
(N'Биосфера',N'Алматы, Абай даңғылы 100','+77273330003'),
(N'Зерде',N'Алматы, Райымбек даңғылы 150','+77273330004'),
(N'Аптека Plus',N'Алматы, Назарбаев даңғылы 70','+77273330005'),
(N'Медсервис',N'Алматы, Достық даңғылы 120','+77273330006'),
(N'Фармаком',N'Алматы, Тимирязев көшесі 80','+77273330007'),
(N'Аптека Life',N'Алматы, Гагарин даңғылы 90','+77273330008'),
(N'Ақниет',N'Алматы, Қабанбай батыр көшесі 60','+77273330009'),
(N'Шипа',N'Алматы, Наурызбай батыр көшесі 45','+77273330010'),
(N'Денсаулық',N'Алматы, Сейфуллин даңғылы 200','+77273330011'),
(N'Медлайн',N'Алматы, Байтұрсынұлы көшесі 110','+77273330012'),
(N'Алтын Фарм',N'Алматы, Розыбакиев көшесі 150','+77273330013');
insert into prescriptions (patient_id,doctor_id,issue_date,status) values
(1,2,'2026-10-07','active'),
(5,11,'2026-09-20','completed'),
(6,12,'2026-09-22','active'),
(7,13,'2026-09-25','active'),
(8,2,'2026-09-27','expired'),
(9,11,'2026-09-30','active'),
(10,12,'2026-10-01','completed'),
(1,13,'2026-10-02','active'),
(5,2,'2026-10-03','active'),
(6,11,'2026-10-04','completed'),
(7,12,'2026-10-05','active'),
(8,13,'2026-10-06','active'),
(9,2,'2026-10-07','active'),
(10,11,'2026-10-08','active'),
(5,12,'2026-10-08','active');
insert into prescription_medicines (prescription_id,medicine_id,dosage,frequency,duration_days) values
(1,1,N'500 мг',N'Күніне 2 рет',7),
(2,2,N'200 мг',N'Күніне 2 рет',5),
(3,3,N'500 мг',N'Күніне 1 рет',7),
(4,4,N'250 мг',N'Күніне 2 рет',3),
(5,5,N'200 мг',N'Күніне 3 рет',5),
(6,6,N'100 мг',N'Күніне 1 рет',10),
(7,7,N'20 мг',N'Күніне 1 рет',14),
(8,8,N'40 мг',N'Күніне 2 рет',7),
(9,9,N'1 таблетка',N'Күніне 2 рет',5),
(10,10,N'1 таблетка',N'Күніне 1 рет',3),
(11,11,N'50 мг',N'Күніне 2 рет',7),
(12,12,N'100 мг',N'Күніне 1 рет',10),
(13,13,N'500 мг',N'Күніне 2 рет',5),
(14,14,N'1 таблетка',N'Күніне 1 рет',7),
(15,15,N'500 мг',N'Күніне 2 рет',10);
insert into pharmacy_inventory (pharmacy_id,medicine_id,quantity) values
(1,1,20),
(1,2,15),
(2,1,10),
(2,3,30),
(1,3,25),
(1,4,18),
(2,2,22),
(2,4,12),
(3,1,30),
(3,5,20),
(4,2,16),
(4,6,35),
(5,3,14),
(5,7,27),
(6,4,19),
(6,8,23),
(7,5,31),
(8,9,17),
(9,10,28);
insert into bookings (patient_id,prescription_id,pharmacy_id,qr_code) values
(1,1,1,'QR-000001'),
(5,2,2,'QR-000002'),
(6,3,3,'QR-000003'),
(7,4,4,'QR-000004'),
(8,5,5,'QR-000005'),
(9,6,6,'QR-000006'),
(10,7,7,'QR-000007'),
(1,8,8,'QR-000008'),
(5,9,9,'QR-000009'),
(6,10,10,'QR-000010'),
(7,11,11,'QR-000011'),
(8,12,12,'QR-000012'),
(9,13,13,'QR-000013'),
(10,14,14,'QR-000014'),
(5,15,15,'QR-000015');
insert into intake_schedule (prescription_medicine_id,intake_time,status) values
(1,'2026-10-08 09:00:00','pending'),
(1,'2026-10-08 21:00:00','pending'),
(2,'2026-10-08 08:00:00','taken'),
(3,'2026-10-08 09:00:00','taken'),
(4,'2026-10-08 10:00:00','pending'),
(5,'2026-10-08 11:00:00','pending'),
(6,'2026-10-08 12:00:00','missed'),
(7,'2026-10-08 13:00:00','pending'),
(8,'2026-10-08 14:00:00','taken'),
(9,'2026-10-08 15:00:00','pending'),
(10,'2026-10-08 16:00:00','pending'),
(11,'2026-10-08 17:00:00','taken'),
(12,'2026-10-08 18:00:00','pending'),
(13,'2026-10-08 19:00:00','missed'),
(14,'2026-10-08 20:00:00','pending');
go
select * from users;
select * from patients;
select * from doctors;
select * from pharmacists;
select * from admins;
select * from medicines;
select * from pharmacies;
select * from prescriptions;
select * from prescription_medicines;
select * from pharmacy_inventory;
select * from bookings;
select * from intake_schedule;