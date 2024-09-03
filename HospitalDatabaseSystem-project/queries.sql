CREATE TABLE Doctor (
    D_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    D_name VARCHAR(255) NOT NULL,
    D_phoneNum INT NOT NULL,
    specialization VARCHAR(255) NOT NULL,
    D_salary INT NOT NULL,
    D_address VARCHAR(255) NOT NULL,
    D_gender VARCHAR(255) NOT NULL
);

CREATE TABLE Room (
    room_num INT NOT NULL PRIMARY KEY,
    room_type VARCHAR(255) NOT NULL
);

CREATE TABLE Patient (
    P_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    P_name VARCHAR(255) NOT NULL,
    P_phoneNum INT NOT NULL,
    P_gender VARCHAR(255) NOT NULL,
    P_address VARCHAR(255) NOT NULL,
    bill INT NOT NULL,
    D_id INT NOT NULL,
    room_num INT NOT NULL,
    FOREIGN KEY (D_id) REFERENCES Doctor(D_id),
    FOREIGN KEY (room_num) REFERENCES Room(room_num)
);

CREATE TABLE Staff (
    S_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    S_name VARCHAR(255) NOT NULL,
    S_phoneNum INT NOT NULL,
    S_age INT NOT NULL,
    S_address VARCHAR(255) NOT NULL,
    S_salary INT NOT NULL
);

CREATE TABLE Admin (
    A_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    A_name VARCHAR(255) NOT NULL,
    A_email VARCHAR(255) NOT NULL,
    A_password VARCHAR(255) NOT NULL
);

CREATE TABLE Nurse (
  N_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  N_name VARCHAR(255),
  N_salary DECIMAL(10, 2)
);

CREATE TABLE Disease (
  Disease_name VARCHAR(255) NOT NULL PRIMARY KEY,
  symptoms VARCHAR(255),
  treatment VARCHAR(255)
);
SHOW TABLES;


INSERT INTO Doctor (D_name, D_phoneNum, specialization, D_salary, D_address, D_gender)
VALUES ('Ahmed Ali', 01012345678, 'Cardiology', 30000, 'Cairo', 'male'),
       ('Mohamed Hassan', 01135792469, 'Dermatology', 20000, 'Alexandria', 'male'),
       ('Fatma Ahmed', 01246813580, 'Pediatrics', 40000, 'Giza', 'female'),
       ('Omar Mahmoud', 01036925815, 'Neurology', 25000, 'Luxor', 'male'),
       ('Nada Ali', 01125836948, 'Oncology', 35000, 'Aswan', 'female'),
       ('Hassan Ahmed', 01214725837, 'Cardiology', 45000, 'Cairo', 'male'),
       ('Sara Mohamed', 01075395129, 'Dermatology', 15000, 'Alexandria', 'female'),
       ('Ali Mahmoud', 01186420974, 'Pediatrics', 30000, 'Giza', 'male'),
       ('Mona Ahmed', 01234567893, 'Neurology', 20000, 'Luxor', 'female'),
       ('Khaled Ali', 01024681014, 'Oncology', 40000, 'Aswan', 'male');

INSERT INTO Room (room_num, room_type) VALUES
(1, 'Patient room'),
(2, 'Operation room'),
(3, 'Pharmacy'),
(4, 'Laboratory'),
(5, 'ICU'),
(6, 'Radiology room'),
(7, 'Operation room'),
(8, 'Patient room'),
(9, 'Operation room'),
(10, 'Pediatric room');

INSERT INTO Patient (P_name, P_phoneNum, P_gender, P_address, bill, D_id, room_num) VALUES
('Ahmed Ali', 01123456789, 'Male', 'Cairo', 15000, 1, 1),
('Fatima Mohamed', 01234567890, 'Female', 'Alexandria', 20000, 2, 2),
('Omar Mahmoud', 01012345678, 'Male', 'Luxor', 25000, 3, 3),
('Nadia Hassan', 01123456780, 'Female', 'Aswan', 30000, 4, 4),
('Khaled Ibrahim', 01234567891, 'Male', 'Hurghada', 35000, 5, 5),
('Amina Abdelaziz', 01012345679, 'Female', 'Sharm El Sheikh', 40000, 6, 6),
('Ali Hassan', 01123456781, 'Male', 'Mansoura', 15000, 7, 7),
('Noura Ahmed', 01234567892, 'Female', 'Tanta', 20000, 8, 8),
('Mahmoud Mohamed', 01012345680, 'Male', 'Port Said', 25000, 9, 9),
('Laila Samir', 01123456782, 'Female', 'Suez', 30000, 10, 10);

INSERT INTO Staff (S_name, S_phoneNum, S_age, S_address, S_salary) VALUES
('Mohamed Ali', 01123456789, 35, 'Cairo', 3000),
('Sara Ahmed', 01234567890, 40, 'Alexandria', 3500),
('Amr Mahmoud', 01012345678, 45, 'Luxor', 4000),
('Nada Hassan', 01123456780, 38, 'Aswan', 4500),
('Khaled Ibrahim', 01234567891, 42, 'Hurghada', 5000),
('Amina Abdelaziz', 01012345679, 37, 'Sharm El Sheikh', 5500),
('Hassan Ali', 01123456781, 48, 'Mansoura', 6000),
('Lina Ahmed', 01234567892, 39, 'Tanta', 2500),
('Ahmed Mohamed', 01012345680, 46, 'Port Said', 2000),
('Mona Samir', 01123456782, 44, 'Suez', 1500);

INSERT INTO Nurse (N_name, N_salary) VALUES
('Nadia Ali', 3500.00),
('Ahmed Hassan', 4000.50),
('Sara Mohamed', 4200.75),
('Omar Mahmoud', 3800.25),
('Laila Ahmed', 4100.50),
('Khaled Ibrahim', 3600.00),
('Fatima Abdelaziz', 3900.75),
('Amr Ahmed', 3700.25),
('Noura Hassan', 4300.00),
('Ali Mohamed', 4500.50);

INSERT INTO Admin (A_name, A_email, A_password) VALUES
('Ahmed Ali', 'ahmed.ali@example.com', 'P@ssw0rd1'),
('Fatima Mohamed', 'fatima.mohamed@example.com', 'P@ssw0rd2'),
('Omar Mahmoud', 'omar.mahmoud@example.com', 'P@ssw0rd3'),
('Nadia Hassan', 'nadia.hassan@example.com', 'P@ssw0rd4'),
('Khaled Ibrahim', 'khaled.ibrahim@example.com', 'P@ssw0rd5'),
('Amina Abdelaziz', 'amina.abdelaziz@example.com', 'P@ssw0rd6'),
('Ali Hassan', 'ali.hassan@example.com', 'P@ssw0rd7'),
('Noura Ahmed', 'noura.ahmed@example.com', 'P@ssw0rd8'),
('Mahmoud Mohamed', 'mahmoud.mohamed@example.com', 'P@ssw0rd9'),
('Laila Samir', 'laila.samir@example.com', 'P@ssw0rd10');

INSERT INTO Disease (Disease_name, symptoms, treatment) VALUES
('Flu', 'Fever, cough, sore throat', 'Rest, fluids, antiviral medications'),
('Hypertension', 'High blood pressure', 'Medications, lifestyle changes'),
('Diabetes', 'Increased thirst, frequent urination', 'Insulin, oral medications, lifestyle changes'),
('Migraine', 'Severe headache, nausea, sensitivity to light', 'Pain relievers, rest'),
('Arthritis', 'Joint pain, stiffness', 'Pain relievers, physical therapy, joint replacement'),
('Asthma', 'Shortness of breath, wheezing', 'Bronchodilators, corticosteroids'),
('Depression', 'Persistent sadness, loss of interest', 'Psychotherapy, medications'),
('Cancer', 'Abnormal cell growth', 'Surgery, chemotherapy, radiation therapy'),
('Osteoporosis', 'Bone pain, fractures', 'Calcium supplements, vitamin D, medications, weight-bearing exercise'),
('Heart Disease', 'Chest pain, shortness of breath', 'Medications, lifestyle changes, surgery');

SELECT * FROM Doctor;
SELECT * FROM Admin;
SELECT * FROM Disease;
SELECT * FROM Nurse;
SELECT * FROM Staff;
SELECT * FROM Patient;
SELECT * FROM Room;









