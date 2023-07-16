use oficina;
-- Select all records from the "clients" table
SELECT * FROM clients;
-- Nomes normais, sem empresas, com filtro
select concat(' - ',fname, Minit, lname) as full_name from clients where Minit is not null and Lname is not null;
-- Idade ou Data de Criação como int
SELECT distinct FLOOR(DATEDIFF(CURRENT_DATE, nascimento) / 365) AS age, fname as nome
FROM clients;
-- delete especifico
DELETE FROM clients
WHERE idClient >= 21 AND idClient <= 60;

SELECT fname AS company_names
FROM clients
WHERE Minit IS NULL or lname IS NULL;
-- left join
SELECT c1.idClient, c1.fname, c1.Minit, c1.lname, c2.fname AS parent_fname, c2.Minit AS parent_Minit, c2.lname AS parent_lname
FROM clients c1
LEFT JOIN clients c2 ON c1.idClient = c2.idClient AND c2.Minit IS NULL AND c2.lname IS NULL;

-- FULL JOIN
SELECT c1.idClient, c1.fname, c1.Minit, c1.lname, c2.fname AS parent_fname, c2.Minit AS parent_Minit, c2.lname AS parent_lname
FROM clients c1
LEFT JOIN clients c2 ON c1.idClient = c2.idClient
WHERE c1.Minit IS NULL AND c1.lname IS NULL
UNION
SELECT c1.idClient, c1.fname, c1.Minit, c1.lname, c2.fname AS parent_fname, c2.Minit AS parent_Minit, c2.lname AS parent_lname
FROM clients c1
RIGHT JOIN clients c2 ON c1.idClient = c2.idClient
WHERE c2.Minit IS NULL AND c2.lname IS NULL;


-- Select all records from the "clients_fisico" table
SELECT * FROM clients_fisico;
-- Nomes a partir de INNER JOIN.
SELECT fname as first_name, YEAR(CURRENT_DATE) - YEAR(nascimento) AS age FROM
clients c INNER JOIN clients_fisico cf on c.idClient = cf.idCFisico; 

-- Select all records from the "clients_juridico" table
SELECT * FROM clients_juridico;
SELECT fname as first_name, YEAR(CURRENT_DATE) - YEAR(nascimento) AS creation_date FROM
clients c INNER JOIN clients_juridico cj on c.idClient = cj.idCJuridico;

UPDATE clients_juridico
SET idClientJuridico = (SELECT idClient FROM clients WHERE clients.idClient = clients_juridico.idCJuridico)
WHERE idClientJuridico IS NULL;

-- Select all records from the "vehicle" table
SELECT * FROM vehicle;
-- Relação Cliente/Veiculo Cadastrado
SELECT fname as nome,  YEAR(CURRENT_DATE) - YEAR(nascimento) AS creation_date, Vname as Vehicle_name FROM
clients c INNER JOIN vehicle v ON c.idClient = v.idClient;

-- quantidade veiculos cadastrados
SELECT COUNT(*) AS quantity_vehicle
FROM vehicle;

-- Relação de Veiculos por ano
SELECT year_vehicle as year_questioned, count(*) as quantity_per_year from vehicle group by idVehicle;
select floor(avg(valor)) as average_price_int from vehicle;

UPDATE vehicle
SET idOs = (
    SELECT idOs
    FROM OS
    WHERE vehicle.idOs = OS.idOs
)
WHERE idOs IS NULL;

UPDATE vtype
SET idVvehicle = (
    SELECT idType
    FROM Vehicle
    WHERE vehicle.idtype = vtype.idVvehicle
)
WHERE idVvehicle IS NULL;

UPDATE Vtype
SET idVvehicle = (
    SELECT idType
    FROM Vehicle
    WHERE Vehicle.idVtype = Vtype.idVtype
)
WHERE idVvehicle IS NULL;



-- Select all records from the "VType" table
SELECT * FROM VType;

-- Select all records from the "payments" table
SELECT * FROM payments;
-- Filtro com condicão
SELECT * FROM payments WHERE typePayment = 'Cartão';
-- Por mostra ascedente ou descrescente
SELECT * FROM payments ORDER BY idclient ASC;
-- Usando having clause para limitar o total do limite do pagamento
SELECT * FROM payments ORDER BY idPayment DESC;
SELECT idclient, SUM(limitAvailable) AS totalLimit
FROM payments
GROUP BY idclient
HAVING totalLimit > 700;


-- Select all records from the "Specialist" table
SELECT * FROM Specialist;
-- Rotinas de Excel
SELECT COUNT(*) AS specialist_count FROM Specialist;
SELECT AVG(value_worker) AS average_value FROM Specialist;
SELECT MAX(value_worker) AS max_value FROM Specialist;
SELECT MIN(value_worker) AS min_value FROM Specialist;

-- Nested Query para achar o Worker especifico
SELECT idSpecialist, idSWorker, function_worker, value_worker
FROM Specialist
WHERE idSWorker IN (SELECT idWorker FROM Worker WHERE Address = '123 Main St');
-- Em vez de usar um Inner Join para saber a relação, usar Nested Query para extrair o nome do worker com o idSpecialist da tabela Specialist
SELECT Wname as name_worker, Address as adress_worker
FROM Worker where idWorker IN(SELECT idWSpecialist from Specialist s INNER JOIN Worker w on s.idSWorker = w.IdWSpecialist);
-- Nested query para saber a pintora
SELECT Wname as nome_worker
FROM Worker WHERE idWorker in(SELECT idSpecialist from Specialist where function_worker = 'Painter');
-- Nested query para saber quem é o worker que tem uma função terminada em er
SELECT Wname as nome_worker
FROM Worker WHERE idWorker in(SELECT idSpecialist from Specialist s INNER JOIN Worker w on s.IdSWorker = w.IdWorker where function_worker LIKE '%er');
-- Nested query para calcular valor minimo e máximo e então sua média por INNER JOIN de relação
SELECT MAX(value_worker) as Max_Value, MIN(value_worker) as MIN_value, FLOOR((MAX(value_worker) + MIN(value_worker)) /2) as int_avg_max_min 
FROM Specialist where idSWorker IN (SELECT idWorker FROM Worker w INNER JOIN Specialist s ON s.idSWorker = w.IdWspecialist);
-- Nested query para saber quantidade de quem ganha 50;
SELECT count(*) as quantity_per_50 
FROM Worker where idWorker in(SELECT idSpecialist from Specialist s INNER JOIN Worker w on s.IdSWorker = w.IdWorker where value_worker = '50');
-- Retornando nome, tempo estimado e nome de veiculo para cada cliente.
SELECT CONCAT(c.Fname, ' - ', c.Lname) AS full_name, DATEDIFF(os.OS_Start_Date,os.OS_Finish_Date) AS Estimate_Time, v.Vname AS Vehicle_name
FROM Clients c
INNER JOIN OS os ON c.idClient = os.idOsClient
INNER JOIN Vehicle v ON os.idOsVehicle = v.idVehicle;
-- Nested query para achar max e min de veiculos, além da sua média por valor interger.
SELECT MAX(valor) as Max_Value, MIN(valor) as MIN_value, FLOOR((MAX(valor) + MIN(valor)) /2) as int_avg_max_min 
FROM Vehicle where idVehicle IN (SELECT idOsVehicle FROM OS s INNER JOIN Vehicle v ON v.idVehicle = s.idOsVehicle);
-- Nested query para carros SUV em clientes e suas relações com cor
SELECT c.idClient, c.fname, c.lname, v.idtype, v.color
FROM Clients c
INNER JOIN Vehicle_Clients vc ON c.idClient = vc.idClient
INNER JOIN Vehicle v ON vc.idVehicle = v.idVehicle where idtype = '2';
-- Nested query para relação de cor e tipo de cor.
SELECT v.idType AS vehicle_type, v.color
FROM Vehicle v
WHERE v.idClient IN (SELECT c.idClient FROM Clients c);























UPDATE OS
SET idOsWorker = (SELECT idWorker FROM Worker w WHERE w.idWorker = os.idOsWorker)
WHERE idOsWorker IS NULL;


-- Select all records from the "OS_Tool" table
SELECT * FROM OS_Tool;

-- Select all records from the "Vehicle_Clients" table
SELECT * FROM Vehicle_Clients;

-- Select all records from the "SupplierTools" table
SELECT * FROM SupplierTools;
