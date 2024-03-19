#drop database centro_cirugico_bd;

#criação banco
create database centro_cirugico_bd;

#seleciona o banco
use centro_cirugico_bd;

#criação tababela especialidade
create table tbl_especialidade(
cod_especialidade int unsigned auto_increment primary key,    #unsigned = em sinal
nome_especialidade varchar(100) not null
);

#criação tababela paciente
create table tbl_paciente(
cod_paciente int unsigned auto_increment primary key,    #unsigned = em sinal
nome_paciente varchar(500) not null,
telefone_paciente varchar(10) not null,
celular_paciente varchar(11) not null,
email_paciente varchar(100) not null,
nome_responsavel varchar(10) not null,
telefone_responsavel varchar(11) not null
);



#Backup tababela paciente
create table tbl_paciente_bkp(
cod_paciente int unsigned auto_increment primary key,    #unsigned = em sinal
nome_paciente varchar(500) not null,
telefone_paciente varchar(10) not null,
celular_paciente varchar(11) not null,
email_paciente varchar(100) not null,
nome_responsavel varchar(10) not null,
telefone_responsavel varchar(11) not null,
date_delete datetime
);



#criação tababela medico
create table tbl_medico(
cod_medico int unsigned auto_increment primary key,
cod_especialidade int unsigned not null,
nome_medico varchar(500) not null,
telefone_medico varchar(10) not null,
celular_medico varchar(11) not null,
email_medico varchar(100) not null
);

#criação tababela isumos
create table tbl_insumos(
cod_insumos int unsigned auto_increment primary key,
cod_paciente int unsigned not null,
nome_insumos varchar(100) not null,
quantidade_insumos decimal (10,2)
);

#criação tababela sala
create table tbl_sala(
cod_sala int unsigned auto_increment primary key,
cod_especialidade int unsigned not null,
nro_sala varchar(10) not null
);

#criação tababela agenda
create table tbl_agenda(
cod_agenda int unsigned auto_increment primary key,
cod_sala int unsigned not null,
cod_medico int unsigned not null,
cod_paciente int unsigned not null,
data_cirugia varchar(10) not null,
status_cirurgia enum('agendado', 'concluido', 'cancelado')
);