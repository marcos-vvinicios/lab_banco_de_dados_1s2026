USE bibliotecapessoal1s2026;
ALTER TABLE Usuario 
add senha varchar (255),
add data_atualizacao timestamp; 
DESCRIBE Usuario;