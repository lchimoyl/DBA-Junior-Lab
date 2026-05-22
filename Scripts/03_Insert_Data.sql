USE DBAJuniorLab;
GO

INSERT INTO Clientes (Nombre, Correo)
VALUES
('Luis Chimoy', 'luis@gmail.com'),
('Ana Torres', 'ana@gmail.com'),
('Carlos Ruiz', 'carlos@gmail.com');
GO

INSERT INTO Productos (NombreProducto, Precio, Stock)
VALUES
('Laptop Lenovo', 3500.00, 10),
('Mouse Logitech', 120.50, 50),
('Monitor Samsung', 899.99, 15);
GO

INSERT INTO Ventas (ClienteID, ProductoID, Cantidad)
VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 1);
GO

INSERT INTO Ventas (ClienteID, ProductoID, Cantidad, FechaVenta)
SELECT TOP 5000
    1,
    1,
    1,
    DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())
FROM sys.objects a
CROSS JOIN sys.objects b;
GO

UPDATE Ventas
SET ProductoID = CASE
    WHEN VentaID % 3 = 0 THEN 1
    WHEN VentaID % 3 = 1 THEN 2
    ELSE 3
END;
GO
