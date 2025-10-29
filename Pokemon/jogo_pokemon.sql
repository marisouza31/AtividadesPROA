create database jogo_pokemon;
use jogo_pokemon;

drop database jogo_pokemon;

create table treinador (
  id_treinador int primary key auto_increment,
  nome varchar(100) not null,
  idade int,
  aparencia varchar(255),
  gostos varchar(255),
  regiao varchar(50)
);

create table pokemon (
  id_pokemon int primary key auto_increment,
  nome varchar(50) not null,
  forma varchar(30),
  tipo1 varchar(20) not null,
  tipo2 varchar(20),
  hp int,
  ataque int,
  defesa int,
  ataque_especial int,
  defesa_especial int,
  agilidade int,
  geracao int
);

create table fazenda (
  id_fazenda int primary key auto_increment,
  nome varchar(100),
  localizacao varchar(100),
  capacidade int
);

create table time (
  id_time int primary key auto_increment,
  nome_time varchar(100),
  quantidade_maxima int default 6
);

create table batalha (
  id_batalha int primary key auto_increment,
  data_batalha date,
  local varchar(100),
  resultado varchar(50)
);

create table pokebola (
  id_pokebola int primary key auto_increment,
  tipo varchar(50),
  eficiencia decimal(4,2)
);

/* tabelas associativas: */

create table treinador_pokemon (
  id_treinador int,
  id_pokemon int,
  local enum('time', 'fazenda') default 'fazenda',
  apelido varchar(50),
  primary key (id_treinador, id_pokemon),
  constraint foreign key (id_treinador) references treinador(id_treinador),
  constraint foreign key (id_pokemon) references pokemon(id_pokemon)
);

create table fazenda_pokemon (
  id_fazenda int,
  id_pokemon int,
  dataentrada date,
  primary key (id_fazenda, id_pokemon),
  constraint foreign key (id_fazenda) references fazenda(id_fazenda),
  constraint foreign key (id_pokemon) references pokemon(id_pokemon)
);

create table time_pokemon (
  id_time int,
  id_pokemon int,
  posição_notime int,
  primary key (id_time, id_pokemon),
  constraint foreign key (id_time) references time(id_time),
  constraint foreign key (id_pokemon) references pokemon(id_pokemon)
);

create table treinador_batalha (
  id_treinador int,
  id_batalha int,
  pontos int,
  resultado varchar(50),
  primary key (id_treinador, id_batalha),
  constraint foreign key (id_treinador) references treinador(id_treinador),
  constraint foreign key (id_batalha) references batalha(id_batalha)
);

create table captura (
  id_treinador int,
  id_pokebola int,
  datacaptura date,
  sucesso boolean,
  primary key (id_treinador, id_pokebola, datacaptura),
  constraint foreign key (id_treinador) references treinador(id_treinador),
  constraint foreign key (id_pokebola) references pokebola(id_pokebola)
);

insert into treinador (
nome,
idade, 
aparencia, 
gostos, 
regiao
) values
('ash ketchum', 16, 'boné vermelho, colete azul', 'pokémon elétricos', 'kanto'),
('misty', 15, 'cabelos ruivos, roupa amarela', 'pokémon aquáticos', 'kanto'),
('brock', 18, 'cabelos curtos, olhos fechados', 'pokémon de pedra', 'kanto'),
('serena', 14, 'chapéu rosa, saia vermelha', 'pokémon de fada', 'kalos'),
('cynthia', 25, 'cabelos loiros, sobretudo preto', 'pokémon dragão', 'sinnoh'),
('red', 17, 'boné vermelho, jaqueta vermelha', 'pokémon diversos', 'kanto'),
('lance', 28, 'capa vermelha', 'pokémon dragão', 'johto'),
('may', 13, 'roupa vermelha, bandana', 'pokémon planta', 'hoenn'),
('gary oak', 16, 'cabelos castanhos, roupa roxa', 'pokémon fortes', 'kanto'),
('dawn', 14, 'touca branca, lenço rosa', 'pokémon gelo', 'sinnoh');

select * from treinador;

insert into pokemon (
id_pokemon, 
nome, 
forma, 
tipo1, 
tipo2, 
hp, 
ataque, 
defesa, 
ataque_especial, 
defesa_especial, 
agilidade,
geracao) values
(1, 'pikachu', 'normal', 'elétrico', null, 35, 55, 40, 50, 50, 90, 1),
(2, 'charizard', 'mega x', 'fogo', 'voador', 78, 84, 78, 109, 85, 100, 1),
(3, 'bulbasaur', 'normal', 'planta', 'venenoso', 45, 49, 49, 65, 65, 45, 1),
(4, 'squirtle', 'normal', 'água', null, 44, 48, 65, 50, 64, 43, 1),
(5, 'gyarados', 'normal', 'água', 'voador', 95, 125, 79, 60, 100, 81, 1),
(6, 'gengar', 'normal', 'fantasma', 'venenoso', 60, 65, 60, 130, 75, 110, 1),
(7, 'dragonite', 'normal', 'dragão', 'voador', 91, 134, 95, 100, 100, 80, 1),
(8, 'lucario', 'normal', 'lutador', 'aço', 70, 110, 70, 115, 70, 90, 4),
(9, 'togekiss', 'normal', 'fada', 'voador', 85, 50, 95, 120, 115, 80, 4),
(10, 'lapras', 'normal', 'água', 'gelo', 130, 85, 80, 85, 95, 60, 1);

select * from pokemon;

insert into fazenda (
nome, 
localizacao, 
capacidade) values
('fazenda kanto', 'pallet town', 50),
('fazenda johto', 'new bark town', 60),
('fazenda hoenn', 'littleroot', 70),
('fazenda sinnoh', 'twinleaf', 80),
('fazenda kalos', 'lumiose city', 90),
('fazenda alola', 'melemele island', 40),
('fazenda galar', 'postwick', 55),
('fazenda paldea', 'naranja academy', 65),
('fazenda indigo', 'indigo plateau', 30),
('fazenda master', 'pallet hills', 100);

select * from fazenda;

insert into time (
nome_time, 
quantidade_maxima) values
('time elétrico', 6),
('time fogo', 6),
('time água', 6),
('time pedra', 6),
('time dragão', 6),
('time fada', 6),
('time lutador', 6),
('time misty', 6),
('time cynthia', 6),
('time ash', 6);

select * from time;

insert into batalha (
data_batalha, 
local, 
resultado) values
('2024-05-01', 'cerulean city', 'vitória'),
('2024-06-12', 'pewter city', 'derrota'),
('2024-07-03', 'vermilion city', 'empate'),
('2024-08-15', 'celadon city', 'vitória'),
('2024-09-10', 'fuchsia city', 'derrota'),
('2024-10-01', 'cinnabar island', 'vitória'),
('2024-11-20', 'viridian city', 'vitória'),
('2024-12-25', 'pallet town', 'vitória'),
('2025-01-05', 'saffron city', 'derrota'),
('2025-02-14', 'indigo plateau', 'vitória');

select * from batalha;

insert into pokebola (
tipo, 
eficiencia) values
('pokébola', 1.00),
('great ball', 1.50),
('ultra ball', 2.00),
('master ball', 1.00),
('premier ball', 1.10),
('dusk ball', 3.50),
('net ball', 3.00),
('quick ball', 5.00),
('timer ball', 4.00),
('luxury ball', 1.00);

select * from pokebola;

/* tabelas associativas */

insert into treinador_pokemon (
id_treinador, 
id_pokemon, 
local, 
apelido) values
(1, 1, 'time', 'sparky'),
(1, 2, 'fazenda', 'blaze'),
(2, 4, 'time', 'bubble'),
(3, 3, 'fazenda', 'leafy'),
(4, 9, 'time', 'wings'),
(5, 7, 'time', 'draco'),
(6, 6, 'fazenda', 'shadow'),
(7, 7, 'time', 'storm'),
(8, 3, 'fazenda', 'sprout'),
(9, 5, 'time', 'hydra');

select * from treinador_pokemon;

insert into fazenda_pokemon (
id_fazenda, 
id_pokemon, 
dataentrada) values
(1, 2, '2024-06-01'),
(2, 3, '2024-06-05'),
(3, 4, '2024-06-10'),
(4, 5, '2024-07-01'),
(5, 6, '2024-07-15'),
(6, 7, '2024-08-01'),
(7, 8, '2024-08-10'),
(8, 9, '2024-09-01'),
(9, 10, '2024-09-20'),
(10, 1, '2024-10-01');

select * from fazenda_pokemon;

insert into time_pokemon (
id_time, 
id_pokemon, 
posição_notime) values
(1, 1, 1),
(2, 2, 1),
(3, 4, 1),
(4, 3, 1),
(5, 7, 1),
(6, 9, 1),
(7, 8, 1),
(8, 10, 1),
(9, 5, 1),
(10, 6, 1);

select * from time_pokemon;

insert into treinador_batalha (
id_treinador, 
id_batalha, 
pontos, 
resultado) values
(1, 1, 10, 'vitória'),
(2, 2, 5, 'derrota'),
(3, 3, 7, 'empate'),
(4, 4, 10, 'vitória'),
(5, 5, 3, 'derrota'),
(6, 6, 10, 'vitória'),
(7, 7, 9, 'vitória'),
(8, 8, 10, 'vitória'),
(9, 9, 4, 'derrota'),
(10, 10, 10, 'vitória');

select * from treinador_batalha;

insert into captura (
id_treinador, 
id_pokebola, 
datacaptura, 
sucesso) values
(1, 1, '2024-05-02', true),
(2, 2, '2024-05-10', true),
(3, 3, '2024-06-12', true),
(4, 4, '2024-06-20', true),
(5, 5, '2024-07-01', true),
(6, 6, '2024-07-10', false),
(7, 7, '2024-07-15', true),
(8, 8, '2024-08-01', true),
(9, 9, '2024-08-15', false),
(10, 10, '2024-09-01', true);

select * from captura;