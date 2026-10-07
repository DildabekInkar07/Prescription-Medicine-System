USE PrescriptionMedicineDB;
GO

/* ==========================================
   6. DELETE - МӘЛІМЕТТІ ЖОЮ
   ========================================== */

/*
   Негізгі деректерді бұзбау үшін
   уақытша дәрі қосамыз.
*/

INSERT INTO medicines
(medicine_name, manufacturer, price)
VALUES
(N'Тест дәрі', N'Test Company', 500);


/* Тест дәріні өшіру */
DELETE FROM medicines
WHERE medicine_name = N'Тест дәрі';


/* DELETE нәтижесін тексеру */
SELECT * FROM medicines;