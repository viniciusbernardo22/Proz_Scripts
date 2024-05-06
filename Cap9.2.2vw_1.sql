
CREATE VIEW vw_1 AS
SELECT Clientes.IDCliente, Clientes.Nome AS NomeCliente, Clientes.Email,
       Pedidos.IDPedido, Pedidos.IDCliente AS IDClientePedido, Pedidos.DataPedido, Pedidos.ValorTotal
FROM Clientes
RIGHT JOIN Pedidos ON Clientes.IDCliente = Pedidos.IDCliente;


