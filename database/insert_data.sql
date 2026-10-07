USE PrescriptionMedicineDB;
GO

/* ==========================================
   3. INSERT - МӘЛІМЕТ ЕНГІЗУ
   ========================================== */


/* Пайдаланушылар */
INSERT INTO users
(full_name, email, password, role)
VALUES
(N'Айбек Сәрсенов', 'aibek@mail.kz', '12345', 'patient'),

(N'Айдана Нұрланова', 'aidana@mail.kz', '12345', 'doctor'),

(N'Мадина Асқарова', 'madina@mail.kz', '12345', 'pharmacist'),

(N'Арман Қасымов', 'arman@mail.kz', '12345', 'admin');


/* Пациент */
INSERT INTO patients
(patient_id, birth_date, phone)
VALUES
(1, '2000-05-15', '+77011111111');


/* Дәрігер */
INSERT INTO doctors
(doctor_id, specialization)
VALUES
(2, N'Терапевт');


/* Фармацевт */
INSERT INTO pharmacists
(pharmacist_id)
VALUES
(3);


/* Әкімші */
INSERT INTO admins
(admin_id)
VALUES
(4);


/* Дәрілер */
INSERT INTO medicines
(medicine_name, manufacturer, price)
VALUES
(N'Амоксициллин', N'Sandoz', 3500),

(N'Ибупрофен', N'Borisov', 1800),

(N'Парацетамол', N'Pharmstandard', 1200);


/* Дәріханалар */
INSERT INTO pharmacies
(pharmacy_name, address, phone)
VALUES
(N'Europharma', N'Алматы, Абая көшесі 50', '+77271111111'),

(N'Аптека №1', N'Алматы, Төле би көшесі 100', '+77272222222');


/* Рецепт */
INSERT INTO prescriptions
(patient_id, doctor_id, issue_date, status)
VALUES
(1, 2, '2026-10-07', 'active');


/* Рецепттегі дәрі */
INSERT INTO prescription_medicines
(prescription_id, medicine_id, dosage, frequency, duration_days)
VALUES
(1, 1, N'500 мг', N'Күніне 2 рет', 7);


/* Дәріханадағы қор */
INSERT INTO pharmacy_inventory
(pharmacy_id, medicine_id, quantity)
VALUES
(1, 1, 20),
(1, 2, 15),
(2, 1, 10),
(2, 3, 30);


/* Бронь */
INSERT INTO bookings
(patient_id, prescription_id, pharmacy_id, qr_code)
VALUES
(1, 1, 1, 'QR-000001');


/* Қабылдау кестесі */
INSERT INTO intake_schedule
(prescription_medicine_id, intake_time)
VALUES
(1, '2026-10-08 09:00:00'),
(1, '2026-10-08 21:00:00');

GO


/* ==========================================
   4. МӘЛІМЕТТЕРДІ КӨРУ
   ========================================== */

SELECT * FROM users;

SELECT * FROM patients;

SELECT * FROM doctors;

SELECT * FROM medicines;

SELECT * FROM pharmacies;

SELECT * FROM prescriptions;

SELECT * FROM prescription_medicines;

SELECT * FROM pharmacy_inventory;

SELECT * FROM bookings;

SELECT * FROM intake_schedule;