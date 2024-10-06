
SELECT * FROM Produtos 
WHERE Tamanho = 'M'

select * from sys.tables

BEGIN TRAN
sp_rename 'Produtos.Tamalho','Tamanho','COLUMN';


SELECT COUNT(*) QuantidadeProdutos FROM Produtos

SELECT COUNT(*) QuantidadeProdutosTamalhoM FROM Produtos
WHERE Tamanho = 'M'

SELECT SUM(Preco) PrecoTotal FROM Produtos

SELECT SUM(Preco) PrecoTotalTamanhoM FROM Produtos
WHERE Tamanho = 'M'

SELECT MAX(Preco) ProdutoMaisCaro From Produtos 

SELECT MIN(Preco) ProdutoMaisBarato FROM Produtos

SELECT AVG(Preco) MediaPreco From Produtos

SELECT  Nome + ', Cor: ' + cor NomeProduto FROM Produtos