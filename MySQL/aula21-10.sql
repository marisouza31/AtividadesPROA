create database banco_livros;/*cria o banco */
drop database banco_livros;/*exclui o banco */
use banco_livros;/*usar o banco criado*/

/*cria a tabela*/
create table tb_livro(
	id_livro int primary key auto_increment,
    nome_livro varchar(100) not null,
    num_paginas int not null,
    genero enum("suspense", "terror", "romance", "aventura", "ação") not null,
    preco decimal (8,2),
    tipo_capa enum("mole", "dura", "paraná"),
    data_leitura date,
    tipo_livro enum("audiobook", "digital", "impresso"),
    idioma enum("portugues", "chines"),
    avaliacao_livro enum("ruim", "pessimo", "otimo", "bom"),
    status_livro enum("lido", "lendo", "não lendo"),
    edicao varchar(30),
    estado_livro enum("novo", "usado", "semi novo"),
    id_autor int,
    id_editora int
    /*constraint pk_id_livro primary key (id_livro),
    constraint fk_id_editora foreign key (id_editora) references td_editora(id_editora),
	constraint fk_id_autor foreign key (id_autor) references autor(id_autor)*/
    );
    
    drop table tb_livro;
    
    create table autor(
		id_autor int primary key auto_increment,
		nome_autor varchar(100),
		data_nasc date,
		qtde_obras_autor int not null,
		nacionalidade varchar(100),
		genero_autor enum("lirico", "epico", "dramatico", "terror", "fantasia", "realismo", "romance",
			"introspectivo", "distopia", "realismo magico"),
		id_livro int,
        id_editora int
		/*constraint pk_id_autor primary key (id_autor),
		constraint fk_id_livro foreign key (id_livro) references tb_livro(id_livro),
		constraint fk_id_editora foreign key (id_editora) references td_editora(id_editora)*/
        );
        
        select * from autor;
        drop table autor;
        
		alter table autor add column CPF char(20) not null;
         alter table autor drop column CPF;
        
        update autor set CPF = "123.456.789-06" where pk_id_autor = 1;
        update autor set nome_autor = "paulo coelho" where pk_id_autor = 2;
        
        alter table autor change nacionalidade nacionalidade_autor varchar(100);/*muda o nome de um campo especifico de uma tabela*/
       alter table autor drop column qtde_obras_autor;/*apaga um campo especifico dentro da tabela*/
       
       update autor set nome_autor = "Jujutsu Kaizen" where pk_id_autor = 7;
       alter table autor add column premiacoes int not null;
        update autor set premiacoes = 10 where pk_id_autor = 1;
        
         start transaction;/*habilita comandos de retorno*/
        delete from autor;/*apaga os registros geral da tabela*/
          rollback;/*ctrl Z no comando*/
	
    describe tb_livro;/*exibe a estrtura da tabela*/
    
select * from tb_livro;/*exibe o conteudo da tabela*/

insert into autor(
	nome_autor,
	data_nasc,
	qtde_obras_autor,
	nacionalidade,
	genero_autor
    ) values
    ("collen hover", "1996-04-21", 50, "americana", "dramatico"),
	("collen hover", "1996-04-21", 40, "americana", "lirico"),
	("collen hover", "1996-04-21", 60, "americana", "epico"),
    ('Stephen King', '1947-09-21', 85, 'Americano', 'terror'),
    ('J.K. Rowling', '1965-07-31', 15, 'Britânica', 'fantasia'),
    ('Machado de Assis', '1839-06-21', 25, 'Brasileiro', 'realismo'),
    ('Clarice Lispector', '1920-12-10', 18, 'Brasileira', 'introspectivo'),
    ('George Orwell', '1903-06-25', 12, 'Britânico', 'distopia'),
    ('Jane Austen', '1775-12-16', 6, 'Britânica', 'romance'),
    ('Gabriel García Márquez', '1927-03-06', 20, 'Colombiano', 'realismo magico');


/*insere dados na tabela*/
insert into tb_livro (
	nome_livro,
    num_paginas,
    genero,
    preco,
    tipo_capa,
    data_leitura,
    tipo_livro,
    idioma,
    avaliacao_livro,
    status_livro,
    edicao,
    estado_livro
    ) values 
    ("o pequeno principe", 144, "ação", 15.00,"mole","2025-10-21", "impresso","portugues","otimo", "lido", "decima edição", "usado"),
	("barbie", 122, "aventura", 15.00,"mole","2025-10-21", "impresso","portugues","otimo", "lido", "decima edição", "usado"),
	("marsha e urso", 154, "ação", 15.00,"mole","2025-10-22", "impresso","portugues","ruim", "lendo", "decima edição", "usado"),
	("o pequeno principe", 144, "ação", 15.00,"mole","2025-10-21", "impresso","portugues","otimo", "lido", "decima edição", "usado"),
	("o pequeno principe", 144, "ação", 15.00,"mole","2025-10-21", "impresso","portugues","otimo", "lido", "decima edição", "usado"),
	("o pequeno principe", 144, "ação", 15.00,"mole","2025-10-21", "impresso","portugues","otimo", "lido", "decima edição", "usado"),
	("o pequeno principe", 144, "ação", 15.00,"mole","2025-10-21", "impresso","portugues","otimo", "lido", "decima edição", "usado"),
	("o pequeno principe", 144, "ação", 15.00,"mole","2025-10-21", "impresso","portugues","otimo", "lido", "decima edição", "usado"),
	("o pequeno principe", 144, "ação", 15.00,"mole","2025-10-21", "impresso","portugues","otimo", "lido", "decima edição", "usado"),
	("o pequeno principe", 144, "suspense", 15.00,"mole","2025-10-21", "impresso","portugues","otimo", "lido", "decima edição", "usado");  
    
    select * from tb_livro;
    
    create table td_editora(
		id_editora int primary key auto_increment not null,
        nome_editora varchar (50) not null,
        qtd_autores int not null,
        qtd_obras int not null,
        data_fundacao date not null,
        pais_origem varchar(50),
        endereco_editora varchar(100) not null,
        id_autor int,
        id_livro int
        /*constraint pk_id_editora primary key (id_editora),
        constraint fk_id_autor foreign key (id_autor) references autor (id_autor),
        constraint fk_id_livro foreign key (id_livro) references tb_livro(id_livro)*/
        );
        
        describe td_editora;
        insert into td_editora(
        nome_editora,
        qtd_autores,
        qtd_obras,
        data_fundacao,
        pais_origem,
        endereco_editora ) VALUES 
        ("Principes", 20, 60, "2010-01-01", "Brasil", "R. José Albino Pereira, 54 - Jardim Alvorada, Jandira - SP, 06612-001"),
        ("Europa", 30, 70, "2015-01-01", "Brasil", "R. José Albino Pereira, 54 - Jardim Alvorada, Jandira - SP, 06612-001"),
        ("Rubi", 10, 20, "2006-01-01", "Brasil", "R. José Albino Pereira, 54 - Jardim Alvorada, Jandira - SP, 06612-001"),
        ("Rocco", 40, 60, "2016-01-01", "Brasil", "R. José Albino Pereira, 54 - Jardim Alvorada, Jandira - SP, 06612-001"),
        ("Viseu", 10, 10, "2003-01-01", "Brasil", "R. José Albino Pereira, 54 - Jardim Alvorada, Jandira - SP, 06612-001"),
        ("Darkside", 30, 20, "2004-01-01", "Brasil", "R. José Albino Pereira, 54 - Jardim Alvorada, Jandira - SP, 06612-001"),
        ("Joao e Maria", 40, 60, "208-01-01", "Brasil", "R. José Albino Pereira, 54 - Jardim Alvorada, Jandira - SP, 06612-001"),
        ("Vida", 20, 40, "2007-01-01", "Brasil", "R. José Albino Pereira, 54 - Jardim Alvorada, Jandira - SP, 06612-001"),
        ("Moderna", 10, 30, "2002-01-01", "Brasil", "R. José Albino Pereira, 54 - Jardim Alvorada, Jandira - SP, 06612-001"),
        ("Dialetica", 10, 30, "2012-01-01", "Brasil", "R. José Albino Pereira, 54 - Jardim Alvorada, Jandira - SP, 06612-001");
        
        select * from td_editora;
        drop table td_editora;/*exclui uma tabela*/
        
		/*exclui um registro especifico de uma tabela com a restricao habilitada*/
        delete from tb_livro where pk_id_livro = 2;
        
        /**exclui um registro da tabela com a restricao desabilitada*/
        delete from tb_livro where num_paginas = 154;
        
        delete from tb_livro where genero = "suspense";
        
        start transaction;/*habilita comandos de retorno*/
        delete from tb_livro;/*apaga os registros geral da tabela*/
        select * from tb_livro;
        drop table tb_livro;
        
        rollback;/*ctrl Z no comando*/
        
        commit;/*confirma a execução do delete*/
        
        update tb_livro set nome_livro = "barbie moda e magia" where pk_id_livro = 12;
        /*atualiza o valor do campo com a condicao WHERE = onde*/
        
        update tb_livro set num_paginas = 157 where pk_id_livro = "5";
        
        /*apaga um registro especifico da tabela*/
        delete from tb_livro where pk_id_livro = 8;
        
        /*muda o registro de um campo especifico da tabela*/
        update tb_livro set genero = "terror" where pk_id_livro = 6;
        
        /*adiciona mais um campo/coluna na tabela*/
        alter table td_editora
        add column cnpj char(18) not null;
        
        /*mostra a estrutura da tabela*/
        describe td_editora;
        
        select * from td_editora;
        
        /*insere um registro em uma coluna dentro de uma tabela*/
        update td_editora set cnpj = "56.123.456/0001-65" where pk_id_editora = 1;
        
        /*apaga uma coluna/campo especifico de uma tabela*/
        alter table td_editora drop column cnpj;
        
        alter table td_editora modify column cnpj char(20);/*modifica o tipo a estrutura do campo de uma tabela*/
        
        /*adicionando as constraint na tabela livro*/
        alter table tb_livro drop primary key, add constraint pk_id_livro primary key(id_livro),
        add constraint fk_editora foreign key(id_editora) references td_editora(id_editora),
        add constraint fk_autor foreign key(id_autor) references autor(id_autor);
        
        /*adicionando a contraint na tabela autor*/
        alter table autor drop primary key,
        add constraint pk_id_autor primary key(id_autor);
        
        /*adicionando a constraint na tabela editora*/
        alter table td_editora drop primary key,
        add constraint pk_id_editora primary key(id_editora);
        
        
        
        
        
        
        
        
        
       
        

