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


