USE PrescriptionMedicineDB;
GO

/* ==========================================
   5. UPDATE - МӘЛІМЕТТІ ӨЗГЕРТУ
   ========================================== */

/* Дәрінің бағасын өзгерту */
UPDATE medicines
SET price = 3700
WHERE medicine_id = 1;


/* Дәрі қорын өзгерту */
UPDATE pharmacy_inventory
SET quantity = 19
WHERE pharmacy_id = 1
AND medicine_id = 1;


/* Бронь статусын өзгерту */
UPDATE bookings
SET status = 'received'
WHERE booking_id = 1;


/* Қабылдау статусын өзгерту */
UPDATE intake_schedule
SET status = 'taken'
WHERE schedule_id = 1;


/* UPDATE нәтижесін тексеру */
SELECT * FROM medicines;
SELECT * FROM pharmacy_inventory;
SELECT * FROM bookings;
SELECT * FROM intake_schedule;