

--CREATE SCHEMA Transplant;

/*CREATE TABLE Transplant.Patients (
    Patient_ID VARCHAR(50) PRIMARY KEY,
    Patient_Name VARCHAR(100) NOT NULL,
    Patient_Age INT CHECK (Patient_Age BETWEEN 0 AND 120) NOT NULL,
    Patient_Sex VARCHAR(20) CHECK (Patient_Sex IN ('Male', 'Female')) NOT NULL,
    Patient_BloodGroup VARCHAR(5) CHECK (Patient_BloodGroup IN ('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-')) NOT NULL,
    Patient_OrganName VARCHAR(50) NOT NULL,
    Patient_Email VARCHAR(255) UNIQUE NOT NULL,
    Patient_PhoneNumber VARCHAR(15) UNIQUE NOT NULL
);*/

/*INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P001', 'Sam Brown', 15, 'Male', 'AB+', 'Kidney', 'patient001@example.com', '+16444483976');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P002', 'Jordan Davis', 16, 'Male', 'AB-', 'Liver', 'patient002@example.com', '+17567989088');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P003', 'Jordan Miller', 77, 'Female', 'B+', 'Heart', 'patient003@example.com', '+14376121047');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P004', 'Chris Martinez', 30, 'Male', 'B+', 'Pancreas', 'patient004@example.com', '+15388206113');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P005', 'Morgan Davis', 56, 'Male', 'O-', 'Lung', 'patient005@example.com', '+16149333178');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P006', 'Jordan Miller', 28, 'Male', 'AB+', 'Kidney', 'patient006@example.com', '+17904065416');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P007', 'Cameron Garcia', 45, 'Male', 'B+', 'Liver', 'patient007@example.com', '+18451258189');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P008', 'Alex Smith', 74, 'Male', 'B+', 'Pancreas', 'patient008@example.com', '+14397029433');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P009', 'Morgan Williams', 53, 'Male', 'O-', 'Lung', 'patient009@example.com', '+11761879815');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P010', 'Cameron Davis', 22, 'Male', 'AB+', 'Heart', 'patient010@example.com', '+12795585440');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P011', 'Taylor Davis', 2, 'Male', 'O+', 'Kidney', 'patient011@example.com', '+16021200246');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P012', 'Pat Smith', 95, 'Female', 'A-', 'Liver', 'patient012@example.com', '+18183036009');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P013', 'Pat Williams', 20, 'Male', 'AB-', 'Lung', 'patient013@example.com', '+14688832288');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P014', 'Pat Martinez', 68, 'Male', 'B+', 'Pancreas', 'patient014@example.com', '+18561453146');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P015', 'Morgan Jones', 58, 'Male', 'B+', 'Pancreas', 'patient015@example.com', '+12223587401');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P016', 'John Hernandez', 50, 'Male', 'A-', 'Kidney', 'patient016@example.com', '+14093272429');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P017', 'Morgan Davis', 41, 'Male', 'AB-', 'Liver', 'patient017@example.com', '+16506335009');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P018', 'Alex Smith', 40, 'Male', 'B+', 'Pancreas', 'patient018@example.com', '+16259675291');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P019', 'Chris Smith', 31, 'Female', 'AB-', 'Lung', 'patient019@example.com', '+13016022581');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P020', 'Sam Davis', 70, 'Female', 'AB+', 'Heart', 'patient020@example.com', '+19305158143');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P021', 'Jordan Hernandez', 23, 'Female', 'AB-', 'Kidney', 'patient021@example.com', '+16894325970');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P022', 'Jane Martinez', 59, 'Male', 'AB-', 'Liver', 'patient022@example.com', '+11059700787');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P023', 'Taylor Jones', 59, 'Male', 'AB-', 'Lung', 'patient023@example.com', '+19856862135');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P024', 'Jane Davis', 99, 'Female', 'O-', 'Pancreas', 'patient024@example.com', '+16699452501');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P025', 'Jordan Miller', 71, 'Male', 'B+', 'Kidney', 'patient025@example.com', '+13199119796');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P026', 'Pat Jones', 95, 'Male', 'B-', 'Kidney', 'patient026@example.com', '+13573754555');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P027', 'Pat Davis', 100, 'Male', 'AB+', 'Liver', 'patient027@example.com', '+17012750657');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P028', 'Morgan Miller', 9, 'Male', 'A-', 'Pancreas', 'patient028@example.com', '+15415620732');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P029', 'Alex Garcia', 77, 'Male', 'B-', 'Lung', 'patient029@example.com', '+17642333278');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P030', 'Pat Garcia', 43, 'Female', 'A+', 'Heart', 'patient030@example.com', '+11140927522');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P031', 'Taylor Garcia', 62, 'Male', 'A-', 'Kidney', 'patient031@example.com', '+11482199136');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P032', 'John Garcia', 4, 'Male', 'AB-', 'Liver', 'patient032@example.com', '+17493986023');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P033', 'Sam Garcia', 36, 'Male', 'O-', 'Pancreas', 'patient033@example.com', '+17345504463');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P034', 'Jane Hernandez', 93, 'Male', 'AB+', 'Lung', 'patient034@example.com', '+12134161463');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P035', 'Jordan Davis', 9, 'Female', 'B+', 'Heart', 'patient035@example.com', '+12701770231');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P036', 'Jordan Garcia', 65, 'Male', 'O+', 'Kidney', 'patient036@example.com', '+16351118124');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P037', 'Taylor Smith', 18, 'Male', 'O-', 'Liver', 'patient037@example.com', '+17498098373');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P038', 'Taylor Jones', 22, 'Male', 'O-', 'Lung', 'patient038@example.com', '+19179282994');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P039', 'John Smith', 17, 'Male', 'A-', 'Pancreas', 'patient039@example.com', '+12601703190');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P040', 'Jordan Miller', 7, 'Male', 'A+', 'Kidney', 'patient040@example.com', '+14125003941');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P041', 'Chris Miller', 35, 'Male', 'AB+', 'Kidney', 'patient041@example.com', '+16628903944');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P042', 'Chris Johnson', 22, 'Male', 'O+', 'Liver', 'patient042@example.com', '+19045971224');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P043', 'Morgan Garcia', 19, 'Female', 'O-', 'Pancreas', 'patient043@example.com', '+18636731012');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P044', 'Cameron Davis', 87, 'Male', 'A+', 'Lung', 'patient044@example.com', '+18888516827');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P045', 'Alex Smith', 24, 'Male', 'AB+', 'Kidney', 'patient045@example.com', '+16273209071');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P046', 'John Martinez', 10, 'Male', 'O-', 'Kidney', 'patient046@example.com', '+11628313754');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P047', 'Cameron Hernandez', 35, 'Male', 'A+', 'Liver', 'patient047@example.com', '+13315287120');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P048', 'John Johnson', 13,'Male', 'A+', 'Pancreas', 'patient048@example.com', '+17890979229');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P049', 'Morgan Martinez', 33, 'Female', 'O+', 'Lung', 'patient049@example.com', '+15722717352');
INSERT INTO Transplant.Patients (Patient_ID, Patient_Name, Patient_Age, Patient_Sex, Patient_BloodGroup, Patient_OrganName, Patient_Email, Patient_PhoneNumber) VALUES ('P050', 'Sam Brown', 100,'Female', 'O-', 'Kidney', 'patient050@example.com', '+15053541396');*/


/*CREATE TABLE Transplant.Doctors (
    Doctor_ID VARCHAR(50) PRIMARY KEY,
    Doctor_Name VARCHAR(100) NOT NULL,
    Doctor_Age INT CHECK (Doctor_Age BETWEEN 25 AND 80) NOT NULL,
    Doctor_Sex VARCHAR(10) CHECK (Doctor_Sex IN ('Male', 'Female')),
    Doctor_Specialization VARCHAR(100) NOT NULL,
    Doctor_HospitalName VARCHAR(255) NOT NULL
);


INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D001', 'Mary Walker', 68, 'Female', 'Pulmonology', 'Sunrise Hospital');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D002', 'Patricia Allen', 71, 'Female', 'Cardiology', 'Sunrise Hospital');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D003', 'Michael Hall', 32, 'Male', 'Hepatology', 'St. John’s Mcal');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D004', 'Linda Walker', 76, 'Female', 'Cardiology', 'St. John’s Mcal');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D005', 'Patricia Walker', 45, 'Female', 'Endocrinology', 'Sunrise Hospital');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D006', 'Patricia Rodriguez', 77, 'Female', 'Endocrinology', 'General Hospital');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D007', 'Mary Walker', 80, 'Female', 'Nephrology', 'St. John’s Mcal');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D008', 'Elizabeth Rodriguez', 59, 'Female', 'Nephrology', 'St. John’s Mcal');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D009', 'Michael Perez', 25, 'Male', 'Cardiology', 'Memorial Care');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D010', 'Jennifer Young', 42, 'Female', 'Endocrinology', 'St. John’s Mcal');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D011', 'Elizabeth Rodriguez', 78, 'Female', 'Nephrology', 'General Hospital');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D012', 'Jennifer Perez', 32, 'Female', 'Cardiology', 'St. John’s Mcal');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D013', 'William Anderson', 60, 'Male', 'Endocrinology', 'City Hospital');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D014', 'Elizabeth Young', 45, 'Female', 'Pulmonology', 'City Hospital');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D015', 'Patricia Young', 54, 'Female', 'Hepatology', 'Memorial Care');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D016', 'Robert Lopez', 27, 'Male', 'Pulmonology', 'City Hospital');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D017', 'William Young', 68, 'Male', 'Pulmonology', 'City Hospital');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D018', 'Linda Walker', 70, 'Female', 'Endocrinology', 'General Hospital');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D019', 'Patricia Hall', 55, 'Female', 'Pulmonology', 'St. John’s Mcal');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D020', 'William Young', 44, 'Male', 'Pulmonology', 'General Hospital');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D021', 'David Young', 26, 'Male', 'Cardiology', 'St. John’s Mcal');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D022', 'Mary Walker', 39, 'Female', 'Endocrinology', 'General Hospital');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D023', 'James Allen', 46, 'Male', 'Cardiology', 'City Hospital');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D024', 'Patricia Clark', 68, 'Female', 'Cardiology', 'City Hospital');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D025', 'Michael Clark', 58, 'Male', 'Pulmonology', 'Memorial Care');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D026', 'Patricia Young', 54, 'Female', 'Nephrology', 'General Hospital');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D027', 'William Perez', 62, 'Male', 'Endocrinology', 'Sunrise Hospital');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D028', 'Jennifer Perez', 46, 'Female', 'Nephrology', 'St. John’s Mcal');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D029', 'Michael Perez', 34, 'Male', 'Endocrinology', 'Memorial Care');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D030', 'David Clark', 62, 'Male', 'Cardiology', 'St. John’s Mcal');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D031', 'Michael Anderson', 40, 'Male', 'Cardiology', 'Sunrise Hospital');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D032', 'David Clark', 29, 'Male', 'Pulmonology', 'City Hospital');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D033', 'Patricia Young', 48, 'Female', 'Pulmonology', 'St. John’s Mcal');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D034', 'Linda Young', 69, 'Female', 'Nephrology', 'Sunrise Hospital');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D035', 'Michael Walker', 53, 'Male', 'Nephrology', 'Memorial Care');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D036', 'Linda Lee', 47, 'Female', 'Pulmonology', 'St. John’s Mcal');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D037', 'Patricia Allen', 26, 'Female', 'Pulmonology', 'Sunrise Hospital');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D038', 'James Clark', 64, 'Male', 'Nephrology', 'Memorial Care');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D039', 'Linda Rodriguez', 36, 'Male', 'Cardiology', 'General Hospital');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D040', 'James Walker', 59, 'Male', 'Pulmonology', 'General Hospital');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D041', 'Mary Clark', 31, 'Female', 'Hepatology', 'General Hospital');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D042', 'James Lopez', 55, 'Male', 'Nephrology', 'General Hospital');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D043', 'David Young', 45, 'Female', 'Endocrinology', 'Memorial Care');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D044', 'Mary Anderson', 49, 'Female', 'Nephrology', 'General Hospital');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D045', 'Linda Allen', 71, 'Female', 'Nephrology', 'St. John’s Mcal');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D046', 'Jennifer Lee', 42, 'Female', 'Endocrinology', 'Memorial Care');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D047', 'Elizabeth Rodriguez', 55, 'Female', 'Pulmonology', 'City Hospital');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D048', 'Robert Lee', 52, 'Male', 'Pulmonology', 'City Hospital');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D049', 'James Lopez', 59, 'Male', 'Cardiology', 'Sunrise Hospital');
INSERT INTO Transplant.Doctors (Doctor_ID, Doctor_Name, Doctor_Age, Doctor_Sex, Doctor_Specialization, Doctor_HospitalName) VALUES ('D050', 'Patricia Young', 63, 'Female', 'Hepatology', 'Sunrise Hospital');*/



/*CREATE TABLE Transplant.OPOs (
    OPO_ID VARCHAR(50) PRIMARY KEY,
    OPO_Name VARCHAR(150) NOT NULL,
    OPO_Location VARCHAR(255) NOT NULL,
    OPO_ContactInfo VARCHAR(50) UNIQUE NOT NULL,
    OPO_OrgansAvailable INT CHECK (OPO_OrgansAvailable >= 0) DEFAULT 0,
    OPO_DonorsRegistered INT CHECK (OPO_DonorsRegistered>= 0) DEFAULT 0
);

INSERT INTO Transplant.OPOs (OPO_ID, OPO_Name, OPO_Location, OPO_ContactInfo, OPO_OrgansAvailable, OPO_DonorsRegistered) VALUES
('OPO001', 'LifeLink', 'New York, NY', '+1-123-456-7890', 45, 320),
('OPO002', 'Gift of Life', 'Los Angeles, CA', '+1-234-567-8901', 30, 290),
('OPO003', 'OneLegacy', 'Chicago, IL', '+1-345-678-9012', 70, 150),
('OPO004', 'Donor Alliance', 'Houston, TX', '+1-456-789-0123', 25, 410),
('OPO005', 'Midwest Transplant Network', 'Phoenix, AZ', '+1-567-890-1234', 50, 330),
('OPO006', 'TransLife', 'Philadelphia, PA', '+1-678-901-2345', 90, 120),
('OPO007', 'New England Donor Services', 'San Antonio, TX', '+1-789-012-3456', 65, 450),
('OPO008', 'Lifebanc', 'San Diego, CA', '+1-890-123-4567', 40, 310),
('OPO009', 'Mid-America Transplant', 'Dallas, TX', '+1-901-234-5678', 20, 200),
('OPO010', 'Kentucky Organ Donor Affiliates', 'San Jose, CA', '+1-012-345-6789', 55, 275),
('OPO011', 'LifeLink', 'New York, NY', '+1-123-456-7891', 50, 400),
('OPO012', 'Gift of Life', 'Los Angeles, CA', '+1-234-567-8902', 45, 275),
('OPO013', 'OneLegacy', 'Chicago, IL', '+1-345-678-9013', 65, 320),
('OPO014', 'Donor Alliance', 'Houston, TX', '+1-456-789-0124', 15, 140),
('OPO015', 'Midwest Transplant Network', 'Phoenix, AZ', '+1-567-890-1235', 30, 190),
('OPO016', 'TransLife', 'Philadelphia, PA', '+1-678-901-2346', 85, 450),
('OPO017', 'New England Donor Services', 'San Antonio, TX', '+1-789-012-3457', 50, 280),
('OPO018', 'Lifebanc', 'San Diego, CA', '+1-890-123-4568', 75, 360),
('OPO019', 'Mid-America Transplant', 'Dallas, TX', '+1-901-234-5679', 40, 315),
('OPO020', 'Kentucky Organ Donor Affiliates', 'San Jose, CA', '+1-012-345-6790', 60, 275),
('OPO021', 'LifeLink', 'New York, NY', '+1-123-456-7892', 35, 310),
('OPO022', 'Gift of Life', 'Los Angeles, CA', '+1-234-567-8903', 55, 420),
('OPO023', 'OneLegacy', 'Chicago, IL', '+1-345-678-9014', 80, 490),
('OPO024', 'Donor Alliance', 'Houston, TX', '+1-456-789-0125', 20, 180),
('OPO025', 'Midwest Transplant Network', 'Phoenix, AZ', '+1-567-890-1236', 60, 250),
('OPO026', 'TransLife', 'Philadelphia, PA', '+1-678-901-2347', 90, 480),
('OPO027', 'New England Donor Services', 'San Antonio, TX', '+1-789-012-3458', 45, 290),
('OPO028', 'Lifebanc', 'San Diego, CA', '+1-890-123-4569', 35, 250),
('OPO029', 'Mid-America Transplant', 'Dallas, TX', '+1-901-234-5670', 50, 300),
('OPO030', 'Kentucky Organ Donor Affiliates', 'San Jose, CA', '+1-012-345-6791', 70, 380),
('OPO031', 'LifeLink', 'New York, NY', '+1-123-456-7893', 25, 200),
('OPO032', 'Gift of Life', 'Los Angeles, CA', '+1-234-567-8904', 40, 320),
('OPO033', 'OneLegacy', 'Chicago, IL', '+1-345-678-9015', 85, 460),
('OPO034', 'Donor Alliance', 'Houston, TX', '+1-456-789-0126', 30, 220),
('OPO035', 'Midwest Transplant Network', 'Phoenix, AZ', '+1-567-890-1237', 75, 400),
('OPO036', 'TransLife', 'Philadelphia, PA', '+1-678-901-2348', 55, 320),
('OPO037', 'New England Donor Services', 'San Antonio, TX', '+1-789-012-3459', 60, 450),
('OPO038', 'Lifebanc', 'San Diego, CA', '+1-890-123-4570', 20, 150),
('OPO039', 'Mid-America Transplant', 'Dallas, TX', '+1-901-234-5671', 65, 350),
('OPO040', 'Kentucky Organ Donor Affiliates', 'San Jose, CA', '+1-012-345-6792', 50, 280),
('OPO041', 'LifeLink', 'New York, NY', '+1-123-456-7894', 40, 280),
('OPO042', 'Gift of Life', 'Los Angeles, CA', '+1-234-567-8905', 30, 210),
('OPO043', 'OneLegacy', 'Chicago, IL', '+1-345-678-9016', 55, 380),
('OPO044', 'Donor Alliance', 'Houston, TX', '+1-456-789-0127', 65, 410),
('OPO045', 'Midwest Transplant Network', 'Phoenix, AZ', '+1-567-890-1238', 35, 240),
('OPO046', 'TransLife', 'Philadelphia, PA', '+1-678-901-2349', 75, 430),
('OPO047', 'New England Donor Services', 'San Antonio, TX', '+1-789-012-3460', 45, 260),
('OPO048', 'Lifebanc', 'San Diego, CA', '+1-890-123-4571', 25, 180),
('OPO049', 'Mid-America Transplant', 'Dallas, TX', '+1-901-234-5672', 60, 350),
('OPO050', 'Kentucky Organ Donor Affiliates', 'San Jose, CA', '+1-012-345-6793', 50, 290);*/


/*CREATE TABLE Transplant.Donors (
    Donor_ID VARCHAR(50) PRIMARY KEY,
    Donor_Name VARCHAR(100) NOT NULL,
    Donor_Age INT CHECK (Donor_Age BETWEEN 0 AND 120) NOT NULL,
    Donor_Sex VARCHAR(10) CHECK (Donor_Sex IN ('Male', 'Female', 'Male')) NOT NULL,
    Donor_BloodGroup VARCHAR(5) CHECK (Donor_BloodGroup IN ('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-')) NOT NULL,
    Donor_DonorStatus VARCHAR(20) CHECK (Donor_DonorStatus IN ('Living', 'Deceased')) NOT NULL,
    Donor_CauseOfDeath VARCHAR(255) NULL,
    Donor_OrganDonated VARCHAR(100),
);

INSERT INTO Transplant.Donors (Donor_ID, Donor_Name, Donor_Age, Donor_Sex, Donor_BloodGroup, Donor_DonorStatus, Donor_CauseOfDeath, Donor_OrganDonated) VALUES
('DNR001', 'John Doe', 45, 'Male', 'A+', 'Living', NULL, 'Kidney'),
('DNR002', 'Jane Smith', 32, 'Female', 'B-', 'Living', NULL, 'Liver'),
('DNR003', 'Michael Brown', 58, 'Male', 'O+', 'Deceased', 'Car Accident', 'Heart'),
('DNR004', 'Emily Davis', 25, 'Female', 'AB-', 'Living', NULL, 'Pancreas'),
('DNR005', 'Chris Wilson', 40, 'Male', 'A-', 'Deceased', 'Head Trauma', 'Lung'),
('DNR006', 'Laura Johnson', 37, 'Female', 'B+', 'Living', NULL, 'Kidney'),
('DNR007', 'Robert Taylor', 60, 'Male', 'O-', 'Deceased', 'Stroke', 'Liver'),
('DNR008', 'Olivia Martinez', 29, 'Female', 'AB+', 'Living', NULL, 'Pancreas'),
('DNR009', 'James Lee', 50, 'Male', 'A+', 'Living', NULL, 'Lung'),
('DNR010', 'Sophia Harris', 45, 'Female', 'B-', 'Deceased', 'Car Accident', 'Heart'),
('DNR011', 'Daniel Clark', 27, 'Male', 'O+', 'Living', NULL, 'Kidney'),
('DNR012', 'Mia Lewis', 35, 'Female', 'AB-', 'Living', NULL, 'Liver'),
('DNR013', 'William Allen', 52, 'Male', 'B+', 'Deceased', 'Severe Trauma', 'Lung'),
('DNR014', 'Ava Walker', 31, 'Female', 'A-', 'Living', NULL, 'Pancreas'),
('DNR015', 'Ethan Hall', 42, 'Male', 'O-', 'Living', NULL, 'Pancreas'),
('DNR016', 'Isabella Young', 46, 'Female', 'AB+', 'Living', NULL, 'Kidney'),
('DNR017', 'Alexander King', 59, 'Male', 'A+', 'Deceased', 'Brain Hemorrhage', 'Liver'),
('DNR018', 'Charlotte Wright', 30, 'Female', 'B-', 'Living', NULL, 'Pancreas'),
('DNR019', 'Benjamin Green', 34, 'Male', 'O+', 'Living', NULL, 'Lung'),
('DNR020', 'Amelia Adams', 50, 'Female', 'AB-', 'Deceased', 'Car Accident', 'Heart'),
('DNR021', 'Mason Nelson', 48, 'Male', 'A-', 'Living', NULL, 'Kidney'),
('DNR022', 'Harper Baker', 33, 'Female', 'B+', 'Living', NULL, 'Liver'),
('DNR023', 'Logan Carter', 61, 'Male', 'O-', 'Deceased', 'Head Injury', 'Lung'),
('DNR024', 'Evelyn Perez', 28, 'Female', 'AB+', 'Living', NULL, 'Pancreas'),
('DNR025', 'Lucas Collins', 40, 'Male', 'A+', 'Living', NULL, 'Kidney'),
('DNR026', 'Liam Stewart', 55, 'Male', 'B-', 'Deceased', 'Cardiac Arrest', 'Kidney'),
('DNR027', 'Emma Turner', 36, 'Female', 'O+', 'Living', NULL, 'Liver'),
('DNR028', 'Noah Parker', 47, 'Male', 'AB-', 'Living', NULL, 'Pancreas'),
('DNR029', 'Avery Hughes', 41, 'Female', 'A-', 'Living', NULL, 'Lung'),
('DNR030', 'Jacob Morris', 62, 'Male', 'B+', 'Deceased', 'Stroke', 'Heart'),
('DNR031', 'Ella Rogers', 32, 'Female', 'O-', 'Living', NULL, 'Kidney'),
('DNR032', 'Michael Red', 49, 'Male', 'A+', 'Deceased', 'Severe Injury', 'Liver'),
('DNR033', 'Grace Cook', 29, 'Female', 'B-', 'Living', NULL, 'Pancreas'),
('DNR034', 'Henry Bell', 44, 'Male', 'O+', 'Living', NULL, 'Lung'),
('DNR035', 'Abigail Cooper', 51, 'Female', 'AB-', 'Deceased', 'Brain Injury', 'Heart'),
('DNR036', 'Sebastian Bailey', 46, 'Male', 'A-', 'Living', NULL, 'Kidney'),
('DNR037', 'Madison Murphy', 37, 'Female', 'B+', 'Living', NULL, 'Liver'),
('DNR038', 'Matthew Sanders', 57, 'Male', 'O-', 'Deceased', 'Trauma', 'Lung'),
('DNR039', 'Sofia Bryant', 34, 'Female', 'AB+', 'Living', NULL, 'Pancreas'),
('DNR040', 'James Griffin', 43, 'Male', 'A+', 'Living', NULL, 'Kidney'),
('DNR041', 'Victoria Russell', 50, 'Female', 'B-', 'Deceased', 'Stroke', 'Kidney'),
('DNR042', 'Alexander Cox', 30, 'Male', 'O+', 'Living', NULL, 'Liver'),
('DNR043', 'Lily Ward', 33, 'Female', 'AB-', 'Living', NULL, 'Pancreas'),
('DNR044', 'Jack Brooks', 60, 'Male', 'A-', 'Deceased', 'Head Injury', 'Lung'),
('DNR045', 'Natalie Fisher', 38, 'Female', 'B+', 'Living', NULL, 'Kidney'),
('DNR046', 'Samuel Price', 41, 'Male', 'O-', 'Living', NULL, 'Kidney'),
('DNR047', 'Chloe Howard', 35, 'Female', 'A+', 'Living', NULL, 'Liver'),
('DNR048', 'Daniel Ward', 55, 'Male', 'B-', 'Deceased', 'Severe Injury', 'Pancreas'),
('DNR049', 'Hannah Ross', 48, 'Female', 'O+', 'Living', NULL, 'Lung'),
('DNR050', 'Benjamin Foster', 43, 'Male', 'AB-', 'Living', NULL, 'Kidney');*/




/*CREATE TABLE Transplant.Organs (
    Organ_ID VARCHAR(50) PRIMARY KEY,
    Organ_Name VARCHAR(100) NOT NULL,
    OPO_ID VARCHAR(50) NOT NULL,
    FOREIGN KEY (OPO_ID) REFERENCES Transplant.OPOs(OPO_ID) ON DELETE CASCADE,
    FOREIGN KEY (Donor_ID) REFERENCES Transplant.Donors(Donor_ID) ON DELETE CASCADE,
    Donor_ID VARCHAR(50) NOT NULL,
    Organ_Lifespan VARCHAR(50) NOT NULL,
);


INSERT INTO Transplant.Organs (Organ_ID, Organ_Name, Donor_ID, OPO_ID, Organ_Lifespan) VALUES
('ORG001', 'Kidney', 'DNR001', 'OPO001', '24 hours'),
('ORG002', 'Liver', 'DNR002', 'OPO002', '8 hours'),
('ORG003', 'Heart', 'DNR003', 'OPO003', '4 hours'),
('ORG004', 'Pancreas', 'DNR004', 'OPO004', '5 hours'),
('ORG005', 'Lung', 'DNR005', 'OPO005', '6 hours'),
('ORG006', 'Kidney', 'DNR006', 'OPO001', '24 hours'),
('ORG007', 'Liver', 'DNR007', 'OPO002', '8 hours'),
('ORG008', 'Pancreas', 'DNR008', 'OPO004', '5 hours'),
('ORG009', 'Lung', 'DNR009', 'OPO005', '6 hours'),
('ORG010', 'Heart', 'DNR010', 'OPO003', '4 hours'),
('ORG011', 'Kidney', 'DNR011', 'OPO001', '24 hours'),
('ORG012', 'Liver', 'DNR012', 'OPO002', '8 hours'),
('ORG013', 'Lung', 'DNR013', 'OPO005', '6 hours'),
('ORG014', 'Pancreas', 'DNR014', 'OPO004', '5 hours'),
('ORG015', 'Pancreas', 'DNR015', 'OPO003', '5 hours'),
('ORG016', 'Kidney', 'DNR016', 'OPO001', '24 hours'),
('ORG017', 'Liver', 'DNR017', 'OPO002', '8 hours'),
('ORG018', 'Pancreas', 'DNR018', 'OPO004', '5 hours'),
('ORG019', 'Lung', 'DNR019', 'OPO005', '6 hours'),
('ORG020', 'Heart', 'DNR020', 'OPO003', '4 hours'),
('ORG021', 'Kidney', 'DNR021', 'OPO001', '24 hours'),
('ORG022', 'Liver', 'DNR022', 'OPO002', '8 hours'),
('ORG023', 'Lung', 'DNR023', 'OPO005', '6 hours'),
('ORG024', 'Pancreas', 'DNR024', 'OPO004', '5 hours'),
('ORG025', 'Kidney', 'DNR025', 'OPO003', '24 hours'),
('ORG026', 'Kidney', 'DNR026', 'OPO001', '24 hours'),
('ORG027', 'Liver', 'DNR027', 'OPO002', '8 hours'),
('ORG028', 'Pancreas', 'DNR028', 'OPO004', '5 hours'),
('ORG029', 'Lung', 'DNR029', 'OPO005', '6 hours'),
('ORG030', 'Heart', 'DNR030', 'OPO003', '4 hours'),
('ORG031', 'Kidney', 'DNR031', 'OPO001', '24 hours'),
('ORG032', 'Liver', 'DNR032', 'OPO002', '8 hours'),
('ORG033', 'Pancreas', 'DNR033', 'OPO004', '5 hours'),
('ORG034', 'Lung', 'DNR034', 'OPO005', '6 hours'),
('ORG035', 'Heart', 'DNR035', 'OPO003', '4 hours'),
('ORG036', 'Kidney', 'DNR036', 'OPO001', '24 hours'),
('ORG037', 'Liver', 'DNR037', 'OPO002', '8 hours'),
('ORG038', 'Lung', 'DNR038', 'OPO004', '6 hours'),
('ORG039', 'Pancreas', 'DNR039', 'OPO005', '5 hours'),
('ORG040', 'Kidney', 'DNR040', 'OPO003', '24 hours'),
('ORG041', 'Kidney', 'DNR041', 'OPO001', '24 hours'),
('ORG042', 'Liver', 'DNR042', 'OPO002', '8 hours'),
('ORG043', 'Pancreas', 'DNR043', 'OPO004', '5 hours'),
('ORG044', 'Lung', 'DNR044', 'OPO005', '6 hours'),
('ORG045', 'Kidney', 'DNR045', 'OPO001', '24 hours'),
('ORG046', 'Kidney', 'DNR046', 'OPO003', '24 hours'),
('ORG047', 'Liver', 'DNR047', 'OPO002', '8 hours'),
('ORG048', 'Pancreas', 'DNR048', 'OPO004', '5 hours'),
('ORG049', 'Lung', 'DNR049', 'OPO005', '6 hours'),
('ORG050', 'Kidney', 'DNR050', 'OPO003', '24 hours');*/



/*CREATE TABLE Transplant.Transplants (
    Transplant_ID VARCHAR(50) PRIMARY KEY,
    Patient_ID VARCHAR(50) NOT NULL,
    Doctor_ID VARCHAR(50) NOT NULL,
    Organ_ID VARCHAR(50) NOT NULL,
    FOREIGN KEY (Patient_ID) REFERENCES Transplant.Patients(Patient_ID) ON DELETE CASCADE,
    FOREIGN KEY (Doctor_ID) REFERENCES Transplant.Doctors(Doctor_ID) ON DELETE CASCADE,
    FOREIGN KEY (Organ_ID) REFERENCES Transplant.Organs(Organ_ID) ON DELETE CASCADE,
);



INSERT INTO Transplant.Transplants (Transplant_ID, Patient_ID, Doctor_ID, Organ_ID) VALUES
('TRANS001', 'P001', 'D001', 'ORG001'),
('TRANS002', 'P002', 'D002', 'ORG002'),
('TRANS003', 'P003', 'D003', 'ORG003'),
('TRANS004', 'P004', 'D004', 'ORG004'),
('TRANS005', 'P005', 'D005', 'ORG005'),
('TRANS006', 'P006', 'D006', 'ORG006'),
('TRANS007', 'P007', 'D007', 'ORG007'),
('TRANS008', 'P008', 'D008', 'ORG008'),
('TRANS009', 'P009', 'D009', 'ORG009'),
('TRANS010', 'P010', 'D010', 'ORG010'),
('TRANS011', 'P011', 'D011', 'ORG011'),
('TRANS012', 'P012', 'D012', 'ORG012'),
('TRANS013', 'P013', 'D013', 'ORG013'),
('TRANS014', 'P014', 'D014', 'ORG014'),
('TRANS015', 'P015', 'D015', 'ORG015'),
('TRANS016', 'P016', 'D016', 'ORG016'),
('TRANS017', 'P017', 'D017', 'ORG017'),
('TRANS018', 'P018', 'D018', 'ORG018'),
('TRANS019', 'P019', 'D019', 'ORG019'),
('TRANS020', 'P020', 'D020', 'ORG020'),
('TRANS021', 'P021', 'D021', 'ORG021'),
('TRANS022', 'P022', 'D022', 'ORG022'),
('TRANS023', 'P023', 'D023', 'ORG023'),
('TRANS024', 'P024', 'D024', 'ORG024'),
('TRANS025', 'P025', 'D025', 'ORG025'),
('TRANS026', 'P026', 'D026', 'ORG026'),
('TRANS027', 'P027', 'D027', 'ORG027'),
('TRANS028', 'P028', 'D028', 'ORG028'),
('TRANS029', 'P029', 'D029', 'ORG029'),
('TRANS030', 'P030', 'D030', 'ORG030'),
('TRANS031', 'P031', 'D031', 'ORG031'),
('TRANS032', 'P032', 'D032', 'ORG032'),
('TRANS033', 'P033', 'D033', 'ORG033'),
('TRANS034', 'P034', 'D034', 'ORG034'),
('TRANS035', 'P035', 'D035', 'ORG035'),
('TRANS036', 'P036', 'D036', 'ORG036'),
('TRANS037', 'P037', 'D037', 'ORG037'),
('TRANS038', 'P038', 'D038', 'ORG038'),
('TRANS039', 'P039', 'D039', 'ORG039'),
('TRANS040', 'P040', 'D040', 'ORG040'),
('TRANS041', 'P041', 'D041', 'ORG041'),
('TRANS042', 'P042', 'D042', 'ORG042'),
('TRANS043', 'P043', 'D043', 'ORG043'),
('TRANS044', 'P044', 'D044', 'ORG044'),
('TRANS045', 'P045', 'D045', 'ORG045'),
('TRANS046', 'P046', 'D046', 'ORG046'),
('TRANS047', 'P047', 'D047', 'ORG047'),
('TRANS048', 'P048', 'D048', 'ORG048'),
('TRANS049', 'P049', 'D049', 'ORG049'),
('TRANS050', 'P050', 'D050', 'ORG050');*/


/*CREATE TABLE Transplant.RegulatoryBody (
    Reg_MemberID VARCHAR(50) PRIMARY KEY,
    Reg_MemberName VARCHAR(100) NOT NULL,
    Reg_MemberContactEmail VARCHAR(255) UNIQUE NOT NULL,
);

INSERT INTO Transplant.RegulatoryBody (Reg_MemberID, Reg_MemberName, Reg_MemberContactEmail)
VALUES
('R001', 'Emily Harrison', 'emily.harrison@regbody.org'),
('R002', 'Michael Carter', 'michael.carter@regbody.org'),
('R003', 'Olivia Bennett', 'olivia.bennett@regbody.org'),
('R004', 'William Scott', 'william.scott@regbody.org'),
('R005', 'Ava Collins', 'ava.collins@regbody.org'),
('R006', 'James Parker', 'james.parker@regbody.org'),
('R007', 'Sophia Turner', 'sophia.turner@regbody.org'),
('R008', 'Benjamin Evans', 'benjamin.evans@regbody.org'),
('R009', 'Mia Robinson', 'mia.robinson@regbody.org'),
('R010', 'Ethan Harris', 'ethan.harris@regbody.org'),
('R011', 'Charlotte White', 'charlotte.white@regbody.org'),
('R012', 'Alexander Lewis', 'alexander.lewis@regbody.org'),
('R013', 'Amelia Hall', 'amelia.hall@regbody.org'),
('R014', 'Daniel Allen', 'daniel.allen@regbody.org'),
('R015', 'Isabella Moore', 'isabella.moore@regbody.org'),
('R016', 'Henry King', 'henry.king@regbody.org'),
('R017', 'Harper Wright', 'harper.wright@regbody.org'),
('R018', 'Jackson Adams', 'jackson.adams@regbody.org'),
('R019', 'Abigail Clark', 'abigail.clark@regbody.org'),
('R020', 'Matthew Walker', 'matthew.walker@regbody.org'),
('R021', 'Ella Baker', 'ella.baker@regbody.org'),
('R022', 'Lucas Mitchell', 'lucas.mitchell@regbody.org'),
('R023', 'Lily Perez', 'lily.perez@regbody.org'),
('R024', 'David Roberts', 'david.roberts@regbody.org'),
('R025', 'Grace Green', 'grace.green@regbody.org'),
('R026', 'Samuel Thompson', 'samuel.thompson@regbody.org'),
('R027', 'Aria Carter', 'aria.carter@regbody.org'),
('R028', 'Joseph Johnson', 'joseph.johnson@regbody.org'),
('R029', 'Scarlett Lewis', 'scarlett.lewis@regbody.org'),
('R030', 'Andrew Brown', 'andrew.brown@regbody.org'),
('R031', 'Hannah Martinez', 'hannah.martinez@regbody.org'),
('R032', 'Christopher Lee', 'christopher.lee@regbody.org'),
('R033', 'Madison Walker', 'madison.walker@regbody.org'),
('R034', 'Nathan Young', 'nathan.young@regbody.org'),
('R035', 'Zoey Harris', 'zoey.harris@regbody.org'),
('R036', 'Logan Nelson', 'logan.nelson@regbody.org'),
('R037', 'Evelyn Torres', 'evelyn.torres@regbody.org'),
('R038', 'Dylan Ramirez', 'dylan.ramirez@regbody.org'),
('R039', 'Stella Cooper', 'stella.cooper@regbody.org'),
('R040', 'Caleb Wilson', 'caleb.wilson@regbody.org'),
('R041', 'Mila Gray', 'mila.gray@regbody.org'),
('R042', 'Gavin Sanchez', 'gavin.sanchez@regbody.org'),
('R043', 'Nora Peterson', 'nora.peterson@regbody.org'),
('R044', 'Levi Gonzalez', 'levi.gonzalez@regbody.org'),
('R045', 'Chloe Jenkins', 'chloe.jenkins@regbody.org'),
('R046', 'Wyatt Murphy', 'wyatt.murphy@regbody.org'),
('R047', 'Penelope Stewart', 'penelope.stewart@regbody.org'),
('R048', 'Sebastian Bell', 'sebastian.bell@regbody.org'),
('R049', 'Violet Reed', 'violet.reed@regbody.org'),
('R050', 'Carter Hughes', 'carter.hughes@regbody.org');*/




