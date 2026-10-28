SELECT
    medicine_name AS [Дәрі],
    manufacturer AS [Өндіруші],
    price AS [Бағасы]
FROM medicines
WHERE price > (
    SELECT AVG(price)
    FROM medicines
)
ORDER BY price DESC;

SELECT
    patient_id AS [Пациент ID],
    full_name AS [Пациент],
    phone AS [Телефон]
FROM patients
WHERE patient_id IN (
    SELECT patient_id
    FROM prescriptions
    WHERE status = 'active'
)
ORDER BY full_name;

SELECT
    medicine_name AS [Дәрі],
    price AS [Бағасы],
    CASE
        WHEN price < 1500 THEN N'Арзан'
        WHEN price <= 2500 THEN N'Орташа'
        ELSE N'Қымбат'
    END AS [Баға санаты]
FROM medicines
ORDER BY price;

SELECT
    ph.pharmacy_name AS [Дәріхана],
    m.medicine_name AS [Дәрі],
    i.quantity AS [Қордағы саны],
    CASE
        WHEN i.quantity = 0 THEN N'Қор таусылған'
        WHEN i.quantity < 20 THEN N'Қор аз'
        WHEN i.quantity <= 30 THEN N'Қор жеткілікті'
        ELSE N'Қор мол'
    END AS [Қор жағдайы]
FROM pharmacy_inventory AS i
INNER JOIN pharmacies AS ph
    ON i.pharmacy_id = ph.pharmacy_id
INNER JOIN medicines AS m
    ON i.medicine_id = m.medicine_id
ORDER BY i.quantity, ph.pharmacy_name;

SELECT
    ph.pharmacy_id AS [Дәріхана ID],
    ph.pharmacy_name AS [Дәріхана],
    COUNT(DISTINCT i.medicine_id) AS [Дәрі түрлерінің саны],
    SUM(i.quantity) AS [Жалпы қор саны],
    SUM(i.quantity * m.price) AS [Қордың есептік құны]
FROM pharmacies AS ph
INNER JOIN pharmacy_inventory AS i
    ON ph.pharmacy_id = i.pharmacy_id
INNER JOIN medicines AS m
    ON i.medicine_id = m.medicine_id
GROUP BY
    ph.pharmacy_id,
    ph.pharmacy_name
HAVING SUM(i.quantity) > 50
ORDER BY [Қордың есептік құны] DESC;

SELECT medicine_name, price
FROM medicines
WHERE price > (SELECT AVG(price) FROM medicines);

SELECT full_name
FROM patients
WHERE patient_id IN (
    SELECT patient_id
    FROM prescriptions
    WHERE status = 'active'
);

SELECT medicine_name, price
FROM medicines
WHERE price = (
    SELECT MIN(price)
    FROM medicines
);

SELECT medicine_name, price
FROM medicines
WHERE price > (
    SELECT AVG(price)
    FROM medicines
);

SELECT
    b.booking_id AS [Бронь нөмірі],
    p.full_name AS [Пациент],
    ph.pharmacy_name AS [Дәріхана],
    b.status AS [Базадағы статус],
    CASE b.status
        WHEN 'reserved' THEN N'Бронь жасалған'
        WHEN 'received' THEN N'Дәрі алынған'
        WHEN 'cancelled' THEN N'Бронь жойылған'
        ELSE N'Белгісіз'
    END AS [Қазақша статус]
FROM bookings AS b
INNER JOIN patients AS p
    ON b.patient_id = p.patient_id
INNER JOIN pharmacies AS ph
    ON b.pharmacy_id = ph.pharmacy_id
ORDER BY b.booking_id;

SELECT COUNT(DISTINCT prescription_id) AS [Рецепт саны]
FROM bookings
WHERE booking_date < SYSDATETIME()
  AND status = 'reserved';

SELECT medicine_name, price
FROM medicines
WHERE price > (
    SELECT MAX(price)
    FROM medicines
    WHERE medicine_name = N'Парацетамол'
);

SELECT TOP 1
    m.medicine_name AS [Дәрі],
    COUNT(*) AS [Бронь саны]
FROM medicines m
JOIN prescription_medicines pm
    ON m.medicine_id = pm.medicine_id
JOIN bookings b
    ON pm.prescription_id = b.prescription_id
WHERE b.status <> 'cancelled'
GROUP BY m.medicine_id, m.medicine_name
ORDER BY COUNT(*) DESC;

SELECT full_name, phone
FROM patients
WHERE patient_id IN (
    SELECT patient_id
    FROM prescriptions
    WHERE status = 'completed'
);

SELECT
    r.prescription_id,
    r.patient_id,
    r.issue_date
FROM prescriptions AS r
WHERE NOT EXISTS (
    SELECT 1
    FROM bookings AS b
    WHERE b.prescription_id = r.prescription_id
);

SELECT COUNT(DISTINCT r.patient_id) AS [Пациенттер саны]
FROM prescriptions AS r
INNER JOIN prescription_medicines AS pm
    ON r.prescription_id = pm.prescription_id
INNER JOIN intake_schedule AS s
    ON pm.prescription_medicine_id = s.prescription_medicine_id
WHERE s.intake_time < SYSDATETIME()
  AND s.status IN ('pending', 'missed');