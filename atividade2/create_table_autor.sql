CREATE TABLE autor(
id_autor int auto_increment primary key,
nome varchar (255) not null unique,
ano_nasciment year,
ano_morte year,
apresentacao text,
data_cadastro timestamp,
data_atualizacao timestamp
);