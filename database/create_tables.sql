create database PrescriptionMedicineDB_02;
go
use PrescriptionMedicineDB_02;
go

create table patients (
    patient_id int identity(1,1) primary key,
    full_name nvarchar(100) not null,
    email nvarchar(100) not null unique,
    password nvarchar(255) not null,
    birth_date date,
    phone nvarchar(20)
);
create table doctors (
    doctor_id int identity(1,1) primary key,
    full_name nvarchar(100) not null,
    email nvarchar(100) not null unique,
    password nvarchar(255) not null,
    specialization nvarchar(100) not null
);
create table pharmacies (
    pharmacy_id int identity(1,1) primary key,
    pharmacy_name nvarchar(100) not null,
    address nvarchar(200) not null,
    phone nvarchar(20)
);
create table pharmacists (
    pharmacist_id int identity(1,1) primary key,
    full_name nvarchar(100) not null,
    email nvarchar(100) not null unique,
    password nvarchar(255) not null,
    pharmacy_id int not null,
    constraint fk_pharmacists_pharmacies foreign key (pharmacy_id) references pharmacies(pharmacy_id),
    constraint uq_pharmacist_pharmacy unique (pharmacist_id, pharmacy_id)
);
create table admins (
    admin_id int identity(1,1) primary key,
    full_name nvarchar(100) not null,
    email nvarchar(100) not null unique,
    password nvarchar(255) not null
);
create table medicines (
    medicine_id int identity(1,1) primary key,
    medicine_name nvarchar(100) not null,
    manufacturer nvarchar(100),
    price decimal(10,2) not null check (price >= 0)
);
create table prescriptions (
    prescription_id int identity(1,1) primary key,
    patient_id int not null,
    doctor_id int not null,
    issue_date date not null,
    status nvarchar(20) not null default 'active' check (status in ('active','completed','expired')),
    foreign key (patient_id) references patients(patient_id),
    foreign key (doctor_id) references doctors(doctor_id),
    constraint uq_prescription_patient unique (prescription_id, patient_id)
);
create table prescription_medicines (
    prescription_medicine_id int identity(1,1) primary key,
    prescription_id int not null,
    medicine_id int not null,
    dosage nvarchar(100) not null,
    frequency nvarchar(100) not null,
    duration_days int not null check (duration_days > 0),
    foreign key (prescription_id) references prescriptions(prescription_id),
    foreign key (medicine_id) references medicines(medicine_id)
);
create table pharmacy_inventory (
    inventory_id int identity(1,1) primary key,
    pharmacy_id int not null,
    medicine_id int not null,
    quantity int not null default 0 check (quantity >= 0),
    foreign key (pharmacy_id) references pharmacies(pharmacy_id),
    foreign key (medicine_id) references medicines(medicine_id),
    constraint uq_inventory unique (pharmacy_id, medicine_id)
);
create table bookings (
    booking_id int identity(1,1) primary key,
    patient_id int not null,
    prescription_id int not null,
    pharmacy_id int not null,
    pharmacist_id int null,
    booking_date datetime2(0) not null default sysdatetime(),
    qr_code nvarchar(100) not null unique,
    status nvarchar(20) not null default 'reserved' check (status in ('reserved','received','cancelled')),
    foreign key (patient_id) references patients(patient_id),
    foreign key (prescription_id, patient_id) references prescriptions(prescription_id, patient_id),
    foreign key (pharmacy_id) references pharmacies(pharmacy_id),
    foreign key (pharmacist_id, pharmacy_id) references pharmacists(pharmacist_id, pharmacy_id)
);
create table intake_schedule (
    schedule_id int identity(1,1) primary key,
    prescription_medicine_id int not null,
    intake_time datetime2(0) not null,
    status nvarchar(20) not null default 'pending' check (status in ('pending','taken','missed')),
    foreign key (prescription_medicine_id) references prescription_medicines(prescription_medicine_id)
);