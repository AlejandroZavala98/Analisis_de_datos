/* INSERCIÓN DE DATOS A LAS DISTINTAS TABLAS */


INSERT INTO CLINIC.PATIENT 
(
ID_PATIENT,
ALL_NAMES,
LAST_NAME,
SEX,
BIRTHDAY,
CITY,
STATE_NM,
PHONE_NBR
)
VALUES 
('P-0001', 'DANIEL', 'CARMONA', 'M', '1998-12-07', 'MEXICO', 'MEXICO', '551234567'),
('P-0002', 'JUAN CARLOS', 'HERNANDEZ', 'M', '1990-07-21', 'MONTERREY', 'NUEVO LEON', '551234321'),
('P-0003', 'FERNANDA', 'MORALES', 'F', '1973-07-01', 'MEXICO', 'MEXICO', '5412309872'),
('P-0004', 'ANDREA', 'ZUÑIGA', 'F', '2000-12-02', 'GUADALAJARA', 'JALISCO', '3309876522'),
('P-0005', 'ALBERTO', 'PEREYRA', 'M', '1986-10-23', 'MEXICO', 'MEXICO', '5565423983'),
('P-0006', 'KAREN', 'SOTO', 'F', '1978-07-07', 'MEXICO', 'MEXICO', '5565423097'),
('P-0007', 'ANDRES ALEJANDRO', 'ORTIZ', 'M','1990-10-09', 'MONTERREY', 'MEXICO', '5698782347'),
('P-0008', 'LESLY', 'RODRIGUEZ VELAZQUEZ', 'F', '2001-02-11', 'MEXICO', 'MEXICO', '5543454352'),
('P-0009', 'ENRIQUE', 'VERA', 'M', '1996-11-12', 'GUADALAJARA', 'JALISCO', '3309815273'),
('P-0010', 'VICTORIA', 'SOLIS', 'F', '2002-03-10', 'MEXICO', 'MEXICO', '5565278126');

-- CHECK
SELECT *
FROM CLINIC.PATIENT 
LIMIT 55;


INSERT INTO CLINIC.SPECIALIST
(
ID_DR_SPECIALIST,
ALL_NAMES,
LAST_NAME,
SEX,
BIRTHDAY,
SPECIALIST
)
VALUES 
('ME-0001', 'ALEJANDRA', 'BALLESTEROS RUIZ', 'F', '1986-01-01', 'MEDICO GENERAL'),
('ME-0002', 'ENRIQUE', 'ORTIZ', 'M', '1968-10-01', 'NEFROLOGIA'),
('ME-0003', 'JOSE FELIPE', 'HERNANDEZ', 'M', '1980-10-02', 'MEDICO GENERAL'),
('ME-0004', 'KENIA', 'LOPEZ ORTEGA', 'F', '1973-01-01', 'PEDIATRA'),
('ME-0005', 'JUAN', 'MARTINEZ MARIN', 'M', '1980-02-23', 'MEDICO GENERAL');

-- CHECK
SELECT *
FROM CLINIC.SPECIALIST 
LIMIT 55;



INSERT INTO CLINIC.DATE_MED
(
ID_DATE,
ID_PATIENT,
DATE_MED,
DATE_HOUR)
VALUES 
('CM-0001', 'P-0001', '2022-10-01', '12:00'),
('CM-0002', 'P-0002', '2022-10-01', '12:20'),
('CM-0003', 'P-0003', '2022-10-02', '12:20'),
('CM-0004', 'P-0004', '2022-10-02', '10:00'),
('CM-0005', 'P-0005', '2022-10-03', '08:20'),
('CM-0006', 'P-0006', '2022-10-03', '12:20'),
('CM-0007', 'P-0007', '2022-10-04', '12:20'),
('CM-0008', 'P-0008', '2022-10-04', '10:00'),
('CM-0009', 'P-0009', '2022-10-04', '08:20'),
('CM-0010', 'P-0010', '2022-10-05', '08:20');

-- CHECK
SELECT *
FROM CLINIC.DATE_MED 
LIMIT 55;



INSERT INTO CLINIC.DATE_MED_DETAILS
(
ID_DATE,
ID_DR_SPECIALIST,
DOCTOR_OFFICE,
DATE_MED,
DATE_HOUR,
TURN,
STATUS_DATE,
NOTES)
VALUES 
('CM-0001', 'ME-0001', 'CONSULTORIO 1', '2022-10-04', '12:00', 'MATUTINO', 'ESPERA', 'NA'),
('CM-0002', 'ME-0001', 'CONSULTORIO 1', '2022-10-04', '12:20', 'MATUTINO', 'ESPERA', 'NA'),
('CM-0003', 'ME-0002', 'CONSULTORIO 2', '2022-10-05', '12:00', 'MATUTINO', 'ESPERA', 'NA'),
('CM-0004', 'ME-0002', 'CONSULTORIO 2', '2022-10-05', '12:00', 'MATUTINO', 'ESPERA', 'NA'),
('CM-0005', 'ME-0003', 'CONSULTORIO 3', '2022-10-06', '12:00', 'MATUTINO', 'ESPERA', 'NA'),
('CM-0006', 'ME-0003', 'CONSULTORIO 3', '2022-10-07', '14:00', 'VESPERTINO', 'ESPERA', 'NA'),
('CM-0007', 'ME-0003', 'CONSULTORIO 3', '2022-10-07', '14:20', 'VESPERTINO', 'ESPERA', 'NA'),
('CM-0008', 'ME-0004', 'CONSULTORIO 4', '2022-10-08', '13:00', 'VESPERTINO', 'ESPERA', 'NA'),
('CM-0009', 'ME-0004', 'CONSULTORIO 4', '2022-10-08', '13:20', 'VESPERTINO', 'ESPERA', 'NA'),
('CM-0010', 'ME-0005', 'CONSULTORIO 5', '2022-10-08', '15:00', 'VESPERTINO', 'ESPERA', 'NA');

-- CHECK
SELECT *
FROM CLINIC.DATE_MED_DETAILS
LIMIT 55;


INSERT INTO CLINIC.MED_RECORDS
(
ID_PATIENT,
TYPE_BLOOD,
ALLERGY,
CHRONIC_CONDITION,
CREATION_DT
)
VALUES
('P-0001', 'B POSITIVO', 'NA', 'NA', '2022-06-10'),
('P-0002', 'B NEGATIVO', 'ALERGIA AL POLVO', 'NA', '2022-06-10'),
('P-0003', 'O NEGATIVO', 'NA', 'DIABETES', '2022-06-14'),
('P-0004', 'B POSITIVO', 'ALERGIA A LOS MARISCOS', 'ASMA', '2022-06-15'),
('P-0005', 'B POSITIVO', 'NA', 'DIABETES', '2022-06-16'),
('P-0006', 'B POSITIVO', 'ALERGIA AL POLVO', 'NA', '2022-06-17'),
('P-0007', 'B POSITIVO', 'NA', 'CANCER', '2022-06-20'),
('P-0008', 'B POSITIVO', 'NA', 'NA', '2022-06-24'),
('P-0009', 'B POSITIVO', 'NA', 'NA', '2022-07-02'),
('P-0010', 'B POSITIVO', 'NA', 'NA', '2022-07-06');

-- CHECK
SELECT *
FROM CLINIC.MED_RECORDS
LIMIT 55;


INSERT INTO CLINIC.MED_RECORDS_DETAILS
(
ID_DR_SPECIALIST,
ID_PATIENT,
AGE_NBR,
WEIGHT_NBR,
HEIGHT_NBR,
IMC_NBR,
LVL_WEIGHT,
BLOOD_PRESSURE,
MED_DIAGNOSTIC,
PRESCRIPTION,
CREATION_DT
)
VALUES 
('ME-0001', 'P-0001', '24', '70', '1.70', '24.0', 'NORMAL', '120/70', 'NA', 'NA', '2022-11-22'),
('ME-0001', 'P-0002', '33', '80', '1.77', '27.0', 'SOBREPESO', '125/73', 'NA', 'NA', '2022-11-23'),
('ME-0001', 'P-0003', '45', '62', '1.64', '26.6', 'NORMAL', '130/70', 'NA', 'NA', '2022-11-24'),
('ME-0002', 'P-0003', '45', '62', '1.64', '26.6', 'NORMAL', '129/70', 'NA', 'NA', '2022-11-24'),
('ME-0002', 'P-0004', '23', '65', '1.60', '23.0', 'NORMAL', '125/70', 'NA', 'NA', '2022-11-25'),
('ME-0003', 'P-0005', '37', '90', '1.77', '29.0', 'OBESIDAD', '129/80', 'NA', 'NA', '2022-11-25'),
('ME-0003', 'P-0005', '37', '90', '1.77', '29.0', 'OBESIDAD', '128/78', 'NA', 'NA', '2022-11-25'),
('ME-0003', 'P-0006', '46', '72', '1.68', '24.0', 'NORMAL', '120/69', 'NA', 'NA', '2022-11-26'),
('ME-0003', 'P-0007', '31', '76', '1.77', '24.0', 'NORMAL', '125/73', 'NA', 'NA', '2022-11-27'),
('ME-0004', 'P-0007', '31', '76', '1.77', '24.0', 'NORMAL', '125/67', 'NA', 'NA', '2022-11-27'),
('ME-0004', 'P-0008', '21', '68', '1.63', '24.0', 'NORMAL', '119/69', 'NA', 'NA', '2022-11-29'),
('ME-0005', 'P-0009', '26', '90', '1.75', '29.0', 'SOBREPESO', '132/76', 'NA', 'NA', '2022-12-01'),
('ME-0005', 'P-0009', '26', '90', '1.75', '29.0', 'SOBREPESO', '130/74', 'NA', 'NA', '2022-12-01'),
('ME-0005', 'P-0010', '18', '60', '1.59', '23.0', 'NORMAL', '120/68', 'NA', 'NA', '2022-12-02'),
('ME-0005', 'P-0010', '18', '60', '1.59', '23.0', 'NORMAL', '119/65', 'NA', 'NA', '2022-12-02');

-- CHECK
SELECT *
FROM CLINIC.MED_RECORDS_DETAILS
LIMIT 55;