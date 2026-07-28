CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    disease VARCHAR(50),
    city VARCHAR(50),
    admission_date DATE
);

INSERT INTO patients VALUES
(1,'Arun',25,'Male','Diabetes','Chennai','2026-07-01'),
(2,'Priya',32,'Female','Heart Disease','Coimbatore','2026-07-02'),
(3,'Karthik',45,'Male','Tuberculosis','Madurai','2026-07-03'),
(4,'Anitha',29,'Female','Diabetes','Chennai','2026-07-04'),
(5,'Rahul',60,'Male','Heart Disease','Salem','2026-07-05'),
(6,'Meena',38,'Female','Asthma','Chennai','2026-07-06'),
(7,'Vijay',41,'Male','Tuberculosis','Trichy','2026-07-07'),
(8,'Divya',27,'Female','Diabetes','Coimbatore','2026-07-08'),
(9,'Suresh',50,'Male','Asthma','Madurai','2026-07-09'),
(10,'Keerthi',35,'Female','Heart Disease','Chennai','2026-07-10');


SELECT * FROM patients;

SELECT name FROM patients;
WHERE gender='Female';

SELECT * FROM patients
WHERE city='Chennai';

SELECT * FROM patients
WHERE age > 40;

SELECT COUNT(*) AS TotalPatients
FROM patients;

SELECT AVG(age) AS AverageAge
FROM patients;

SELECT MAX(age) AS OldestPatient
FROM patients;

SELECT city, COUNT(*) AS TotalPatients
FROM patients
GROUP BY city;

SELECT disease, COUNT(*) AS TotalPatients
FROM patients
GROUP BY disease;

SELECT disease, AVG(age) AS AverageAge
FROM patients
GROUP BY disease;

SELECT *
FROM patients
WHERE gender='Female'
AND disease='Heart Disease';

Patients admitted after July 5
SELECT *
FROM patients
WHERE admission_date > '2026-07-05';
