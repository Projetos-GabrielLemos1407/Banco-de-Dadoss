create database escola; 
create table aluno(idaluno
 int auto_increment not null,
rm int null,
nomeauluno varchar(100) null
primary key(idaluno)
);

create table professor (idprofessor
int auto_increment not null,
diciplina  int null,
nomeprofessor varchar(100) null,
primary key(idprofessor)
);

create table boletim(idboletim
int auto_increment not null,
data varchar(28) null,
bimestre int null,
primary key(idboletim)
foreign key (alunofk) references (idaluno)
foreign key (professorfk) references (idprofessor)
);

create table escola(idescola
int auto_increment not null,
endereco varchar (12),
cnpj varchar (100).
nomescola varchar(100) null,
primary key(idescola)
);

create table secretaria(idsecretaria
int auto_increment not null,
atendente int null,
noimeatendente varchar(04) null,
pedidos varchar(04) null,
primary key(idescola)
foreign key (escolafk) references (idescola)
foreign key (boletimfk) references (idboletim)
);




