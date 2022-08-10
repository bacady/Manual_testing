create database personaldetails;

use personaldetails;

CREATE TABLE fullName (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(30) NOT NULL,
    middleName VARCHAR(30),
    lastName VARCHAR(30) NOT NULL
);

desc fullName;

insert into fullName (firstName, middleName, lastName)
 values ("Dorin", "Andrei", "Petrescu"),
 ("Timotel", "Dorin", "Rebegea"),
 ("Daniel", "Stefan", "Florea"),
 ("Cristian", "Alexandru", "Vasiliu"),
 ("Corina", "Liliana", "Pricop"),
 ("Dumitra", "Mihaela", "Cislariu"),
 ("Razvan", "Mihai", "Rascanu"),
 ("Mihaela", "Irina", "Tirnovan");
 
 update fullName set firstName = "Cristian" where id = 1;
 
 select * from fullName;
 delete from fullName;
 
 drop table fullName;
 
 alter table fullName add column employeeId varchar(10);
 
 alter table fullName drop column employeeId;
 
 alter table fullName add column otherId varchar(30);
 
 alter table fullName drop column otherId;
 
 CREATE TABLE identification (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    employeeId VARCHAR(30),
    otherId VARCHAR(30),
    drvLicNo VARCHAR(30),
    licExpDate DATE,
    fullNameId INT NOT NULL,
    FOREIGN KEY (fullNameId)
        REFERENCES fullName (id)
);
 
 desc identification;
 
 select * from identification;
 
 insert into identification (employeeId, otherId, drvLicNo, licExpDate, fullNameId)
 values ("employee1", "100", "IS000111", "2025-03-21", 1),
 ("employee3", "123", "BV000783", "2023-04-13", 2),
 ("employee7", "489", "SV000888", "2024-12-13", 3),
 ("employee12", "555", "CV000578", "2024-02-24", 4),
 ("employee17", "444", "B0009339", "2023-01-28", 5),
 ("employee23", "43535", "BV000999", "2026-08-25", 6),
 ("employee44", "6464", "SV000783", "2027-07-13", 7),
 ("employee56", "324235", "TL007579", "2026-06-04", 8);
 
 
 delete from identification;
 
 CREATE TABLE personalDetails (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    gender VARCHAR(10),
    maritalStatus VARCHAR(10),
    nationality VARCHAR(30),
    dateOfBirth DATE,
    fullNameId INT NOT NULL,
    FOREIGN KEY (fullNameId)
        REFERENCES fullName (id)
);
 
 insert into personalDetails (gender, maritalStatus, nationality, dateOfBirth, fullNameId)
 values ("male", "Married", "Romanian", "1974-05-22", 1),
 ("male", "Single", "Romanian", "1965-04-14", 2),
 ("male", "Married", "Romanian", "1973-08-26", 3),
 ("male", "Single", "Romanian", "1968-02-22", 4),
 ("female", "Married", "Romanian", "1970-09-01", 5),
 ("female", "Married", "Romanian", "1970-05-22", 6),
 ("male", "Married", "Romanian", "1985-10-14", 7),
 ("female", "Married", "Romanian", "1965-03-01", 8);
 
 select * from personalDetails;
 
 drop table personalDetails;
 
 delete from personalDetails;
  
CREATE TABLE otherDetails (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nickName VARCHAR(30),
    smoker BOOLEAN,
    militaryService VARCHAR(30),
    fullNameId INT NOT NULL,
    FOREIGN KEY (fullNameId)
        REFERENCES fullName (id)
);

desc otherDetails;

alter table otherDetails modify smoker varchar(5);

insert into otherDetails (nickName, smoker, militaryService, fullNameId)
values ("Dodo", "Yes", "rezervist", 1),
("Tim", "No", "rezervist", 2),
("Flori", "No", "activ", 3),
("", "Yes", "rezervist", 4),
("", "Yes", "other", 5),
("", "Yes", "other", 6),
("RR", "No", "activ", 7),
("", "No", "other", 8);

delete from otherDetails;

select * from otherDetails;

delete from otherDetails;

drop table otherdetails;

CREATE TABLE customFields (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    bloodType VARCHAR(5),
    fullNameId INT NOT NULL,
    FOREIGN KEY (fullNameId)
        REFERENCES fullName (id)
);

desc customFields;

insert into customFields (bloodType, fullNameId)
values ("A+", 1),
("AB+", 2),
("O-", 3),
("B+", 4),
("A-", 5),
("A+", 6),
("AB-", 7),
("O+", 8);

select * from customFields;

select fullName.firstName as First_Name, fullName.LastName as Last_Name, id.drvLicNo as Driver_License_No, id.licExpDate as License_Expiry_Date 
from fullName inner join identification id on fullName.id = id.fullNameId
where fullNameId = 4;

select fullName.firstName as First_Name, fullName.lastName as Last_Name, pd.gender as Gender, pd.maritalStatus as Marital_Status,
 oth.militaryService as Military_Service, cf.bloodType as Blood_Type
 from (((fullName
 inner join personalDetails pd on fullName.id = pd.id)
 inner join otherDetails oth on fullName.id = oth.id)
 inner join customFields cf on fullName.id = cf.id)
 where cf.bloodType = "A+";
 
 
 
 
 
 