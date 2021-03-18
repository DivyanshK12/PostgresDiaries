CREATE DATABASE DML;

DROP TABLE IF EXISTS Employees;

CREATE TABLE Employees 
(
Employee 	VARCHAR(10) PRIMARY KEY,
Salary 		INT 		NOT NULL
);

INSERT INTO Employees
(
Employee, Salary
)
VALUES 	('Chris', 45000),
		('Sally', 58000),
		('Jack', 49000);

DROP TABLE IF EXISTS Orders;	

CREATE TABLE Orders
(
OrderID 	INT 		PRIMARY KEY 
						GENERATED ALWAYS AS IDENTITY,
Employee 	CHAR(10)	REFERENCES Employees(Employee)
						ON DELETE CASCADE
						ON UPDATE CASCADE,
OrderDate	DATE 		NOT NULL
						DEFAULT NOW()
);

INSERT INTO Orders (Employee, OrderDate)
VALUES 	('Sally', '2018-01-01'),
		('Jack', '2018-01-01'),
		('Sally', '2018-01-02'),
		('Chris', '2018-01-03');

SELECT 	* 
FROM 	Employees;

SELECT 	* 
FROM 	Orders;

-- END