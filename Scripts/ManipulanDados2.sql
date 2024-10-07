--Linkando com Banco
use ExemploDB

--Pesquisa personalizada
SELECT Id,Nome,DataCadastro FROM Clientes
WHERE Nome LIKE 'a%' AND AceitaComunicados = 1

-- Upper e Lower
SELECT 
    Nome + ', Cor:' + cor + ' - ' + Genero NomeProdutoCompleto,
    UPPER(Nome) NomesUpper,
    LOWER(Cor)  CorLower
FROM Produtos

--Adicionando uma coluna na tabela
ALTER TABLE Produtos
ADD DataCadastro DATETIME2 

--Remover uma coluna
ALTER TABLE Produtos
DROP COLUMN DataCadastro

--Pesquisa simples
SELECT * FROM Produtos

--Adicionando linhas a Coluna 
UPDATE Produtos SET DataCadastro = GETDATE()

--Formatar data na pesquisa
SELECT
 Nome + ', Cor: ' + cor + ' - ' + Genero NomeProdutoCompleto,
 FORMAT(DataCadastro, 'dd-MM-yyyy HH:mm') DataCadastroFormatada
FROM Produtos

--Agrupamentos de dados
SELECT 
    Tamanho, COUNT(*) Quantidade 
 FROM Produtos
 WHERE Tamanho <> ''
GROUP BY Tamanho 
ORDER BY Quantidade DESC

SELECT Tamanho, Count(*) Quantidade
from Produtos
GROUP BY Tamanho

SELECT Cor,Preco, COUNT(*) QuantidadeCor FROM Produtos
WHERE Cor = 'Preto'
GROUP BY Cor, Preco
ORDER by Preco

SELECT Cor, Preco, COUNT(Preco) Quantidade
From Produtos
--WHERE Tamanho <> ''
GROUP BY Preco, Cor

SELECT * FROM Clientes
SELECT * FROM Endereco
-- Primary Key and Foreign Key
--Altera tabela e add Primaty Key
ALTER TABLE Clientes
ADD CONSTRAINT Pk_IdClientes Primary Key (Id);

--Cria tabela e add Primary Key e Foreign Key
CREATE TABLE Endereco (
    Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
    IdCliente int NULL,
    Rua VARCHAR(255) NULL,
    Bairro VARCHAR(255) NULL,
    Cidade VARCHAR(255) NULL,
    Estado CHAR(2) NULL,

    CONSTRAINT FK_Enderecos_Clientes FOREIGN KEY(IdCliente)
    REFERENCES Clientes(Id)
)
-- insere na tabela Enderco com chave estrangeira
INSERT INTO Endereco VALUES (2011, 'Rua teste', 'Bairro teste', 'Cidade teste', 'SP')

-- Manipulando dados com Join

SELECT 
* 
FROM Clientes
INNER JOIN Endereco ON Clientes.Id = Endereco.IdCliente
WHERE Clientes.Id = 2011

SELECT 
    Clientes.Nome,
    Clientes.Sobrenome,
    Clientes.Email,
    Endereco.Rua,
    Endereco.Bairro,
    Endereco.Cidade,
    Endereco.Estado
FROM Clientes
INNER JOIN Endereco ON Clientes.Id = Endereco.IdCliente
WHERE Clientes.Id = 2011

SELECT 
    c.Nome,
    c.Sobrenome,
    c.Email,
    e.Rua,
    e.Bairro,
    e.Cidade,
    e.Estado
FROM Clientes c
INNER JOIN Endereco e ON c.Id = e.IdCliente
WHERE c.Id = 2011