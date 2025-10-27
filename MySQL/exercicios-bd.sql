create database bd_CDs;
use bd_CDs;
drop database bd_CDs;

/*tabela 1*/
create table tb_artista(
	id_artista int primary key auto_increment not null,
	nome_artista varchar(100) not null,
    nome_banda varchar (100) unique not null
    );
    
select * from tb_artista;

/*tabela 2*/
create table tb_gravadora(
	pk_cod_gravadora int primary key auto_increment not null,
    nome_gravadora varchar(50) unique not null
    );

select * from tb_gravadora;

/*tabela 3*/
create table categoria(
	pk_cod_categoria int primary key auto_increment not null,
    nome_categoria varchar(50) unique not null
    );
    
select * from categoria;

/*tabela 4*/
create table estado(
	pk_sigla_es char(2) primary key not null,
    nome_estado varchar(50) unique not null
    ); 

select * from estado;

/*tabela 5*/
create table cidade(
	pk_cod_cid int primary key auto_increment not null,
    sigla_est char(2),
    nome_cid varchar(100) not null,
	constraint fk_cidade_estado foreign key (sigla_est) references estado(pk_sigla_es)
    );
    
select * from cidade;

/*tabela 6*/
create table cliente(
	pk_cod_cli int primary key not null,
    cod_cid int,
    nome_cli varchar(100) not null,
    end_cli varchar(200)not null,
    renda_cli decimal(10,2) not null default 0 check (renda_cli >=0),
    sexo_cli char(2) not null default "F" check (sexo_cli in("F", "M")),
	constraint fk_cliente_cidade foreign key (cod_cid) references cidade(pk_cod_cid)
    );
    
select * from cliente;

/*tabela 7*/
create table conjuge(
	pk_cod_cli int primary key auto_increment not null,
    cod_cli int not null,
    nome_conj varchar(100) not null,
    renda_conj decimal(10,2) not null default 0 check(renda_conj >=0),
    sexo_conj char(1) not null default "M" check (sexo_conj in("F", "M")),
	constraint fk_conjuge_cliente foreign key (cod_cli) references cliente(pk_cod_cli)
    );
    
drop table conjuge;
select * from conjuge;

/*tabela 8*/
create table funcionario(
	pk_cod_func int primary key auto_increment not null,
    nome_func varchar(100) not null,
    end_func varchar(200) not null,
    sal_func decimal(10,2) not null default 0 check(sal_func >= 0),
    sexo_func char(1) not null default "M" check(sexo_func in("F","M"))
    );
    
select * from funcionario;

/*tabela 9*/
create table dependente(
	pk_cod_dep int primary key auto_increment not null,
    cod_func int not null,
    nome_dep varchar(100) not null,
    sexo_dep char(1) not null default "M" check(sexo_dep in("F","M")),
    constraint fk_dependente_func foreign key (cod_func) references funcionario(pk_cod_func)
    );

select * from dependente;

/*tabela 10*/
create table titulo(
	pk_cod_tit int primary key auto_increment not null,
    cod_cat int not null,
    cod_grav int not null,
    nome_cd varchar(100) unique not null,
    val_cd decimal(10,2) not null default 0 check(val_cd > 0),
    qtd_estq int not null default 0 check(qtd_estq >=0),
	constraint fk_titulo_categoria foreign key (cod_cat) references categoria(pk_cod_categoria),
    constraint fk_titulo_grav foreign key (cod_grav) references tb_gravadora(pk_cod_gravadora)
    );
    
select * from titulo;

/*tabela 11*/
create table pedido(
	num_ped int primary key auto_increment not null,
    cod_clie int not null,
    cod_funci int not null,
    data_ped datetime,
    val_ped decimal(10,2) not null default 0 check(val_ped >= 0),
    constraint fk_pedido_cliente foreign key (cod_clie) references cliente(pk_cod_cli),
    constraint fk_pedido_func foreign key (cod_funci) references funcionario(pk_cod_func)
    );
    
    select * from pedido;
    
/*tabela 12*/
create table Titulo_Pedido (
    Num_Ped int not null,
    Cod_Tit int not null,
    Qtd_CD int not null check (Qtd_CD >= 1),
    Val_CD decimal(10,2) not null check (Val_CD > 0),
    primary key (Num_Ped, Cod_Tit),
    foreign key (Num_Ped) references Pedido(num_ped),
    foreign key (Cod_Tit) references Titulo(pk_cod_tit)
);

select * from Titulo_Pedido;

/*tabela 13*/
CREATE TABLE Titulo_Artista (
    Cod_Tit int not null,
    Cod_Art int not null,
    primary key (Cod_Tit, Cod_Art),
    constraint fk_tituloart_titulo foreign key (Cod_Tit) references titulo(pk_cod_tit),
    constraint fk_tituloart_artista foreign key (Cod_Art) references tb_artista(id_artista)
);
select * from Titulo_Artista;








    


    
    
    
    


    
    


    
