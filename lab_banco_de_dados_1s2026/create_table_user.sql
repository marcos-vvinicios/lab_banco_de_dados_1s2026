USE biblioteca_pessoal_2026;
CREATE table Usuario(
id_usuario int auto_increment primary key,
username varchar (255) not null,
email varchar (255) unique,
data_cadastro date 
);