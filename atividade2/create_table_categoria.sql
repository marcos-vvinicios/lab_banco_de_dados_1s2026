CREATE TABLE categoria(
id_categoria int auto_increment primary key,
nome varchar (255) not null unique,
descricao text,
data_cadastro timestamp,
data_atualizacao timestamp
);