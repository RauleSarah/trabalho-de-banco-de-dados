create database ETEC_HAS_EX_01;
use ETEC_HAS_EX_01;

create table area
(
	id_area		int						not null primary key,
	nm_area		varchar(60)				not null,
);

create table professor
(
	id_prof			int						not null primary key,
	nm_prof			varchar(60)				not null,
	end_prof		varchar(255)			not null,
	rg_prof			varchar (20)			not null,
	cpf_prof		varchar (12)			not null,
);

create table curso
(
	id_curso		int						not null primary key,
	id_area			int						not null constraint Etec_area foreign key (id_area) references area (id_area),
);


create table modulo
(
	id_mod 			int						not null primary key,	
	nm_mod			int						not null,
	id_curso		int						not null constraint Etec_curso foreign key (id_curso) references curso (id_curso),
);

create table materia
(
	id_mat 			int						not null primary key,
	nm_mat			varchar (50)			not null,
	id_prof			int						not null constraint Etec_professor foreign key (id_prof) references professor (id_prof),
	id_mod			int						not null constraint Etec_modulo foreign key (id_mod) references modulo (id_mod),
	
);

create table aluno
(
	id_alu			int						not null primary key		identity (1,1),
	nome_alu		varchar (60)			not null,
	end_alu			varchar (250)			not null,
	rg_alu			varchar (20)			not null,
	cpf_alu			numeric (11)			not null,
	email_alu		varchar (50)			not null,
	nome_mae_alu	varchar (60)				not null,
	nome_pai_alu	varchar (60)				not null,
	id_curso		int						not null constraint Etec_curso_aluno foreign key (id_curso) references curso (id_curso),
);

select * from aluno

sp_help area;
sp_help professor;
sp_help curso;
sp_help modulo;
sp_help materia;
sp_help aluno;