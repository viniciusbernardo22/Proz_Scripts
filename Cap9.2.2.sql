
CREATE TABLE Clientes (
    IDCliente INT PRIMARY KEY,
    Nome VARCHAR(100),
    Email VARCHAR(100)
);

CREATE TABLE Pedidos (
    IDPedido INT PRIMARY KEY,
    IDCliente INT,
    DataPedido DATE,
    ValorTotal DECIMAL(10, 2),
    FOREIGN KEY (IDCliente) REFERENCES Clientes(IDCliente)
);

/* Inserindo dados na tabela clientes */
INSERT INTO Clientes (IDCliente, Nome, Email)
VALUES
    (1, 'João Silva', 'joao@example.com'),
    (2, 'Maria Santos', 'maria@example.com'),
    (3, 'José Oliveira', 'jose@example.com');

/* Inserindo dados na tabela Pedidos */
INSERT INTO Pedidos (IDPedido, IDCliente, DataPedido, ValorTotal)
VALUES
    (101, 1, '2024-05-01', 50.00),
    (102, 2, '2024-05-02', 35.50),
    (103, 1, '2024-05-03', 28.75),
    (104, 3, '2024-05-03', 42.20);

