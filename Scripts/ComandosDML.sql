Select * from Clientes
Where Id = 394
order by Nome, Sobrenome

ROLLBACK
BEGIN TRAN
DELETE Clientes
WHERE Nome = 'Linda'

BEGIN TRAN
UPDATE Clientes
SET Email = 'LindaBrunett@gmail.com', AceitaComunicados = 1
WHERE Nome = 'Linda'

SELECT * FROM Clientes
WHERE Nome = 'Linda'

CREATE TABLE Produtos (
    Id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
    Nome VARCHAR(255) Not NULL,
    Cor VARCHAR(50) NULL,
    Preco DECIMAL(13,2) NOT NULL,
    Tamalho VARCHAR(5) NULL,
    Genero char(1) NULL
)

SELECT * FROM  Produtos
