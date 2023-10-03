CREATE TABLE Cidades (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    populacao INT
);

CREATE TABLE Alunos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    data_nasc DATE,
    cidade_id INT,
    FOREIGN KEY (cidade_id) REFERENCES Cidades(id)
);


-- Seleciona todos os dados da tabela Alunos
select * from alunos 
-- Depois utiliza o metodo inner join para unir a tabela Cidades
inner join cidades
-- Após é identado as tabelas + o ID para exibição
on cidades.id = alunos.cidade_id;