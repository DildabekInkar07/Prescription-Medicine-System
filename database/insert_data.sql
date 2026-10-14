insert into patients (full_name, email, password, birth_date, phone)
values
    (N'Айбек Сәрсенов', 'patient1@example.kz', 'demo123', '1999-02-02', '+77010000001'),
    (N'Данияр Ахметов', 'patient2@example.kz', 'demo123', '2000-03-03', '+77010000002'),
    (N'Аружан Серікқызы', 'patient3@example.kz', 'demo123', '2001-04-04', '+77010000003'),
    (N'Нұрсұлтан Әлиев', 'patient4@example.kz', 'demo123', '2002-05-05', '+77010000004'),
    (N'Алина Төлегенова', 'patient5@example.kz', 'demo123', '2003-06-06', '+77010000005'),
    (N'Ержан Беков', 'patient6@example.kz', 'demo123', '2004-07-07', '+77010000006'),
    (N'Диана Омарова', 'patient7@example.kz', 'demo123', '2005-08-08', '+77010000007'),
    (N'Әсел Мұратқызы', 'patient8@example.kz', 'demo123', '1998-09-09', '+77010000008'),
    (N'Мақсат Ермеков', 'patient9@example.kz', 'demo123', '1999-10-10', '+77010000009'),
    (N'Айым Қасымова', 'patient10@example.kz', 'demo123', '2000-11-11', '+77010000010'),
    (N'Бекзат Оразов', 'patient11@example.kz', 'demo123', '2001-12-12', '+77010000011'),
    (N'Гүлнар Жақыпова', 'patient12@example.kz', 'demo123', '2002-01-13', '+77010000012'),
    (N'Меруерт Тасболат', 'patient13@example.kz', 'demo123', '2003-02-14', '+77010000013'),
    (N'Әлихан Нұрбек', 'patient14@example.kz', 'demo123', '2004-03-15', '+77010000014'),
    (N'Жанель Сағындық', 'patient15@example.kz', 'demo123', '2005-04-16', '+77010000015');


insert into doctors (full_name, email, password, specialization)
values
    (N'Айдана Нұрланова', 'doctor1@example.kz', 'demo123', N'Терапевт'),
    (N'Мирас Жұмабеков', 'doctor2@example.kz', 'demo123', N'Кардиолог'),
    (N'Жанар Әбілова', 'doctor3@example.kz', 'demo123', N'Невролог'),
    (N'Руслан Сапаров', 'doctor4@example.kz', 'demo123', N'Педиатр'),
    (N'Мөлдір Қуаныш', 'doctor5@example.kz', 'demo123', N'Аллерголог'),
    (N'Ербол Нұртаев', 'doctor6@example.kz', 'demo123', N'Эндокринолог'),
    (N'Салтанат Жүнісова', 'doctor7@example.kz', 'demo123', N'Терапевт'),
    (N'Ардақ Төлеген', 'doctor8@example.kz', 'demo123', N'Кардиолог'),
    (N'Нұрлан Оспанов', 'doctor9@example.kz', 'demo123', N'Педиатр'),
    (N'Әлия Есенова', 'doctor10@example.kz', 'demo123', N'Невролог'),
    (N'Сәуле Берікқызы', 'doctor11@example.kz', 'demo123', N'Терапевт'),
    (N'Ермек Тұрсын', 'doctor12@example.kz', 'demo123', N'Аллерголог'),
    (N'Гүлмира Қали', 'doctor13@example.kz', 'demo123', N'Кардиолог'),
    (N'Асылбек Сейіт', 'doctor14@example.kz', 'demo123', N'Эндокринолог'),
    (N'Раушан Болат', 'doctor15@example.kz', 'demo123', N'Педиатр');


insert into pharmacies (pharmacy_name, address, phone)
values
    (N'Europharma', N'Алматы, Абай даңғылы 50', '+77273000001'),
    (N'Аптека №1', N'Алматы, Төле би көшесі 100', '+77273000002'),
    (N'Аптека 24', N'Алматы, Сәтбаев көшесі 20', '+77273000003'),
    (N'Садыхан', N'Алматы, Жандосов көшесі 40', '+77273000004'),
    (N'Биосфера', N'Алматы, Абай даңғылы 100', '+77273000005'),
    (N'Зерде', N'Алматы, Райымбек даңғылы 150', '+77273000006'),
    (N'Аптека Plus', N'Алматы, Назарбаев даңғылы 70', '+77273000007'),
    (N'Медсервис', N'Алматы, Достық даңғылы 120', '+77273000008'),
    (N'Фармаком', N'Алматы, Тимирязев көшесі 80', '+77273000009'),
    (N'Аптека Life', N'Алматы, Гагарин даңғылы 90', '+77273000010'),
    (N'Ақниет', N'Алматы, Қабанбай батыр көшесі 60', '+77273000011'),
    (N'Шипа', N'Алматы, Наурызбай батыр көшесі 45', '+77273000012'),
    (N'Денсаулық', N'Алматы, Сейфуллин даңғылы 200', '+77273000013'),
    (N'Медлайн', N'Алматы, Байтұрсынұлы көшесі 110', '+77273000014'),
    (N'Алтын Фарм', N'Алматы, Розыбакиев көшесі 150', '+77273000015');


insert into pharmacists (full_name, email, password, pharmacy_id)
values
    (N'Мадина Асқарова', 'pharmacist1@example.kz', 'demo123', 1),
    (N'Назерке Қайратова', 'pharmacist2@example.kz', 'demo123', 2),
    (N'Әсем Жұмабаева', 'pharmacist3@example.kz', 'demo123', 3),
    (N'Әділ Серік', 'pharmacist4@example.kz', 'demo123', 4),
    (N'Айша Маратқызы', 'pharmacist5@example.kz', 'demo123', 5),
    (N'Анар Еркін', 'pharmacist6@example.kz', 'demo123', 6),
    (N'Дәурен Әлім', 'pharmacist7@example.kz', 'demo123', 7),
    (N'Ботагөз Нұржан', 'pharmacist8@example.kz', 'demo123', 8),
    (N'Арман Әбді', 'pharmacist9@example.kz', 'demo123', 9),
    (N'Сәния Омар', 'pharmacist10@example.kz', 'demo123', 10),
    (N'Бауыржан Сапар', 'pharmacist11@example.kz', 'demo123', 11),
    (N'Айнұр Жақсылық', 'pharmacist12@example.kz', 'demo123', 12),
    (N'Әмина Берік', 'pharmacist13@example.kz', 'demo123', 13),
    (N'Нұржан Дулат', 'pharmacist14@example.kz', 'demo123', 14),
    (N'Қарлығаш Мұрат', 'pharmacist15@example.kz', 'demo123', 15);


insert into admins (full_name, email, password)
values
    (N'Арман Қасымов', 'admin1@example.kz', 'demo123'),
    (N'Самат Ибраев', 'admin2@example.kz', 'demo123'),
    (N'Мақпал Әлиева', 'admin3@example.kz', 'demo123'),
    (N'Жанболат Тілеу', 'admin4@example.kz', 'demo123'),
    (N'Назгүл Қайрат', 'admin5@example.kz', 'demo123'),
    (N'Алмас Бекен', 'admin6@example.kz', 'demo123'),
    (N'Гүлсім Сәдуақас', 'admin7@example.kz', 'demo123'),
    (N'Тимур Бақыт', 'admin8@example.kz', 'demo123'),
    (N'Ақбота Нұрлан', 'admin9@example.kz', 'demo123'),
    (N'Ринат Еркін', 'admin10@example.kz', 'demo123'),
    (N'Мөлдір Асқар', 'admin11@example.kz', 'demo123'),
    (N'Серік Сәбит', 'admin12@example.kz', 'demo123'),
    (N'Жанар Болат', 'admin13@example.kz', 'demo123'),
    (N'Еркебұлан Мұрат', 'admin14@example.kz', 'demo123'),
    (N'Ажар Есен', 'admin15@example.kz', 'demo123');


insert into medicines (medicine_name, manufacturer, price)
values
    (N'Амоксициллин', N'Sandoz', 3500),
    (N'Ибупрофен', N'Borisov', 1800),
    (N'Парацетамол', N'Pharmstandard', 1200),
    (N'Азитромицин', N'Sandoz', 4200),
    (N'Нурофен', N'Reckitt', 2500),
    (N'Аспирин', N'Bayer', 1600),
    (N'Цитрамон', N'Pharmstandard', 900),
    (N'Лоратадин', N'Teva', 1300),
    (N'Омепразол', N'Sandoz', 2100),
    (N'Но-шпа', N'Chinoin', 2400),
    (N'Белсендірілген көмір', N'Medical', 700),
    (N'Анальгин', N'Borisov', 850),
    (N'Супрастин', N'Egis', 2200),
    (N'Витамин C', N'Pharma', 1100),
    (N'Амброксол', N'Vertex', 1900);


insert into prescriptions (patient_id, doctor_id, issue_date, status)
values
    (1, 1, '20261001', 'active'),
    (2, 2, '20261002', 'active'),
    (3, 3, '20261003', 'active'),
    (4, 4, '20261004', 'completed'),
    (5, 5, '20261005', 'active'),
    (6, 6, '20261006', 'active'),
    (7, 7, '20261007', 'active'),
    (8, 8, '20261008', 'completed'),
    (9, 9, '20261009', 'active'),
    (10, 10, '20261010', 'active'),
    (11, 11, '20261011', 'active'),
    (12, 12, '20261012', 'completed'),
    (13, 13, '20261013', 'active'),
    (14, 14, '20261014', 'active'),
    (15, 15, '20261015', 'active');

insert into prescription_medicines (prescription_id, medicine_id, dosage, frequency, duration_days)
values
    (1, 1, N'Дәрігер нұсқауы бойынша', N'Рецептке сәйкес', 7),
    (2, 2, N'Дәрігер нұсқауы бойынша', N'Рецептке сәйкес', 7),
    (3, 3, N'Дәрігер нұсқауы бойынша', N'Рецептке сәйкес', 7),
    (4, 4, N'Дәрігер нұсқауы бойынша', N'Рецептке сәйкес', 7),
    (5, 5, N'Дәрігер нұсқауы бойынша', N'Рецептке сәйкес', 7),
    (6, 6, N'Дәрігер нұсқауы бойынша', N'Рецептке сәйкес', 7),
    (7, 7, N'Дәрігер нұсқауы бойынша', N'Рецептке сәйкес', 7),
    (8, 8, N'Дәрігер нұсқауы бойынша', N'Рецептке сәйкес', 7),
    (9, 9, N'Дәрігер нұсқауы бойынша', N'Рецептке сәйкес', 7),
    (10, 10, N'Дәрігер нұсқауы бойынша', N'Рецептке сәйкес', 7),
    (11, 11, N'Дәрігер нұсқауы бойынша', N'Рецептке сәйкес', 7),
    (12, 12, N'Дәрігер нұсқауы бойынша', N'Рецептке сәйкес', 7),
    (13, 13, N'Дәрігер нұсқауы бойынша', N'Рецептке сәйкес', 7),
    (14, 14, N'Дәрігер нұсқауы бойынша', N'Рецептке сәйкес', 7),
    (15, 15, N'Дәрігер нұсқауы бойынша', N'Рецептке сәйкес', 7);

insert into pharmacy_inventory (pharmacy_id, medicine_id, quantity)
values
    (1, 1, 21),
    (2, 2, 22),
    (3, 3, 23),
    (4, 4, 24),
    (5, 5, 25),
    (6, 6, 26),
    (7, 7, 27),
    (8, 8, 28),
    (9, 9, 29),
    (10, 10, 30),
    (11, 11, 31),
    (12, 12, 32),
    (13, 13, 33),
    (14, 14, 34),
    (15, 15, 35),
    (1, 2, 11),
    (2, 3, 12),
    (3, 4, 13),
    (4, 5, 14),
    (5, 6, 15),
    (6, 7, 16),
    (7, 8, 17),
    (8, 9, 18),
    (9, 10, 19),
    (10, 11, 20),
    (11, 12, 21),
    (12, 13, 22),
    (13, 14, 23),
    (14, 15, 24),
    (15, 1, 25);

insert into bookings (patient_id, prescription_id, pharmacy_id, pharmacist_id, booking_date, qr_code, status)
values
    (1, 1, 1, 1, convert(datetime2(0), '2026-10-01T10:00:00', 126), 'QR-000001', 'received'),
    (2, 2, 2, 2, convert(datetime2(0), '2026-10-02T10:00:00', 126), 'QR-000002', 'reserved'),
    (3, 3, 3, 3, convert(datetime2(0), '2026-10-03T10:00:00', 126), 'QR-000003', 'reserved'),
    (4, 4, 4, 4, convert(datetime2(0), '2026-10-04T10:00:00', 126), 'QR-000004', 'reserved'),
    (5, 5, 5, 5, convert(datetime2(0), '2026-10-05T10:00:00', 126), 'QR-000005', 'reserved'),
    (6, 6, 6, 6, convert(datetime2(0), '2026-10-06T10:00:00', 126), 'QR-000006', 'reserved'),
    (7, 7, 7, 7, convert(datetime2(0), '2026-10-07T10:00:00', 126), 'QR-000007', 'reserved'),
    (8, 8, 8, 8, convert(datetime2(0), '2026-10-08T10:00:00', 126), 'QR-000008', 'reserved'),
    (9, 9, 9, 9, convert(datetime2(0), '2026-10-09T10:00:00', 126), 'QR-000009', 'reserved'),
    (10, 10, 10, 10, convert(datetime2(0), '2026-10-10T10:00:00', 126), 'QR-000010', 'reserved'),
    (11, 11, 11, 11, convert(datetime2(0), '2026-10-11T10:00:00', 126), 'QR-000011', 'reserved'),
    (12, 12, 12, 12, convert(datetime2(0), '2026-10-12T10:00:00', 126), 'QR-000012', 'reserved'),
    (13, 13, 13, 13, convert(datetime2(0), '2026-10-13T10:00:00', 126), 'QR-000013', 'reserved'),
    (14, 14, 14, 14, convert(datetime2(0), '2026-10-14T10:00:00', 126), 'QR-000014', 'reserved'),
    (15, 15, 15, 15, convert(datetime2(0), '2026-10-15T10:00:00', 126), 'QR-000015', 'reserved');

-- intake_schedule: 15 жазба
insert into intake_schedule (prescription_medicine_id, intake_time, status)
values
    (1, convert(datetime2(0), '2026-10-01T09:00:00', 126), 'taken'),
    (2, convert(datetime2(0), '2026-10-02T09:00:00', 126), 'pending'),
    (3, convert(datetime2(0), '2026-10-03T09:00:00', 126), 'pending'),
    (4, convert(datetime2(0), '2026-10-04T09:00:00', 126), 'pending'),
    (5, convert(datetime2(0), '2026-10-05T09:00:00', 126), 'pending'),
    (6, convert(datetime2(0), '2026-10-06T09:00:00', 126), 'pending'),
    (7, convert(datetime2(0), '2026-10-07T09:00:00', 126), 'pending'),
    (8, convert(datetime2(0), '2026-10-08T09:00:00', 126), 'pending'),
    (9, convert(datetime2(0), '2026-10-09T09:00:00', 126), 'pending'),
    (10, convert(datetime2(0), '2026-10-10T09:00:00', 126), 'pending'),
    (11, convert(datetime2(0), '2026-10-11T09:00:00', 126), 'pending'),
    (12, convert(datetime2(0), '2026-10-12T09:00:00', 126), 'pending'),
    (13, convert(datetime2(0), '2026-10-13T09:00:00', 126), 'pending'),
    (14, convert(datetime2(0), '2026-10-14T09:00:00', 126), 'pending'),
    (15, convert(datetime2(0), '2026-10-15T09:00:00', 126), 'pending');

go