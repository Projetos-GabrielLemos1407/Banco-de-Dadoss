#criar base de dados

create database cafe;

#criar tabela

create table bebida(

idbebida int auto_increment not null,

describebida varchar(30) null,

valor double null,

primary key(idbebida)

);

create table lanche(

idlanche int auto_increment not null,

descrilanche varchar(20) null,

valor double null,

primary key(idlanche)

);

create table menu(

idmenu int auto_increment not null,

bebidafk int not null,
anchefk int not null,

primary key (idmenu),

foreign key (bebidafk) references bebida(idbebida),

foreign key (lanchefk) references lanche(idlanche)

);

#criar tabela comando

create table comanda(

idcomanda int auto_increment not null,
datahora varchar(15),

quantidade int null,

menufk int not null,

primary key(idcomanda),

foreign key (menufk) references menu(idmenu)

);

#criar tabela cafe

create table cafe(

idcafe int auto_increment not null,

cnpj varchar(11),

endereco varchar(100),

primary key(idcafe)

);
