
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/03/2019 16:47:29
-- Generated from EDMX file: C:\Users\CDS12\source\repos\CiboAll\CiboApi\ciboAPI\Models\ModelData.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [CiboMarketDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_CategoriasProductos_restaurante]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CategoriasProductos] DROP CONSTRAINT [FK_CategoriasProductos_restaurante];
GO
IF OBJECT_ID(N'[dbo].[FK_DireccionCliente_usuario]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DireccionCliente] DROP CONSTRAINT [FK_DireccionCliente_usuario];
GO
IF OBJECT_ID(N'[dbo].[FK_DireccionRestaurante_restaurante]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DireccionRestaurante] DROP CONSTRAINT [FK_DireccionRestaurante_restaurante];
GO
IF OBJECT_ID(N'[dbo].[FK_Empleado_restaurante]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_Empleado_restaurante];
GO
IF OBJECT_ID(N'[dbo].[FK_pedidos_DireccionCliente]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[pedidos] DROP CONSTRAINT [FK_pedidos_DireccionCliente];
GO
IF OBJECT_ID(N'[dbo].[FK_pedidos_DireccionRestaurante]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[pedidos] DROP CONSTRAINT [FK_pedidos_DireccionRestaurante];
GO
IF OBJECT_ID(N'[dbo].[FK_pedidos_repartidor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[pedidos] DROP CONSTRAINT [FK_pedidos_repartidor];
GO
IF OBJECT_ID(N'[dbo].[FK_platillos_CategoriasProductos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[platillos] DROP CONSTRAINT [FK_platillos_CategoriasProductos];
GO
IF OBJECT_ID(N'[dbo].[FK_platillos_Imagenes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[platillos] DROP CONSTRAINT [FK_platillos_Imagenes];
GO
IF OBJECT_ID(N'[dbo].[FK_PlatilloSize_platillos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PlatilloSize] DROP CONSTRAINT [FK_PlatilloSize_platillos];
GO
IF OBJECT_ID(N'[dbo].[FK_platillosPedidos_pedidos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[platillosPedidos] DROP CONSTRAINT [FK_platillosPedidos_pedidos];
GO
IF OBJECT_ID(N'[dbo].[FK_platillosPedidos_platillos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[platillosPedidos] DROP CONSTRAINT [FK_platillosPedidos_platillos];
GO
IF OBJECT_ID(N'[dbo].[FK_restaurante_Imagenes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[restaurante] DROP CONSTRAINT [FK_restaurante_Imagenes];
GO
IF OBJECT_ID(N'[dbo].[FK_restaurante_Imagenes1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[restaurante] DROP CONSTRAINT [FK_restaurante_Imagenes1];
GO
IF OBJECT_ID(N'[dbo].[FK_RetirosRepartidor_repartidor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RetirosRepartidor] DROP CONSTRAINT [FK_RetirosRepartidor_repartidor];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[CategoriasProductos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CategoriasProductos];
GO
IF OBJECT_ID(N'[dbo].[DireccionCliente]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DireccionCliente];
GO
IF OBJECT_ID(N'[dbo].[DireccionRestaurante]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DireccionRestaurante];
GO
IF OBJECT_ID(N'[dbo].[Empleado]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Empleado];
GO
IF OBJECT_ID(N'[dbo].[Imagenes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Imagenes];
GO
IF OBJECT_ID(N'[dbo].[pedidos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[pedidos];
GO
IF OBJECT_ID(N'[dbo].[platillos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[platillos];
GO
IF OBJECT_ID(N'[dbo].[PlatilloSize]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PlatilloSize];
GO
IF OBJECT_ID(N'[dbo].[platillosPedidos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[platillosPedidos];
GO
IF OBJECT_ID(N'[dbo].[repartidor]', 'U') IS NOT NULL
    DROP TABLE [dbo].[repartidor];
GO
IF OBJECT_ID(N'[dbo].[restaurante]', 'U') IS NOT NULL
    DROP TABLE [dbo].[restaurante];
GO
IF OBJECT_ID(N'[dbo].[RetirosRepartidor]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RetirosRepartidor];
GO
IF OBJECT_ID(N'[dbo].[usuario]', 'U') IS NOT NULL
    DROP TABLE [dbo].[usuario];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'CategoriasProductos'
CREATE TABLE [dbo].[CategoriasProductos] (
    [id_CategoriasProductos] int IDENTITY(1,1) NOT NULL,
    [categoria_nombre] varchar(50)  NOT NULL,
    [id_Restaurante] int  NOT NULL,
    [isActive] bit  NOT NULL
);
GO

-- Creating table 'DireccionCliente'
CREATE TABLE [dbo].[DireccionCliente] (
    [idDireccionCliente] int IDENTITY(1,1) NOT NULL,
    [lon] int  NULL,
    [lat] int  NULL,
    [idUser] int  NULL,
    [descripcion] varchar(100)  NULL
);
GO

-- Creating table 'DireccionRestaurante'
CREATE TABLE [dbo].[DireccionRestaurante] (
    [idDireccionRestaurante] int IDENTITY(1,1) NOT NULL,
    [lon] int  NULL,
    [lat] int  NULL,
    [id_Restaurante] int  NULL,
    [descripcion] varchar(100)  NULL
);
GO

-- Creating table 'Empleado'
CREATE TABLE [dbo].[Empleado] (
    [id_empleado] int IDENTITY(1,1) NOT NULL,
    [nombre] varchar(50)  NOT NULL,
    [apellido] varchar(50)  NOT NULL,
    [direccion] varchar(150)  NULL,
    [numTelefono] varchar(20)  NULL,
    [correo] varchar(70)  NOT NULL,
    [username] varchar(30)  NOT NULL,
    [id_Restaurante] int  NOT NULL
);
GO

-- Creating table 'Imagenes'
CREATE TABLE [dbo].[Imagenes] (
    [id_imagen] int IDENTITY(1,1) NOT NULL,
    [imagenName] varchar(100)  NOT NULL
);
GO

-- Creating table 'pedidos'
CREATE TABLE [dbo].[pedidos] (
    [idPedido] int IDENTITY(1,1) NOT NULL,
    [idDireccionCliente] int  NOT NULL,
    [idDireccionRestaurante] int  NOT NULL,
    [idRepartidor] int  NOT NULL,
    [fechaPedido] datetime  NULL,
    [comentarios] varchar(200)  NULL,
    [estadoPedido] varchar(30)  NULL,
    [estadoPago] varchar(30)  NULL,
    [puntajeServicio] real  NULL,
    [comisionRepartidor] real  NULL,
    [metodoPago] varchar(50)  NOT NULL,
    [respuesta_Inconveniente_interno] varchar(200)  NULL
);
GO

-- Creating table 'platillos'
CREATE TABLE [dbo].[platillos] (
    [id_Platillo] int IDENTITY(1,1) NOT NULL,
    [idImagen] int  NOT NULL,
    [id_CategoriasProductos] int  NOT NULL,
    [nombre] varchar(60)  NULL,
    [descp] varchar(200)  NULL,
    [precio] real  NOT NULL,
    [tiempoMinutosMax] int  NOT NULL,
    [hasSize] bit  NOT NULL,
    [isActive] bit  NOT NULL
);
GO

-- Creating table 'PlatilloSize'
CREATE TABLE [dbo].[PlatilloSize] (
    [id_platillo_size] int IDENTITY(1,1) NOT NULL,
    [sizeDesc] varchar(20)  NOT NULL,
    [DescripcionExtra] varchar(50)  NULL,
    [precio] real  NOT NULL,
    [id_Platillo] int  NOT NULL
);
GO

-- Creating table 'platillosPedidos'
CREATE TABLE [dbo].[platillosPedidos] (
    [id_platillosPedidos] int IDENTITY(1,1) NOT NULL,
    [idPedido] int  NULL,
    [id_Platillo] int  NULL,
    [cant] int  NULL,
    [precio] real  NULL,
    [sizeDescripcion] varchar(70)  NULL
);
GO

-- Creating table 'repartidor'
CREATE TABLE [dbo].[repartidor] (
    [idRepartidor] int IDENTITY(1,1) NOT NULL,
    [direccion] varchar(150)  NULL,
    [DUI] varchar(20)  NOT NULL,
    [NIT] varchar(20)  NOT NULL,
    [correo] varchar(70)  NOT NULL,
    [ultimaFechaCobro] datetime  NULL,
    [nombre] varchar(30)  NULL,
    [apellido] varchar(30)  NULL,
    [pass] varchar(30)  NULL,
    [username] varchar(30)  NOT NULL,
    [numTelefono] varchar(20)  NULL,
    [puntajeCalidad] real  NULL
);
GO

-- Creating table 'restaurante'
CREATE TABLE [dbo].[restaurante] (
    [id_Restaurante] int IDENTITY(1,1) NOT NULL,
    [nombre] varchar(30)  NULL,
    [rating] real  NULL,
    [descripcion] varchar(200)  NULL,
    [id_ImagenLogo] int  NOT NULL,
    [id_imgLayer] int  NOT NULL
);
GO

-- Creating table 'RetirosRepartidor'
CREATE TABLE [dbo].[RetirosRepartidor] (
    [idRetirosRepartidor] int IDENTITY(1,1) NOT NULL,
    [fechaCobro] datetime  NOT NULL,
    [cantidadCobrada] real  NOT NULL,
    [idRepartidor] int  NOT NULL
);
GO

-- Creating table 'usuario'
CREATE TABLE [dbo].[usuario] (
    [idUser] int IDENTITY(1,1) NOT NULL,
    [username] varchar(20)  NOT NULL,
    [nombre] varchar(30)  NULL,
    [apellido] varchar(30)  NULL,
    [pass] varchar(30)  NULL,
    [NumTelefono] varchar(20)  NULL,
    [correo] varchar(70)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id_CategoriasProductos] in table 'CategoriasProductos'
ALTER TABLE [dbo].[CategoriasProductos]
ADD CONSTRAINT [PK_CategoriasProductos]
    PRIMARY KEY CLUSTERED ([id_CategoriasProductos] ASC);
GO

-- Creating primary key on [idDireccionCliente] in table 'DireccionCliente'
ALTER TABLE [dbo].[DireccionCliente]
ADD CONSTRAINT [PK_DireccionCliente]
    PRIMARY KEY CLUSTERED ([idDireccionCliente] ASC);
GO

-- Creating primary key on [idDireccionRestaurante] in table 'DireccionRestaurante'
ALTER TABLE [dbo].[DireccionRestaurante]
ADD CONSTRAINT [PK_DireccionRestaurante]
    PRIMARY KEY CLUSTERED ([idDireccionRestaurante] ASC);
GO

-- Creating primary key on [id_empleado] in table 'Empleado'
ALTER TABLE [dbo].[Empleado]
ADD CONSTRAINT [PK_Empleado]
    PRIMARY KEY CLUSTERED ([id_empleado] ASC);
GO

-- Creating primary key on [id_imagen] in table 'Imagenes'
ALTER TABLE [dbo].[Imagenes]
ADD CONSTRAINT [PK_Imagenes]
    PRIMARY KEY CLUSTERED ([id_imagen] ASC);
GO

-- Creating primary key on [idPedido] in table 'pedidos'
ALTER TABLE [dbo].[pedidos]
ADD CONSTRAINT [PK_pedidos]
    PRIMARY KEY CLUSTERED ([idPedido] ASC);
GO

-- Creating primary key on [id_Platillo] in table 'platillos'
ALTER TABLE [dbo].[platillos]
ADD CONSTRAINT [PK_platillos]
    PRIMARY KEY CLUSTERED ([id_Platillo] ASC);
GO

-- Creating primary key on [id_platillo_size] in table 'PlatilloSize'
ALTER TABLE [dbo].[PlatilloSize]
ADD CONSTRAINT [PK_PlatilloSize]
    PRIMARY KEY CLUSTERED ([id_platillo_size] ASC);
GO

-- Creating primary key on [id_platillosPedidos] in table 'platillosPedidos'
ALTER TABLE [dbo].[platillosPedidos]
ADD CONSTRAINT [PK_platillosPedidos]
    PRIMARY KEY CLUSTERED ([id_platillosPedidos] ASC);
GO

-- Creating primary key on [idRepartidor] in table 'repartidor'
ALTER TABLE [dbo].[repartidor]
ADD CONSTRAINT [PK_repartidor]
    PRIMARY KEY CLUSTERED ([idRepartidor] ASC);
GO

-- Creating primary key on [id_Restaurante] in table 'restaurante'
ALTER TABLE [dbo].[restaurante]
ADD CONSTRAINT [PK_restaurante]
    PRIMARY KEY CLUSTERED ([id_Restaurante] ASC);
GO

-- Creating primary key on [idRetirosRepartidor] in table 'RetirosRepartidor'
ALTER TABLE [dbo].[RetirosRepartidor]
ADD CONSTRAINT [PK_RetirosRepartidor]
    PRIMARY KEY CLUSTERED ([idRetirosRepartidor] ASC);
GO

-- Creating primary key on [idUser] in table 'usuario'
ALTER TABLE [dbo].[usuario]
ADD CONSTRAINT [PK_usuario]
    PRIMARY KEY CLUSTERED ([idUser] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [id_Restaurante] in table 'CategoriasProductos'
ALTER TABLE [dbo].[CategoriasProductos]
ADD CONSTRAINT [FK_CategoriasProductos_restaurante]
    FOREIGN KEY ([id_Restaurante])
    REFERENCES [dbo].[restaurante]
        ([id_Restaurante])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CategoriasProductos_restaurante'
CREATE INDEX [IX_FK_CategoriasProductos_restaurante]
ON [dbo].[CategoriasProductos]
    ([id_Restaurante]);
GO

-- Creating foreign key on [id_CategoriasProductos] in table 'platillos'
ALTER TABLE [dbo].[platillos]
ADD CONSTRAINT [FK_platillos_CategoriasProductos]
    FOREIGN KEY ([id_CategoriasProductos])
    REFERENCES [dbo].[CategoriasProductos]
        ([id_CategoriasProductos])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_platillos_CategoriasProductos'
CREATE INDEX [IX_FK_platillos_CategoriasProductos]
ON [dbo].[platillos]
    ([id_CategoriasProductos]);
GO

-- Creating foreign key on [idUser] in table 'DireccionCliente'
ALTER TABLE [dbo].[DireccionCliente]
ADD CONSTRAINT [FK_DireccionCliente_usuario]
    FOREIGN KEY ([idUser])
    REFERENCES [dbo].[usuario]
        ([idUser])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DireccionCliente_usuario'
CREATE INDEX [IX_FK_DireccionCliente_usuario]
ON [dbo].[DireccionCliente]
    ([idUser]);
GO

-- Creating foreign key on [idDireccionCliente] in table 'pedidos'
ALTER TABLE [dbo].[pedidos]
ADD CONSTRAINT [FK_pedidos_DireccionCliente]
    FOREIGN KEY ([idDireccionCliente])
    REFERENCES [dbo].[DireccionCliente]
        ([idDireccionCliente])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_pedidos_DireccionCliente'
CREATE INDEX [IX_FK_pedidos_DireccionCliente]
ON [dbo].[pedidos]
    ([idDireccionCliente]);
GO

-- Creating foreign key on [id_Restaurante] in table 'DireccionRestaurante'
ALTER TABLE [dbo].[DireccionRestaurante]
ADD CONSTRAINT [FK_DireccionRestaurante_restaurante]
    FOREIGN KEY ([id_Restaurante])
    REFERENCES [dbo].[restaurante]
        ([id_Restaurante])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DireccionRestaurante_restaurante'
CREATE INDEX [IX_FK_DireccionRestaurante_restaurante]
ON [dbo].[DireccionRestaurante]
    ([id_Restaurante]);
GO

-- Creating foreign key on [idDireccionRestaurante] in table 'pedidos'
ALTER TABLE [dbo].[pedidos]
ADD CONSTRAINT [FK_pedidos_DireccionRestaurante]
    FOREIGN KEY ([idDireccionRestaurante])
    REFERENCES [dbo].[DireccionRestaurante]
        ([idDireccionRestaurante])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_pedidos_DireccionRestaurante'
CREATE INDEX [IX_FK_pedidos_DireccionRestaurante]
ON [dbo].[pedidos]
    ([idDireccionRestaurante]);
GO

-- Creating foreign key on [id_Restaurante] in table 'Empleado'
ALTER TABLE [dbo].[Empleado]
ADD CONSTRAINT [FK_Empleado_restaurante]
    FOREIGN KEY ([id_Restaurante])
    REFERENCES [dbo].[restaurante]
        ([id_Restaurante])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Empleado_restaurante'
CREATE INDEX [IX_FK_Empleado_restaurante]
ON [dbo].[Empleado]
    ([id_Restaurante]);
GO

-- Creating foreign key on [idImagen] in table 'platillos'
ALTER TABLE [dbo].[platillos]
ADD CONSTRAINT [FK_platillos_Imagenes]
    FOREIGN KEY ([idImagen])
    REFERENCES [dbo].[Imagenes]
        ([id_imagen])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_platillos_Imagenes'
CREATE INDEX [IX_FK_platillos_Imagenes]
ON [dbo].[platillos]
    ([idImagen]);
GO

-- Creating foreign key on [id_ImagenLogo] in table 'restaurante'
ALTER TABLE [dbo].[restaurante]
ADD CONSTRAINT [FK_restaurante_Imagenes]
    FOREIGN KEY ([id_ImagenLogo])
    REFERENCES [dbo].[Imagenes]
        ([id_imagen])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_restaurante_Imagenes'
CREATE INDEX [IX_FK_restaurante_Imagenes]
ON [dbo].[restaurante]
    ([id_ImagenLogo]);
GO

-- Creating foreign key on [id_imgLayer] in table 'restaurante'
ALTER TABLE [dbo].[restaurante]
ADD CONSTRAINT [FK_restaurante_Imagenes1]
    FOREIGN KEY ([id_imgLayer])
    REFERENCES [dbo].[Imagenes]
        ([id_imagen])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_restaurante_Imagenes1'
CREATE INDEX [IX_FK_restaurante_Imagenes1]
ON [dbo].[restaurante]
    ([id_imgLayer]);
GO

-- Creating foreign key on [idRepartidor] in table 'pedidos'
ALTER TABLE [dbo].[pedidos]
ADD CONSTRAINT [FK_pedidos_repartidor]
    FOREIGN KEY ([idRepartidor])
    REFERENCES [dbo].[repartidor]
        ([idRepartidor])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_pedidos_repartidor'
CREATE INDEX [IX_FK_pedidos_repartidor]
ON [dbo].[pedidos]
    ([idRepartidor]);
GO

-- Creating foreign key on [idPedido] in table 'platillosPedidos'
ALTER TABLE [dbo].[platillosPedidos]
ADD CONSTRAINT [FK_platillosPedidos_pedidos]
    FOREIGN KEY ([idPedido])
    REFERENCES [dbo].[pedidos]
        ([idPedido])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_platillosPedidos_pedidos'
CREATE INDEX [IX_FK_platillosPedidos_pedidos]
ON [dbo].[platillosPedidos]
    ([idPedido]);
GO

-- Creating foreign key on [id_Platillo] in table 'PlatilloSize'
ALTER TABLE [dbo].[PlatilloSize]
ADD CONSTRAINT [FK_PlatilloSize_platillos]
    FOREIGN KEY ([id_Platillo])
    REFERENCES [dbo].[platillos]
        ([id_Platillo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PlatilloSize_platillos'
CREATE INDEX [IX_FK_PlatilloSize_platillos]
ON [dbo].[PlatilloSize]
    ([id_Platillo]);
GO

-- Creating foreign key on [id_Platillo] in table 'platillosPedidos'
ALTER TABLE [dbo].[platillosPedidos]
ADD CONSTRAINT [FK_platillosPedidos_platillos]
    FOREIGN KEY ([id_Platillo])
    REFERENCES [dbo].[platillos]
        ([id_Platillo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_platillosPedidos_platillos'
CREATE INDEX [IX_FK_platillosPedidos_platillos]
ON [dbo].[platillosPedidos]
    ([id_Platillo]);
GO

-- Creating foreign key on [idRepartidor] in table 'RetirosRepartidor'
ALTER TABLE [dbo].[RetirosRepartidor]
ADD CONSTRAINT [FK_RetirosRepartidor_repartidor]
    FOREIGN KEY ([idRepartidor])
    REFERENCES [dbo].[repartidor]
        ([idRepartidor])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RetirosRepartidor_repartidor'
CREATE INDEX [IX_FK_RetirosRepartidor_repartidor]
ON [dbo].[RetirosRepartidor]
    ([idRepartidor]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------