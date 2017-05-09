CREATE TABLE [dbo].[Table]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [ResourceType] NVARCHAR(10) NOT NULL, 
    [AmountRequest] NUMERIC(0) NOT NULL DEFAULT 0, 
    [DeliveryDate] DATE NOT NULL, 
    [DeleteEvent] BIT NOT NULL DEFAULT 0, 
    [Organization] NVARCHAR(25) NULL, 
    [AddressLine1] NVARCHAR(25) NOT NULL, 
    [AddressLine2] NVARCHAR(25) NULL, 
    [City] NVARCHAR(15) NOT NULL, 
    [State] NVARCHAR(2) NOT NULL, 
    [ZipCode] INT NOT NULL, 
    [Notes] NVARCHAR(MAX) NULL, 
    [Requester] NVARCHAR(15) NOT NULL 
)
