-- Compruebo los datos del Dataset importado:
SELECT name
FROM sys.tables;
SELECT TOP 10 *
FROM dbo.DataCoSupplyChain;

-- Además, me aseguro del tipo de dato de cada columna aunque hemos podido observarlo a la hora de importarlos:
SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'DataCoSupplyChain'
ORDER BY ORDINAL_POSITION;

-- Creo una vista con las columnas que me ayuden a responder las preguntas en PowerBI. De esa forma, evito cargar el grueso de la base de datos al modelo de Power Query:
CREATE OR ALTER VIEW dbo.DataSupplyChainBI AS
SELECT
order_date_DateOrders,
shipping_date_DateOrders,
Sales,
Order_Profit_Per_Order,
Benefit_per_order,
Order_Item_Quantity,
Product_Name,
Category_Name,
Department_Name,
Product_Price,
Customer_Segment,
Customer_Id,
Market,
Order_Region,
Order_Country,
Order_State,
Order_City,
Shipping_Mode,
Delivery_Status,
Late_delivery_risk,
Days_for_shipping_real,
Days_for_shipment_scheduled,
Order_Status,
Order_Id,
Order_Item_Id,
Product_Card_Id
FROM dbo.DataCoSupplyChain;
GO

-- Compruebo el filtrado:
SELECT TOP 100 *
FROM dbo.DataSupplyChainBI;

--Tras realizar la vista con los datos ya filtrados, me dispongo a modelarlos en PowerQuery y responder a las preguntas en PowerBI.