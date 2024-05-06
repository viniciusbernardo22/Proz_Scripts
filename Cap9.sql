


/* "COMEÇANDO TRANSAÇÃO */
BEGIN TRANSACTION

/*Criando tabela clientes */
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nome NVARCHAR(50),
    Sobrenome NVARCHAR(50),
    Email NVARCHAR(100),
    Idade INT
);

/* Inserindo dados do cliente */
INSERT INTO Clientes (ClienteID, Nome, Sobrenome, Email)
VALUES 
(1, 'João', 'Silva', 'joao@email.com'),
(2, 'Vinicius', 'Andrade', 'vinicius@email.com'),
(3, 'Alexandre', 'Rodrigues', 'alexandre@email.com');

/* Encontrando onde tem um cliente com sobrenome 'Silva' na minha lista de clientes */
/* Selecionando apenas as colunas ClienteID e o Nome */
SELECT ClienteID, Nome FROM [Clientes] WHERE Sobrenome = 'Silva';


/* Retornando todos os registros onde o sobrenome não é Silva */
SELECT * FROM Clientes WHERE Sobrenome != 'Silva';

/*Retornando sobrenomes que começam com S ou T usando o operador LIKE */
SELECT * FROM Clientes WHERE Sobrenome LIKE 'S%' OR Sobrenome LIKE 'T%';

/* Retorna registros onde o sobrenome é "Silva" e o nome é "João". */
SELECT * FROM Clientes WHERE Sobrenome = 'Silva' AND Nome = 'João';

/* Retorna registros onde o sobrenome começa com as letras "A" até "F". */
SELECT * FROM Clientes WHERE Sobrenome BETWEEN 'A' AND 'F';

/* UPDATES */

/* Atualiza o email para "novo_email@email.com" apenas para registros onde o sobrenome é "Silva". */
UPDATE Clientes SET Email = 'novo_email@email.com' WHERE Sobrenome = 'Silva';

/* Atualiza o status para "Ativo" apenas para registros onde a idade é maior que 18. */
UPDATE Clientes SET [Status] = 'Ativo' WHERE [Idade] > 18;

/* Atualiza o status para "Inativo" apenas para registros onde o sobrenome é "Silva" e a idade é menor que 18. */
UPDATE Clientes SET [Status] = 'Inativo' WHERE Sobrenome = 'Silva' AND Idade < 18;


/* Adiciona uma nova coluna chamada Telefone apenas se ela ainda não existir na tabela Clientes. */
ALTER TABLE Clientes 
ADD Telefone VARCHAR(20) NULL; 

/* Modifica o tipo de dados da coluna Email para VARCHAR(100) apenas se ela já existir na tabela Clientes. */
ALTER TABLE Clientes 
ALTER COLUMN Email VARCHAR(100);

/* Adiciona uma chave primária à coluna ClienteID apenas se ainda não houver uma chave primária na tabela Clientes. */
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME = 'PK_Clientes')
BEGIN
    ALTER TABLE Clientes
    ADD CONSTRAINT PK_Clientes PRIMARY KEY (ClienteID);
END;

/* Delete */


/* Exclui registros onde o sobrenome é "Silva". */
DELETE FROM Clientes WHERE Sobrenome = 'Silva';

/* Exclui registros onde a idade é maior que 18. */
DELETE FROM Clientes WHERE Idade > 18;

/* Exclui registros onde o sobrenome é "Silva" e a idade é menor que 18. */
DELETE FROM Clientes WHERE Sobrenome = 'Silva' AND Idade < 18;

/* DROP */


/* Exclui a tabela chamada Clientes. */
DROP TABLE IF EXISTS Clientes;

/* Exclui a chave primária chamada PK_Clientes da tabela Clientes. */
ALTER TABLE Clientes DROP CONSTRAINT IF EXISTS PK_Clientes;

/* Exclui a chave estrangeira chamada FK_ProdutoID da tabela Pedidos. */
ALTER TABLE Pedidos DROP CONSTRAINT IF EXISTS FK_ProdutoID;


