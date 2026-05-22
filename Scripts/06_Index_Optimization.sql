CREATE NONCLUSTERED INDEX IX_Ventas_ProductoID
ON Ventas (ProductoID);
GO

CREATE NONCLUSTERED INDEX IX_Ventas_ProductoID_Includes
ON Ventas (ProductoID)
INCLUDE (VentaID, ClienteID, Cantidad, FechaVenta);
GO

SELECT ProductoID
FROM Ventas
WHERE ProductoID = 2;
GO

SELECT VentaID, ClienteID, ProductoID, Cantidad, FechaVenta
FROM Ventas
WHERE ProductoID = 2;
GO
