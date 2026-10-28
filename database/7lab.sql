use PrescriptionMedicineDB_02;
go

select medicine_id, medicine_name, manufacturer, price
from medicines;

select *
from medicines
where price > 2000;

select *
from medicines
where price >= 1000 and price <= 4000;

select distinct manufacturer
from medicines;

select medicine_name, price
from medicines
order by price desc;

select manufacturer, count(*) as medicine_count
from medicines
group by manufacturer;

select
    count(*) as total_medicines,
    avg(price) as average_price,
    min(price) as minimum_price,
    max(price) as maximum_price,
    sum(price) as total_price
from medicines;

select manufacturer, count(*) as medicine_count
from medicines
group by manufacturer
having count(*) > 1;

select medicine_name, price
from medicines
where price > (select avg(price) from medicines)
order by price desc;

select
    p.patient_id,
    p.full_name,
    count(b.booking_id) as booking_count
from patients p
inner join bookings b on p.patient_id = b.patient_id
group by p.patient_id, p.full_name
order by booking_count desc;

select
    ph.pharmacy_name,
    sum(i.quantity) as total_quantity
from pharmacies ph
inner join pharmacy_inventory i
    on ph.pharmacy_id = i.pharmacy_id
group by ph.pharmacy_id, ph.pharmacy_name
order by total_quantity desc;

select status, count(*) as prescription_count
from prescriptions
group by status;

select
    d.full_name,
    d.specialization,
    count(p.prescription_id) as prescription_count
from doctors d
left join prescriptions p on d.doctor_id = p.doctor_id
group by d.doctor_id, d.full_name, d.specialization
order by prescription_count desc;

select * from pharmacy_inventory;

select status, count(*) as booking_count
from bookings
group by status;

select count(*) as booking_count
from bookings
where booking_date >= '20261001'
  and booking_date < '20261010';

select status, count(*) as intake_count
from intake_schedule
group by status;

select
    ph.pharmacy_name,
    m.medicine_name,
    i.quantity
from pharmacy_inventory i
join pharmacies ph on i.pharmacy_id = ph.pharmacy_id
join medicines m on i.medicine_id = m.medicine_id
where i.quantity < 20
order by i.quantity asc;

select * from pharmacy_inventory;
select * from patients;
