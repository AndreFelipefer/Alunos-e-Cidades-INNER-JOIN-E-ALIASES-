# INNER JOIN E ALIASES

## O modelo apresentado consiste na criação de duas tabelas, Cidades e Alunos, e na aplicação de uma condição de junção interna (inner join).

```SQL
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

```
![image](https://github.com/AndreFelipefer/Alunos-e-Cidades-INNER-JOIN-E-ALIASES-/assets/129207232/358778f6-eb9b-44af-bbab-fda29ed28ee3)


## A Aplicação do Inner Join nas tabelas apresentadas -
```SQL
-- Seleciona todos os dados da tabela Alunos
select * from alunos 
-- Depois utiliza o metodo inner join para unir a tabela Cidades
inner join cidades
-- Após é identado as tabelas + o ID para exibição
on cidades.id = alunos.cidade_id;
```
![Query Inner Join](https://github.com/AndreFelipefer/Alunos-e-Cidades-INNER-JOIN-E-ALIASES-/assets/129207232/21134479-bd67-4e84-8dd8-e2de97a695f0)

# Obrigado!
