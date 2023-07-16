create database if not exists oficina;
use oficina;
drop database oficina;


create table clients(
		idClient int auto_increment primary key,
        idPayment int,
        Fname varchar(30),
        Minit char(3),
        Lname varchar(20),
        Address varchar(255),
        telefone char(11),
        nascimento DATE,
        email varchar(35)
        
);
alter table clients add constraint fk_clients_payment foreign key(idPayment) references Payments(idPayment);
create table clients_fisico(
		idClientFisico int,
        CPF char(11) not null,
        idCFisico int,
       primary key(idCFisico, CPF)
);

drop table clients_fisico;
ALTER TABLE clients_fisico add constraint fk_clients_fisico foreign key(idCFisico) REFERENCES clients(idClient);

create table clients_juridico(
		idClientJuridico int,
        CNPJ char(14) not null,
        idCJuridico int,
        primary key(idCJuridico,CNPJ)
);

drop table clients_juridico;

ALTER TABLE clients_juridico add constraint fk_clients_juridico foreign key(idCJuridico) REFERENCES clients(idClient);

drop table vehicle;
create table vehicle(
		idVehicle int auto_increment primary key,
        Vname varchar(255),
        Chassi char(10),
        idType int,
        color varchar(15),
        year_vehicle date,
		idClient int,
        valor decimal(10,2)
);
ALTER TABLE VEHICLE ADD COLUMN idOs int;
alter table vehicle add constraint fk_vwhicle foreign key (idOs) references OS(idOs);
alter table vehicle add constraint fk_type foreign key(idType) references Vtype(idVType),
add constraint fk_client_vehicle foreign key(idClient) references clients(idClient),
add constraint fk_vehicle_type foreign key(idType) references Vtype(idVtype);

create table VType(
idVtype int auto_increment primary key,
VTypeName varchar(30));

create table payments(
	idclient int,
    idPayment int,
    typePayment enum('Boleto','Cartão','Dois cartões','Alimentação'),
    limitAvailable float,
    primary key(idClient, idPayment)
);

create table Specialist(
idSpecialist int auto_increment primary key,
idSWorker int,
function_worker varchar(20),
value_worker float);
alter table specialist add constraint fk_specialist_worker foreign key(idSWorker) references Worker(idWorker);


create table Worker(
idWorker int auto_increment primary key,
Wname varchar(50),
Address varchar(50),
idWSpecialist int);
alter table worker add constraint fk_worker_specialist foreign key(idWSpecialist) references Specialist(idSpecialist);


create table Supplier(
	idSupplier int auto_increment primary key,
    SocialName varchar(255) not null,
    CNPJ char(15) not null,
    contact char(11) not null,
    constraint unique_supplier unique (CNPJ)
);

create table Tool(
		idTool int auto_increment primary key,
        Tname varchar(30),
        Tcategory varchar(20),
        Price float
);
create table toolStorage(
	idTStorage int auto_increment primary key,
    storageLocation varchar(255),
    quantity int default 0 ,
    idTsStorage int,
    constraint fk_tools_storage foreign key(idTsStorage) REFERENCES tool(idTool)
);

drop table os;
create table OS(
	idOS int auto_increment primary key,
    idOsClient int,
    idOsTool int,
    idOsWorker int,
    OS_Status enum('Cancelado','Confirmado','Em processamento') default 'Em processamento',
    OS_Description varchar(255),
	OS_Start_Date DATE,
    OS_Finish_Date DATE,
    constraint fk_os_client foreign key (idOsClient) references clients(idClient)
			on update cascade,
	constraint fk_os_worker foreign key(idOsWorker) references Worker(idWorker)
);
alter table OS add constraint fk_os_tools foreign key(idOsTool) references Tool(idTool);
ALTER TABLE OS ADD COLUMN  idOsVehicle int;
ALTER TABLE OS ADD constraint fk_os_vehicle foreign key (idOsVehicle) references Vehicle(idVehicle)
			on update cascade;

-- Relações N:M
drop table os_tool;
CREATE TABLE OS_Tool(
    idOS int,
    idTool int,
    PRIMARY KEY (idOS, idTool),
    FOREIGN KEY (idOS) REFERENCES OS (idOS) ON UPDATE CASCADE,
    FOREIGN KEY (idTool) REFERENCES tool (idTool) ON UPDATE CASCADE
);

drop table vehicle_clients;
CREATE TABLE Vehicle_Clients(
idClient int,
idVehicle int,
quantity int,
primary key(idClient,idVehicle),
FOREIGN KEY(idClient) REFERENCES clients(idClient) ON UPDATE CASCADE,
FOREIGN KEY(idVehicle) REFERENCES Vehicle(idVehicle) ON UPDATE CASCADE);

CREATE TABLE SupplierTools(
idTsupplier int,
idTtool int,
quantity int,
primary key(idTsupplier,idTtool),
FOREIGN KEY(idTsupplier) REFERENCES Supplier(idSupplier) ON UPDATE CASCADE,
FOREIGN KEY(idTtool) REFERENCES Tool(idTool) ON UPDATE CASCADE);



