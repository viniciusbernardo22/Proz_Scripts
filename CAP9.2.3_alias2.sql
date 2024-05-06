/* Chamando a tabela Clientes de c e Pedidos de p */
SELECT c.Nome, p.IDPedido
FROM Clientes c
JOIN Pedidos p ON c.IDCliente = p.IDCliente;

