-- Create Blood Types Table
CREATE TABLE BloodTypes (
  BloodTypeID INT PRIMARY KEY,
  BloodType VARCHAR(10) NOT NULL
);

-- Insert Sample Blood Types
INSERT INTO BloodTypes (BloodTypeID, BloodType)
VALUES
  (1, 'A+'),
  (2, 'A-'),
  (3, 'B+'),
  (4, 'B-'),
  (5, 'AB+'),
  (6, 'AB-'),
  (7, 'O+'),
  (8, 'O-');

-- Create Donors Table
CREATE TABLE Donors (
  DonorID INT PRIMARY KEY AUTO_INCREMENT,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  BloodTypeID INT,
  Gender VARCHAR(10) NOT NULL,
  Age INT,
  Phone VARCHAR(20),
  Email VARCHAR(100),
  Address VARCHAR(100),
  RegistrationDate DATE,
  LastDonationDate DATE,
  FOREIGN KEY (BloodTypeID) REFERENCES BloodTypes(BloodTypeID)
);

-- Insert Sample Donors
INSERT INTO Donors (FirstName, LastName, BloodTypeID, Gender, Age, Phone, Email, Address, RegistrationDate, LastDonationDate)
VALUES
  ('John', 'Doe', 1, 'Male', 30, '1234567890', 'johndoe@email.com', '123 ABC Street', '2023-05-01', '2023-06-01'),
  ('Jane', 'Smith', 3, 'Female', 25, '9876543210', 'janesmith@email.com', '456 XYZ Street', '2023-05-15', NULL),
  ('David', 'Johnson', 2, 'Male', 40, '5555555555', 'davidjohnson@email.com', '789 DEF Street', '2023-06-01', NULL);

-- Create Recipients Table
CREATE TABLE Recipients (
  RecipientID INT PRIMARY KEY AUTO_INCREMENT,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  BloodTypeID INT,
  Gender VARCHAR(10) NOT NULL,
  Age INT,
  Phone VARCHAR(20),
  Email VARCHAR(100),
  Address VARCHAR(100),
  RequestDate DATE,
  FOREIGN KEY (BloodTypeID) REFERENCES BloodTypes(BloodTypeID)
);

-- Insert Sample Recipients
INSERT INTO Recipients (FirstName, LastName, BloodTypeID, Gender, Age, Phone, Email, Address, RequestDate)
VALUES
  ('Sarah', 'Williams', 6, 'Female', 35, '4444444444', 'sarahwilliams@email.com', '789 GHI Street', '2023-06-05');

