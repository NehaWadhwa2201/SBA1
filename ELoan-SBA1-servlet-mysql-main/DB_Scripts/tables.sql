DROP DATABASE eloan;

CREATE DATABASE eloan;

USE eloan;

CREATE TABLE UserInfo(
USER_NAME VARCHAR (16) NOT NULL,
USER_FIRSTNAME VARCHAR (20),
USER_LASTNAME VARCHAR (20),
MOBILE VARCHAR(10),
EMAIL VARCHAR(60),
CITY VARCHAR(20),
STATE VARCHAR(20),
COUNTRY VARCHAR(20),
ZIPCODE INT(10),
CUSTOMER_ADDRESS VARCHAR(30),
DOB DATE,
PRIMARY KEY(USER_NAME)
);




CREATE TABLE USER
(USER_NAME VARCHAR(20) NOT NULL,
USER_PASSWORD VARCHAR(20),
PRIMARY KEY(USER_NAME),
FOREIGN KEY(USER_NAME) REFERENCES UserInfo(USER_NAME)
);




CREATE TABLE loan(
USER_NAME VARCHAR(10),
applno INT(11) PRIMARY KEY AUTO_INCREMENT, 
purpose VARCHAR(100), 
amtrequest int NOT NULL, 
doa Date, 
bstructure VARCHAR(12) NOT NULL, 
bindicator VARCHAR(20) NOT NULL,
address VARCHAR(50) NOT NULL, 
email VARCHAR(30) NOT NULL, 
mobile Long NOT NULL,
status VARCHAR(30),
FOREIGN KEY(USER_NAME) REFERENCES UserInfo(USER_NAME)
);



ALTER TABLE loan AUTO_INCREMENT=1000;



CREATE TABLE ApprovedLoan(
applno INT PRIMARY KEY, 
AmountSanctioned DOUBLE(10,2) NOT NULL, 
LoanTerm int NOT NULL, 
PaymentStartDate DATE NOT NULL, 
LoanClosureDate DATE NOT NULL,
InterestRate DOUBLE(4,2) NOT NULL,
TermPaymentAmount DOUBLE(10,2) NOT NULL,
MonthlyPayment DOUBLE(10,2) NOT NULL, 
FOREIGN KEY (applno) REFERENCES loan(applno)
);






