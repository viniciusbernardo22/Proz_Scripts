/* Criando Procedure que recebe Id do cliente 
e retorna a contagem dos pedidos */
CREATE PROCEDURE ContarPedidosPorCliente
    @IDCliente INT
AS
BEGIN
    SELECT COUNT(*) AS TotalPedidos
    FROM Pedidos
    WHERE IDCliente = @IDCliente;
END;

/* Execução da procedure */
EXEC ContarPedidosPorCliente @IDCliente = 1;
