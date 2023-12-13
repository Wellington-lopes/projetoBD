--Criando tabelas do banco

create table funcionarios (
	id_func serial primary key,
	nome varchar(100),
	especialidade varchar(100),
	telefone varchar(50),
	status varchar(50)
);


create table clientes (
	id_cliente serial primary key,
	nome varchar(100),
	endereco varchar(255),
	telefone varchar(20),
	email varchar(100)
);


create table pacientes( 
	id_paciente serial primary key,
	nome varchar(100),
	especie varchar(50),
	raca varchar(50),
	peso decimal(5,2),
	id_cliente int,
	foreign key (id_cliente) references clientes(id_cliente)
);

create table atendimentos (
	id_atendimento serial primary key,
	id_func int,
	id_paciente int,
	valor decimal(10,2),
	data date,
	tipo_atendimento varchar(50),
	foreign key(id_func) references funcionarios(id_func),
	foreign key(id_paciente) references pacientes(id_paciente)
);

select * from clientes;
select * from pacientes;
select * from atendimentos;
select * from funcionarios;









