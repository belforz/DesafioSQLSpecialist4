-- Insert into clients table
INSERT INTO clients (idPayment, Fname, Minit, Lname, Address, telefone, nascimento, email)
VALUES
  (1, 'John', 'D', 'Doe', '123 Main St', '1234567890', '1990-01-01', 'john@example.com'),
  (2, 'Jane', 'M', 'Smith', '456 Elm St', '9876543210', '1995-05-05', 'jane@example.com'),
  (3, 'Mike', 'R', 'Johnson', '789 Oak St', '5555555555', '1980-10-15', 'mike@example.com'),
  (4, 'Sarah', 'K', 'Williams', '321 Maple St', '7777777777', '1992-12-31', 'sarah@example.com'),
  (5, 'Emily', 'L', 'Brown', '987 Pine St', '9999999999', '2000-06-20', 'emily@example.com'),
  (6, 'David', 'S', 'Davis', '654 Cedar St', '1111111111', '1985-08-08', 'david@example.com'),
  (7, 'Lisa', 'A', 'Taylor', '246 Birch St', '2222222222', '1975-03-12', 'lisa@example.com'),
  (8, 'Brian', 'P', 'Anderson', '135 Walnut St', '3333333333', '1998-09-25', 'brian@example.com'),
  (9, 'Karen', 'T', 'Miller', '876 Oak St', '4444444444', '1993-11-05', 'karen@example.com'),
  (10, 'Jessica', 'K', 'Wilson', '753 Elm St', '6666666666', '1991-07-17', 'jessica@example.com');
  
  INSERT INTO clients (idPayment, Fname, Minit, Lname, Address, telefone, nascimento, email)
VALUES
  (11, 'ACME Corporation', NULL, NULL, '123 Main St', '1234567890', '1990-01-01', 'acme@example.com'),
  (12, 'XYZ Industries', NULL, NULL, '456 Elm St', '9876543210', '1995-05-05', 'xyz@example.com'),
  (13, 'ABC Company', NULL, NULL, '789 Oak St', '5555555555', '1980-10-15', 'abc@example.com'),
  (14, '123 Enterprises', NULL, NULL, '321 Maple St', '7777777777', '1992-12-31', '123@example.com'),
  (15, 'Global Solutions', NULL, NULL, '987 Pine St', '9999999999', '2000-06-20', 'global@example.com'),
  (16, 'Tech Innovators', NULL, NULL, '654 Cedar St', '1111111111', '1985-08-08', 'tech@example.com'),
  (17, 'Quality Products', NULL, NULL, '246 Birch St', '2222222222', '1975-03-12', 'quality@example.com'),
  (18, 'Innovation Inc.', NULL, NULL, '135 Walnut St', '3333333333', '1998-09-25', 'innovation@example.com'),
  (19, 'Best Services', NULL, NULL, '876 Oak St', '4444444444', '1993-11-05', 'bestservices@example.com'),
  (20, 'Global Enterprises', NULL, NULL, '753 Elm St', '6666666666', '1991-07-17', 'globalenterprises@example.com');


-- Insert into clients_fisico table
INSERT INTO clients_fisico (idClientFisico, CPF, idCFisico)
VALUES
  (1, '12345678901', 1),
  (2, '23456789012', 2),
  (3, '34567890123', 3),
  (4, '45678901234', 4),
  (5, '56789012345', 5),
  (6, '67890123456', 6),
  (7, '78901234567', 7),
  (8, '89012345678', 8),
  (9, '90123456789', 9),
  (10, '01234567890', 10);



-- Insert into clients_juridico table
INSERT INTO clients_juridico (CNPJ, idCJuridico)
VALUES
  ('12345678000101', 11),
  ('23456789000112', 12),
  ('34567890000123', 13),
  ('45678901000134', 14),
  ('56789012000145', 15),
  ('67890123000156', 16),
  ('78901234000167', 17),
  ('89012345000178', 18),
  ('90123456000189', 19),
  ('01234567000190', 20);


-- Insert into vehicle table
INSERT INTO vehicle (Vname, Chassi, idType, color, year_vehicle, idClient, valor)
VALUES
  ('Honda Civic', '1234567890', 1, 'Black', '2020-01-01', 1, 25000.00),
  ('Toyota Camry', '0987654321', 2, 'Silver', '2018-05-01', 2, 30000.00),
  ('Ford Mustang', '5678901234', 1, 'Red', '2019-10-01', 3, 40000.00),
  ('Chevrolet Cruze', '4567890123', 2, 'White', '2017-07-01', 4, 20000.00),
  ('Nissan Altima', '7890123456', 1, 'Blue', '2021-03-01', 5, 35000.00),
  ('BMW 3 Series', '2345678901', 2, 'Gray', '2022-01-01', 6, 45000.00),
  ('Mercedes-Benz C-Class', '9012345678', 1, 'Silver', '2019-11-01', 7, 50000.00),
  ('Audi A4', '6789012345', 2, 'Black', '2020-09-01', 8, 40000.00),
  ('Volkswagen Jetta', '3456789012', 1, 'White', '2018-06-01', 9, 30000.00),
  ('Hyundai Sonata', '0123456789', 2, 'Red', '2017-04-01', 10, 25000.00),
  ('Ford F-150', '6789012345', 3, 'Blue', '2020-07-01', 11, 45000.00),
  ('Chevrolet Tahoe', '3456789012', 3, 'Silver', '2019-09-01', 12, 50000.00),
  ('Toyota Tundra', '0123456789', 3, 'Black', '2018-11-01', 13, 40000.00),
  ('Honda CR-V', '6789012345', 3, 'White', '2020-02-01', 14, 35000.00),
  ('GMC Sierra', '3456789012', 3, 'Red', '2019-04-01', 15, 45000.00),
  ('Jeep Wrangler', '0123456789', 3, 'Green', '2018-06-01', 16, 40000.00),
  ('Ford Ranger', '6789012345', 3, 'Gray', '2020-09-01', 17, 35000.00),
  ('Chevrolet Silverado', '3456789012', 3, 'Black', '2019-11-01', 18, 50000.00),
  ('Nissan Rogue', '0123456789', 3, 'Silver', '2018-02-01', 19, 40000.00),
  ('Toyota Tacoma', '6789012345', 3, 'White', '2020-04-01', 20, 45000.00);

  
  

-- Insert into VType table
INSERT INTO VType (VTypeName)
VALUES
  ('Sedan'),
  ('SUV'),
  ('Convertible');

-- Insert into payments table
INSERT INTO payments (idclient, idPayment, typePayment, limitAvailable)
VALUES
  (1, 1, 'Boleto', 1000.00),
  (2, 2, 'Cartão', 500.00),
  (3, 3, 'Dois cartões', 1500.00),
  (4, 4, 'Alimentação', 2000.00),
  (5, 5, 'Boleto', 800.00),
  (6, 6, 'Cartão', 1200.00),
  (7, 7, 'Boleto', 600.00),
  (8, 8, 'Dois cartões', 1800.00),
  (9, 9, 'Cartão', 1000.00),
  (10, 10, 'Alimentação', 2500.00);

-- Insert into Specialist table
INSERT INTO Specialist (idSWorker, function_worker, value_worker)
VALUES
  (1, 'Mechanic', 50.00),
  (2, 'Electrician', 60.00),
  (3, 'Auto Body Technician', 55.00),
  (4, 'Painter', 45.00),
  (5, 'Welder', 50.00),
  (6, 'Detailer', 40.00),
  (7, 'Tire Technician', 60.00),
  (8, 'HVAC Technician', 65.00),
  (9, 'Locksmith', 55.00),
  (10, 'General Contractor', 70.00);
  INSERT INTO Specialist (idSWorker, function_worker, value_worker)
VALUES
  (11, 'Mechanic', 50.00),
  (12, 'Auto Body Technician', 55.00),
  (13, 'Auto Electrician', 60.00),
  (14, 'Tire Technician', 45.00),
  (15, 'Alignt Specialist', 50.00),
  (16, 'Trission Specialist', 40.00),
  (17, 'Brapecialist', 60.00),
  (18, 'SuspensSpecialist', 65.00),
  (19, 'ExhauSpecialist', 55.00),
  (20, 'DiagnostTechnician', 70.00);

-- Insert into Worker table
INSERT INTO Worker (Wname, Address, idWSpecialist)
VALUES
  ('John Smith', '123 Main St', null),
  ('Jane Doe', '456 Elm St', null),
  ('Mike Johnson', '789 Oak St', null),
  ('Sarah Williams', '321 Maple St', null),
  ('Emily Brown', '987 Pine St', null),
  ('David Davis', '654 Cedar St', null),
  ('Lisa Taylor', '246 Birch St', null),
  ('Brian Anderson', '135 Walnut St', null),
  ('Karen Miller', '876 Oak St', null),
  ('Jessica Wilson', '753 Elm St', null);
  
  INSERT INTO Worker (Wname, Address, idWSpecialist)
VALUES
  ('Michael Thompson', '567 Birch St', 11),
  ('Amy Lewis', '908 Pine St', 12),
  ('Christopher Clark', '234 Maple St', 13),
  ('Melissa Rodriguez', '789 Cedar St', 14),
  ('Daniel Walker', '654 Elm St', 15),
  ('Amanda Hill', '246 Walnut St', 16),
  ('Robert Turner', '135 Oak St', 17),
  ('Stephanie Stewart', '876 Birch St', 18),
  ('Matthew Reed', '753 Pine St', 19),
  ('Jennifer Scott', '567 Maple St', 20);
  
  UPDATE Worker
SET idWSpecialist = (SELECT idSpecialist FROM Specialist WHERE Specialist.idSWorker = Worker.idWorker);

-- Insert into Supplier table
INSERT INTO Supplier (SocialName, CNPJ, contact)
VALUES
  ('Supplier A', '12345678901234', '1234567890'),
  ('Supplier B', '23456789012345', '2345678901'),
  ('Supplier C', '34567890123456', '3456789012'),
  ('Supplier D', '45678901234567', '4567890123'),
  ('Supplier E', '56789012345678', '5678901234'),
  ('Supplier F', '67890123456789', '6789012345'),
  ('Supplier G', '78901234567890', '7890123456'),
  ('Supplier H', '89012345678901', '8901234567'),
  ('Supplier I', '90123456789012', '9012345678'),
  ('Supplier J', '01234567890123', '0123456789');

-- Insert into Tool table
INSERT INTO Tool (Tname, Tcategory, Price)
VALUES
  ('Hammer', 'Hand Tools', 10.00),
  ('Screwdriver', 'Hand Tools', 5.00),
  ('Wrench', 'Hand Tools', 8.00),
  ('Pliers', 'Hand Tools', 7.00),
  ('Drill', 'Power Tools', 50.00),
  ('Circular Saw', 'Power Tools', 80.00),
  ('Sander', 'Power Tools', 60.00),
  ('Jigsaw', 'Power Tools', 70.00),
  ('Ladder', 'Equipment', 40.00),
  ('Wheelbarrow', 'Equipment', 30.00);

-- Insert into toolStorage table
INSERT INTO toolStorage (storageLocation, quantity, idTsStorage)
VALUES
  ('Tool Storage A', 20, 1),
  ('Tool Storage B', 15, 2),
  ('Tool Storage C', 25, 3),
  ('Tool Storage D', 18, 4),
  ('Tool Storage E', 12, 5),
  ('Tool Storage F', 30, 6),
  ('Tool Storage G', 22, 7),
  ('Tool Storage H', 17, 8),
  ('Tool Storage I', 24, 9),
  ('Tool Storage J', 19, 10);

-- Insert into OS table
INSERT INTO OS (idOsClient, idOsVehicle, idOsTool, idOsWorker, OS_Status, OS_Description, OS_Start_Date, OS_Finish_Date)
VALUES
  (1, 1, 1, null, 'Em processamento', 'Repairing engine issues', '2023-01-01', '2023-01-05'),
  (2, 2, 2, null, 'Em processamento', 'Electrical system repair', '2023-02-01', '2023-02-05'),
  (3, 3, 3, null, 'Em processamento', 'Body repair and painting', '2023-03-01', '2023-03-05'),
  (4, 4, 4, null, 'Em processamento', 'Interior painting and refinishing', '2023-04-01', '2023-04-05'),
  (5, 5, 5, null, 'Em processamento', 'Welding and fabrication work', '2023-05-01', '2023-05-05'),
  (6, 6, 6, null, 'Em processamento', 'Vehicle detailing and cleaning', '2023-06-01', '2023-06-05'),
  (7, 7, 7, null, 'Em processamento', 'Tire replacement and repairs', '2023-07-01', '2023-07-05'),
  (8, 8, 8, null, 'Em processamento', 'HVAC system diagnostics and repairs', '2023-08-01', '2023-08-05'),
  (9, 9, 9, null, 'Em processamento', 'Lock repair and replacement', '2023-09-01', '2023-09-05'),
  (10, 10, 10, null, 'Em processamento', 'General construction and renovation work', '2023-10-01', '2023-10-05'),
  (11, 11, 1, null, 'Em processamento', 'Engine diagnostic and repairs', '2023-11-01', '2023-11-05'),
  (12, 12, 2, null, 'Em processamento', 'Suspension system inspection and repairs', '2023-12-01', '2023-12-05'),
  (13, 13, 3, null, 'Em processamento', 'Brake system maintenance and repairs', '2024-01-01', '2024-01-05'),
  (14, 14, 4, null, 'Em processamento', 'Transmission service and repairs', '2024-02-01', '2024-02-05'),
  (15, 15, 5, null, 'Em processamento', 'Exhaust system repairs and upgrades', '2024-03-01', '2024-03-05'),
  (16, 16, 6, null, 'Em processamento', 'Steering system repairs and alignments', '2024-04-01', '2024-04-05'),
  (17, 17, 7, null, 'Em processamento', 'Air conditioning system maintenance and repairs', '2024-05-01', '2024-05-05'),
  (18, 18, 8, null, 'Em processamento', 'Fuel system diagnostics and repairs', '2024-06-01', '2024-06-05'),
  (19, 19, 9, null, 'Em processamento', 'Electrical system diagnostics and repairs', '2024-07-01', '2024-07-05'),
  (20, 20, 10, null, 'Em processamento', 'Interior and exterior detailing services', '2024-08-01', '2024-08-05');




-- Insert into OS_Tool table

-- Insert into OS_Tool table
INSERT INTO OS_Tool (idOS, idTool)
VALUES
  (141, 1),
  (142, 2),
  (143, 3),
  (144, 4),
  (145, 5),
  (146, 6),
  (147, 7),
  (148, 8),
  (149, 9),
  (150, 10),
  (151, 1),
  (152, 2),
  (153, 3),
  (154, 4),
  (155, 5),
  (156, 6),
  (157, 7),
  (158, 8),
  (159, 9),
  (160, 10);

-- Insert into Vehicle_Clients table
INSERT INTO Vehicle_Clients (idClient, idVehicle, quantity)
VALUES
  (1, 1, 1),
  (2, 2, 1),
  (3, 3, 1),
  (4, 4, 1),
  (5, 5, 1),
  (6, 6, 1),
  (7, 7, 1),
  (8, 8, 1),
  (9, 9, 1),
  (10, 10, 1);

-- Insert into SupplierTools table
INSERT INTO SupplierTools (idTsupplier, idTtool, quantity)
VALUES
  (1, 1, 10),
  (2, 2, 8),
  (3, 3, 12),
  (4, 4, 15),
  (5, 5, 20),
  (6, 6, 18),
  (7, 7, 25),
  (8, 8, 22),
  (9, 9, 30),
  (10, 10, 28);
