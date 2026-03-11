CREATE table livro (
id_livro int auto_increment primary key,
titulo varchar (255) not null,
sinopse TEXT,
autor varchar (128) not null,
editora varchar (128) not null,
categoria varchar (128) not null,
data_publicaçao year
);