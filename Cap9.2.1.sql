
CREATE DATABASE [DB_LOJA]
/* Criando Tabela Clientes */
CREATE TABLE [Clientes] (
     IDCliente INT IDENTITY UNIQUE,
     Nome NVARCHAR
)

/* Criando Tabela Pedidos */
CREATE TABLE [Pedidos] (
    IDCliente INT,
)

/* Juntando Pedidos cujo o IDCliente seja correspondente ao Cliente */
SELECT *
FROM Clientes
INNER JOIN Pedidos ON Clientes.IDCliente = Pedidos.IDCliente;


/* Utilizando Left join */
SELECT *
FROM Clientes
LEFT JOIN Pedidos ON Clientes.IDCliente = Pedidos.IDCliente;

/* Utilizando Right join */
SELECT *
FROM Clientes
RIGHT JOIN Pedidos ON Clientes.IDCliente = Pedidos.IDCliente;

/* Utilizando Full Outer join */
SELECT *
FROM Clientes
FULL OUTER JOIN Pedidos ON Clientes.IDCliente = Pedidos.IDCliente;


