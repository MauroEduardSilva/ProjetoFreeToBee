create table usuario (
	id bigint auto_increment primary key,
    nome varchar(255),
    sobrenome varchar(255),
    apelido varchar(255),
    email varchar(255),
    senha varchar(255)
);

create table foto (
	id bigint auto_increment primary key,
    nome_arquivo varchar(255),
    conteudo_foto longblob
);

create table conquista (
	id bigint auto_increment primary key,
    nome_conquista varchar(255),
    descricao_conquista text,
    icone_conquista_id bigint,
    foreign key (icone_conquista_id) references foto(id)
);

create table estabelecimento (
	id bigint auto_increment primary key,
    nome varchar(255),
    tipo varchar(50),
    endereco_id bigint,
    cnpj varchar(100),
    email varchar(100),
    telefone varchar(100),
    foreign key (tipo) references tipo_estabelecimento(tipo),
    foreign key (endereco_id) references endereco(id)
);

create table tipo_estabelecimento (
	tipo varchar(30) primary key
);

insert into tipo_estabelecimento (tipo) values
('MERCADO'), ('LOJA'), ('FARMACIA'), ('RESTAURANTE'), ('BAR'),
('CASA_NOTURNA'), ('TEATRO'), ('SHOPPING'), ('MUSEU'), ('HOTEL'),
('LIVRARIA'), ('ACADEMIA'), ('CLINICA');

create table endereco (
	id bigint auto_increment primary key,
    estado varchar(100),
    cidade varchar(100),
    bairro varchar(100),
    cep int,
    logradouro varchar(255),
    horario_funcionamento varchar(255)
);

create table reacao (
	id bigint auto_increment primary key,
    tipo varchar (50),
    usuario_id bigint not null,
    avaliacao_id bigint,
    depoimento_id bigint,
    
    foreign key (tipo) references tipo_reacao(tipo),
    foreign key (usuario_id) references usuario(id),
    foreign key (avaliacao_id) references avaliacao(id),
    foreign key (depoimento_id) references depoimento(id)
);


create table tipo_reacao (
	tipo varchar(20) primary key
);

insert into tipo_reacao (tipo) values ('CURTIDAS'), ('DESCURTIDAS');

create table destaque (
	destaque varchar(40) primary key
);

INSERT INTO Destaque (destaque) VALUES
('ATENDIMENTO'), ('SEGURANCA'), ('DEMONSTRACAO_PUBLICA'),
('CLIENTELA'), ('LOCALIZACAO'), ('BANHEIRO_NEUTRO');

create table avaliacao (
	id bigint auto_increment primary key,
    nota int,
    descricao text,
    usuario_id bigint,
    estabelecimento_id bigint,
    
    foreign key (usuario_id) references usuario(id),
    foreign key (estabelecimento_id) references estabelecimento(id)
);

create table depoimento (
	id bigint auto_increment primary key,
    usuario_id bigint not null,
    conteudo_depoimento text,
    data_depoimento date,
    avaliacao_id bigint,
    
    foreign key (usuario_id) references usuario(id),
    foreign key (avaliacao_id) references avaliacao(id)
);

create table conquista_desbloqueada (
	id bigint auto_increment primary key,
    usuario_id bigint not null,
    conquista_id bigint not null,
    data_conquista date not null,
    
    foreign key (usuario_id) references usuario(id),
    foreign key (conquista_id) references conquista(id)
);

create table selo (
	id bigint auto_increment primary key,
    nome varchar(255) not null,
    pontuacao int not null
);