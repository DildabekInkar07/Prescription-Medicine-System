create database PrescriptionMedicineDB_2;
go
use PrescriptionMedicineDB_2;
go
create table patients (
    patient_id int primary key,
    full_name nvarchar(100) not null,
    email nvarchar(100) not null unique,
    password nvarchar(255) not null,
    birth_date date,
    phone nvarchar(20)
);
create table doctors (
    doctor_id int primary key,
    full_name nvarchar(100) not null,
    email nvarchar(100) not null unique,
    password nvarchar(255) not null,
    specialization nvarchar(100) not null
);
create table pharmacies (
    pharmacy_id int primary key,
    pharmacy_name nvarchar(100) not null,
    address nvarchar(200) not null,
    phone nvarchar(20)
);
create table pharmacists (
    pharmacist_id int primary key,
    full_name nvarchar(100) not null,
    email nvarchar(100) not null unique,
    password nvarchar(255) not null,
    pharmacy_id int not null,
    constraint fk_pharmacists_pharmacies foreign key(pharmacy_id) references pharmacies(pharmacy_id),
    constraint uq_pharmacist_pharmacy unique(pharmacy_id)
);
create table admins (
    admin_id int primary key,
    full_name nvarchar(100) not null,
    email nvarchar(100) not null unique,
    password nvarchar(255) not null
);
create table medicines (
    medicine_id int primary key,
    medicine_name nvarchar(100) not null,
    manufacturer nvarchar(100),
    price decimal(10,2) not null check(price>=0)
);
create table prescriptions (
    prescription_id int primary key,
    patient_id int not null,
    doctor_id int not null,
    issue_date date not null,
    status nvarchar(20) not null default 'active' check(status in ('active','completed','expired')),
    constraint fk_prescriptions_patients foreign key(patient_id) references patients(patient_id),
    constraint fk_prescriptions_doctors foreign key(doctor_id) references doctors(doctor_id),
    constraint uq_prescription_patient unique(prescription_id,patient_id)
);
create table prescription_medicines (
    prescription_medicine_id int primary key,
    prescription_id int not null references prescriptions(prescription_id),
    medicine_id int not null references medicines(medicine_id),
    dosage nvarchar(100) not null,
    frequency nvarchar(100) not null,
    duration_days int not null check(duration_days>0)
);
create table pharmacy_inventory (
    inventory_id int primary key,
    pharmacy_id int not null references pharmacies(pharmacy_id),
    medicine_id int not null references medicines(medicine_id),
    quantity int not null default 0 check(quantity>=0),
    constraint uq_pharmacy_medicine unique(pharmacy_id,medicine_id)
);
create table bookings (
    booking_id int primary key,
    patient_id int not null,
    prescription_id int not null,
    pharmacy_id int not null references pharmacies(pharmacy_id),
    pharmacist_id int null references pharmacists(pharmacist_id),
    booking_date datetime2 not null default sysdatetime(),
    qr_code nvarchar(100) not null unique,
    status nvarchar(20) not null default 'reserved' check(status in ('reserved','received','cancelled')),
    constraint fk_booking_prescription_patient foreign key(prescription_id,patient_id) references prescriptions(prescription_id,patient_id)
);
create table intake_schedule (
    schedule_id int primary key,
    prescription_medicine_id int not null references prescription_medicines(prescription_medicine_id),
    intake_time datetime2 not null,
    status nvarchar(20) not null default 'pending' check(status in ('pending','taken','missed'))
);
go