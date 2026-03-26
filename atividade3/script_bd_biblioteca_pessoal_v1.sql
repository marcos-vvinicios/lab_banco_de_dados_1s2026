CREATE database biblioteca_pessoal_1s2026;
USE blibioteca_pessoal_1s2026;
SHOW tables;
CREATE table livro (
id_livro int auto_increment primary key,
titulo varchar (255) not null,
sinopse TEXT,
autor varchar (128) not null,
editora varchar (128) not null,
categoria varchar (128) not null,
data_publicaçao year
);
USE biblioteca_pessoal_2026;
CREATE table Usuario(
id_usuario int auto_increment primary key,
username varchar (255) not null,
email varchar (255) unique,
data_cadastro date 
);
USE bibliotecapessoal1s2026;
ALTER TABLE livro
add lido boolean,
add data_atualizacao timestamp,
drop column editora,
add id_usuario int not null,
add constraint fk_usuario
foreign key (id_usuario) references Usuario(id_usuario) on delete cascade;
describe livro;
ALTER TABLE livro
drop column categoria,
drop column editora;
ALTER TABLE livro
add id_categoria int not null,
add id_autor int not null,
add constraint fk_autor
foreign key (id_autor) references autor(id_autor),
add constraint fk_categoria
foreign key (id_categoria) references categoria(id_categoria);
SHOW TABLES;
DESCRIBE livro;
ALTER TABLE livro
add id_editora int not null,
add constraint fk_editora
foreign key (id_editora) references editora(id_editora);
DESCRIBE livro;
USE bibliotecapessoal1s2026;
ALTER TABLE Usuario 
add senha varchar (255),
add data_atualizacao timestamp; 
DESCRIBE Usuario;
CREATE TABLE autor(
id_autor int auto_increment primary key,
nome varchar (255) not null unique,
ano_nasciment year,
ano_morte year,
apresentacao text,
data_cadastro timestamp,
data_atualizacao timestamp
);
CREATE TABLE categoria(
id_categoria int auto_increment primary key,
nome varchar (255) not null unique,
descricao text,
data_cadastro timestamp,
data_atualizacao timestamp
);
CREATE TABLE editora(
id_editora int auto_increment primary key,
nome varchar (255) not null unique,
cidade varchar (64),
estado varchar (64),
pais varchar (64),
data_cadastro timestamp,
data_atualizacao timestamp
);
