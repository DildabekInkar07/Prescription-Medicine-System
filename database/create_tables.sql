/* ==========================================
   6-ЗЕРТХАНАЛЫҚ ЖҰМЫС
   Prescription Medicine System
   ========================================== */


/* 1. ДЕРЕКТЕР ҚОРЫН ҚҰРУ */

CREATE DATABASE PrescriptionMedicineDB;
GO

USE PrescriptionMedicineDB;
GO


/* ==========================================
   2. КЕСТЕЛЕРДІ ҚҰРУ
   ========================================== */


/* Пайдаланушылар */
CREATE TABLE users (
    user_id INT IDENTITY(1,1) PRIMARY KEY,
    full_name NVARCHAR(100) NOT NULL,
    email NVARCHAR(100) NOT NULL UNIQUE,
    password NVARCHAR(100) NOT NULL,
    role NVARCHAR(20) NOT NULL,

    CONSTRAINT CHK_users_role
    CHECK (role IN ('patient', 'doctor', 'pharmacist', 'admin'))
);


/* Пациенттер */
CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    birth_date DATE,
    phone NVARCHAR(20),

    CONSTRAINT FK_patients_users
    FOREIGN KEY (patient_id)
    REFERENCES users(user_id)
);


/* Дәрігерлер */
CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY,
    specialization NVARCHAR(100) NOT NULL,

    CONSTRAINT FK_doctors_users
    FOREIGN KEY (doctor_id)
    REFERENCES users(user_id)
);


/* Фармацевттер */
CREATE TABLE pharmacists (
    pharmacist_id INT PRIMARY KEY,

    CONSTRAINT FK_pharmacists_users
    FOREIGN KEY (pharmacist_id)
    REFERENCES users(user_id)
);


/* Әкімшілер */
CREATE TABLE admins (
    admin_id INT PRIMARY KEY,

    CONSTRAINT FK_admins_users
    FOREIGN KEY (admin_id)
    REFERENCES users(user_id)
);


/* Дәрілер */
CREATE TABLE medicines (
    medicine_id INT IDENTITY(1,1) PRIMARY KEY,
    medicine_name NVARCHAR(100) NOT NULL,
    manufacturer NVARCHAR(100),
    price DECIMAL(10,2) NOT NULL,

    CONSTRAINT CHK_medicine_price
    CHECK (price >= 0)
);


/* Дәріханалар */
CREATE TABLE pharmacies (
    pharmacy_id INT IDENTITY(1,1) PRIMARY KEY,
    pharmacy_name NVARCHAR(100) NOT NULL,
    address NVARCHAR(200) NOT NULL,
    phone NVARCHAR(20)
);


/* Рецепттер */
CREATE TABLE prescriptions (
    prescription_id INT IDENTITY(1,1) PRIMARY KEY,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    issue_date DATE NOT NULL,
    status NVARCHAR(20) NOT NULL DEFAULT 'active',

    CONSTRAINT FK_prescription_patient
    FOREIGN KEY (patient_id)
    REFERENCES patients(patient_id),

    CONSTRAINT FK_prescription_doctor
    FOREIGN KEY (doctor_id)
    REFERENCES doctors(doctor_id),

    CONSTRAINT CHK_prescription_status
    CHECK (status IN ('active', 'completed', 'expired'))
);


/* Рецепттегі дәрілер */
CREATE TABLE prescription_medicines (
    prescription_medicine_id INT IDENTITY(1,1) PRIMARY KEY,
    prescription_id INT NOT NULL,
    medicine_id INT NOT NULL,
    dosage NVARCHAR(100) NOT NULL,
    frequency NVARCHAR(100) NOT NULL,
    duration_days INT NOT NULL,

    CONSTRAINT FK_PM_prescription
    FOREIGN KEY (prescription_id)
    REFERENCES prescriptions(prescription_id),

    CONSTRAINT FK_PM_medicine
    FOREIGN KEY (medicine_id)
    REFERENCES medicines(medicine_id),

    CONSTRAINT CHK_duration
    CHECK (duration_days > 0)
);


/* Дәріханадағы дәрі қоры */
CREATE TABLE pharmacy_inventory (
    inventory_id INT IDENTITY(1,1) PRIMARY KEY,
    pharmacy_id INT NOT NULL,
    medicine_id INT NOT NULL,
    quantity INT NOT NULL DEFAULT 0,

    CONSTRAINT FK_inventory_pharmacy
    FOREIGN KEY (pharmacy_id)
    REFERENCES pharmacies(pharmacy_id),

    CONSTRAINT FK_inventory_medicine
    FOREIGN KEY (medicine_id)
    REFERENCES medicines(medicine_id),

    CONSTRAINT CHK_inventory_quantity
    CHECK (quantity >= 0),

    CONSTRAINT UQ_pharmacy_medicine
    UNIQUE (pharmacy_id, medicine_id)
);


/* Бронь */
CREATE TABLE bookings (
    booking_id INT IDENTITY(1,1) PRIMARY KEY,
    patient_id INT NOT NULL,
    prescription_id INT NOT NULL,
    pharmacy_id INT NOT NULL,
    booking_date DATETIME NOT NULL DEFAULT GETDATE(),
    qr_code NVARCHAR(100) NOT NULL UNIQUE,
    status NVARCHAR(20) NOT NULL DEFAULT 'reserved',

    CONSTRAINT FK_booking_patient
    FOREIGN KEY (patient_id)
    REFERENCES patients(patient_id),

    CONSTRAINT FK_booking_prescription
    FOREIGN KEY (prescription_id)
    REFERENCES prescriptions(prescription_id),

    CONSTRAINT FK_booking_pharmacy
    FOREIGN KEY (pharmacy_id)
    REFERENCES pharmacies(pharmacy_id),

    CONSTRAINT CHK_booking_status
    CHECK (status IN ('reserved', 'received', 'cancelled'))
);


/* Дәріні қабылдау кестесі */
CREATE TABLE intake_schedule (
    schedule_id INT IDENTITY(1,1) PRIMARY KEY,
    prescription_medicine_id INT NOT NULL,
    intake_time DATETIME NOT NULL,
    status NVARCHAR(20) NOT NULL DEFAULT 'pending',

    CONSTRAINT FK_schedule_PM
    FOREIGN KEY (prescription_medicine_id)
    REFERENCES prescription_medicines(prescription_medicine_id),

    CONSTRAINT CHK_schedule_status
    CHECK (status IN ('pending', 'taken', 'missed'))
);

GO