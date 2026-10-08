create database PrescriptionMedicineDB;
go
use PrescriptionMedicineDB;
go
create table users (
user_id int identity(1,1) primary key,
full_name nvarchar(100) not null,
email nvarchar(100) not null unique,
password nvarchar(100) not null,
role nvarchar(20) not null,
check (role in ('patient','doctor','pharmacist','admin'))
);
create table patients (
patient_id int primary key,
birth_date date,
phone nvarchar(20),
foreign key (patient_id) references users(user_id)
);
create table doctors (
doctor_id int primary key,
specialization nvarchar(100) not null,
foreign key (doctor_id) references users(user_id)
);
create table pharmacists (
pharmacist_id int primary key,
foreign key (pharmacist_id) references users(user_id)
);
create table admins (
admin_id int primary key,
foreign key (admin_id) references users(user_id)
);
create table medicines (
medicine_id int identity(1,1) primary key,
medicine_name nvarchar(100) not null,
manufacturer nvarchar(100),
price decimal(10,2) not null,
check (price >= 0)
);
create table pharmacies (
pharmacy_id int identity(1,1) primary key,
pharmacy_name nvarchar(100) not null,
address nvarchar(200) not null,
phone nvarchar(20)
);
create table prescriptions (
prescription_id int identity(1,1) primary key,
patient_id int not null,
doctor_id int not null,
issue_date date not null,
status nvarchar(20) not null default 'active',
foreign key (patient_id) references patients(patient_id),
foreign key (doctor_id) references doctors(doctor_id),
check (status in ('active','completed','expired'))
);
create table prescription_medicines (
prescription_medicine_id int identity(1,1) primary key,
prescription_id int not null,
medicine_id int not null,
dosage nvarchar(100) not null,
frequency nvarchar(100) not null,
duration_days int not null,
foreign key (prescription_id) references prescriptions(prescription_id),
foreign key (medicine_id) references medicines(medicine_id),
check (duration_days > 0)
);
create table pharmacy_inventory (
inventory_id int identity(1,1) primary key,
pharmacy_id int not null,
medicine_id int not null,
quantity int not null default 0,
foreign key (pharmacy_id) references pharmacies(pharmacy_id),
foreign key (medicine_id) references medicines(medicine_id),
check (quantity >= 0),
unique (pharmacy_id,medicine_id)
);
create table bookings (
booking_id int identity(1,1) primary key,
patient_id int not null,
prescription_id int not null,
pharmacy_id int not null,
booking_date datetime not null default getdate(),
qr_code nvarchar(100) not null unique,
status nvarchar(20) not null default 'reserved',
foreign key (patient_id) references patients(patient_id),
foreign key (prescription_id) references prescriptions(prescription_id),
foreign key (pharmacy_id) references pharmacies(pharmacy_id),
check (status in ('reserved','received','cancelled'))
);
create table intake_schedule (
schedule_id int identity(1,1) primary key,
prescription_medicine_id int not null,
intake_time datetime not null,
status nvarchar(20) not null default 'pending',
foreign key (prescription_medicine_id) references prescription_medicines(prescription_medicine_id),
check (status in ('pending','taken','missed'))
);
go