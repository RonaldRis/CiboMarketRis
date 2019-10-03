

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------


CREATE TABLE [DireccionCliente] (
    [idDireccionCliente] int PRIMARY KEY IDENTITY(1,1) NOT NULL,
    [lon] int  NULL,
    [lat] int  NULL,
    [idUser] int  NULL,
    [descripcion] varchar(100)  NULL
);
GO
CREATE TABLE [DireccionRestaurante] (
    [idDireccionRestaurante] int PRIMARY KEY IDENTITY(1,1) NOT NULL,
    [lon] int  NULL,
    [lat] int  NULL,
    [idRestaurante] int  NULL,
    [descripcion] varchar(100)  NULL
);
GO
-- Creating table 'pedidos'
CREATE TABLE [pedidos] (
    [idPedido] int PRIMARY KEY IDENTITY(1,1) NOT NULL,
    [idDireccionCliente] int  NOT NULL,
	[idDireccionRestaurante] int  NOT NULL,
    [idRepartidor] int NOT NULL,
    [fechaPedido] datetime  NULL,
    [comentarios] varchar(200)  NULL,
    [estadoPedido] varchar(30)  NULL,
    [estadoPago] varchar(30)  NULL,
    [puntajeServicio] real  NULL,
	[comisionRepartidor] real,
    [metodoPago] varchar(50) NOT NULL,
	[respuesta_Inconveniente_interno] varchar(200) NULL
);
GO
CREATE TABLE [CategoriasProductos] (
    [id_CategoriasProductos] int PRIMARY KEY IDENTITY(1,1) NOT NULL,
    [categoria_nombre] VARCHAR(50) NOT NULL,
	[id_Restaurante] int NOT NULL,
);
GO
-- Creating table 'platillos'
CREATE TABLE [platillos] (
    [id_Platillo] int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[idImagen] int NOT NULL,
    [id_CategoriasProductos] int NOT  NULL,
	[nombre] varchar(60)  NULL,
    [descp] varchar(200)  NULL,
    [precio] real NOT NULL,
    tiempoMinutosMax int not null,
	hasSize bit not null,
	isActive bit not null
	
);
GO voy aqui!!!
CREATE TABLE PlatilloSize(
	id_platillo_size int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	sizeDesc varchar(30) not null,
	Descripcion varchar(50) null,
	precio real not null,
	id_Platillo int not null
);
GO
-- Creating table 'platillosPedidos'
CREATE TABLE [platillosPedidos] (
    [idPlatPed] int IDENTITY(1,1) NOT NULL,
    [idPed] int  NULL,
    [idPlat] int  NULL,
    [cant] int  NULL,
    [subtotal] real  NULL
);
GO

-- Creating table 'repartidor'
CREATE TABLE [repartidor] (
    [idRepartidor] int IDENTITY(1,1) NOT NULL,
    [username] varchar(30)  NULL,
    [nombre] varchar(30)  NULL,
    [apellido] varchar(30)  NULL,
    [pass] varchar(30)  NULL,
    [numTelefono] varchar(20)  NULL,
    [salarioAcumulado] real  NULL
);
GO

-- Creating table 'restaurante'
CREATE TABLE [restaurante] (
    [idRes] int IDENTITY(1,1) NOT NULL,
    [nombre] varchar(30)  NULL,
    [rating] real  NULL,
    [imgLogo] varchar(150)  NULL,
    [xlat] real  NULL,
    [ylon] real  NULL,
    [descp] varchar(200)  NULL,
    [horaS] varchar(15)  NULL,
    [horaE] varchar(15)  NULL,
    [imgLaye] varchar(150)  NULL,
    [pass] varchar(30)  NULL,
    [PersonaEncargada] varchar(40)  NULL,
    [NumTelefono] varchar(20)  NULL
);
GO

-- Creating table 'sucursales'
CREATE TABLE [sucursales] (
    [idSucursal] int IDENTITY(1,1) NOT NULL,
    [idRestaurante] int  NULL,
    [nombre_sucursal] varchar(70)  NULL,
    [departamento] varchar(16)  NULL,
    [municipio] varchar(30)  NULL,
    [lugar_referencia] varchar(200)  NULL,
    [ylon] real  NULL,
    [xlat] real  NULL,
    [encargado] varchar(50)  NULL,
    [password] varchar(20)  NULL
);
GO

-- Creating table 'usuario'
CREATE TABLE [usuario] (
    [idUser] int IDENTITY(1,1) NOT NULL,
    [C_User] varchar(20)  NULL,
    [nombre] varchar(30)  NULL,
    [lastname] varchar(30)  NULL,
    [pass] varchar(30)  NULL,
    [NumTelefono] varchar(20)  NULL
);
GO



-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------
ALTER TABLE platillos
ADD CONSTRAINT FK_platillos_restaurante
    FOREIGN KEY (idRes)
    REFERENCES restaurante (idRes);
-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------


INSERT INTO RESTAURANTE(nombre,imgLogo,rating,xlat,ylon,descp,horaS,horaE,imgLaye,pass,PersonaEncargada,NumTelefono)   VALUES  ( 'Little Ceasars','logolittlec.png',5,13.99436,-89.55682,'Las pizzas más rápidas','10:30-PM','9:00-AM','layerlittlec.jpg','wearethebest','Hector Escalante','25242625')
INSERT INTO RESTAURANTE(nombre,imgLogo,rating,xlat,ylon,descp,horaS,horaE,imgLaye,pass,PersonaEncargada,NumTelefono)   VALUES  ( 'Buffalo Wings','buffaloicon.png',5,13.97066,-89.56662,'El Papá de las alitas','11:00-PM','12:00-md','Chicken.jpg','alitasredhot','Mauricio Samayoa','25241478')
INSERT INTO RESTAURANTE(nombre,imgLogo,rating,xlat,ylon,descp,horaS,horaE,imgLaye,pass,PersonaEncargada,NumTelefono)   VALUES  ( 'Starbucks','IconStarbucks.png',4.4,13.97768,-89.56365,'Café - Chocolate - Latte','9:00-PM','7:30-AM','LayelStarbucks.jpg','alitasredhot','Elisa Pereira','24262829')
INSERT INTO RESTAURANTE(nombre,imgLogo,rating,xlat,ylon,descp,horaS,horaE,imgLaye,pass,PersonaEncargada,NumTelefono)   VALUES  ( 'Lacalaca','lacalaca.png',4.3,13.97805,-89.56509,'Taquería','9:00-PM','9:00-AM','LayelLaCalaca.png','Confirm','Samuel Gonzales','22103621')
INSERT INTO RESTAURANTE(nombre,imgLogo,rating,xlat,ylon,descp,horaS,horaE,imgLaye,pass,PersonaEncargada,NumTelefono)   VALUES  ( 'Panda Express','IconPanda.png',4.4,13.97736,-89.56479,'Comida China','9:00-PM','11:00-AM','LayelPanda.jpg','Confirm','Samuel Gonzales','2231 6268')
INSERT INTO RESTAURANTE(nombre,imgLogo,rating,xlat,ylon,descp,horaS,horaE,imgLaye,pass,PersonaEncargada,NumTelefono)   VALUES  ( 'Mc Donalds','IconMcDonalds.png',4.3,13.97629,-89.5643,'Comida Rapida','9:00-PM','8:00-AM','LayelMcDonald.jpg','Confirm','Samuel Gonzales','2509 9999')


SELECT * FROM Restaurante

INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(1,'Pizza de Jamon','Pizza grande 8 rebanadas',5,'imgpizzajamon.png','Pizzas')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(1,'Pizza de peperoni','Pizza grande 8 rebanadas',5,'imgpizzapepe.png','Pizzas')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(1,'Sausage Pizza','Grande',6,'SAUSAPIZZA.png','Pizzas')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(1,'Stuffed Crazy Bread','4 pc con queso dentro',2.45,'palitroques.png','Otros')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(1,'Stuffed Crazy Bread','8 pc con queso dentro',4.5,'palitroques.png','Otros')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(1,'Stuffed Crazy Bread','16 pc con queso dentro',7.99,'palitroques.png','Otros')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(1,'Pizza de Peperoni','Pizza Gigante 8 rebanadas',7.25,'imgpizzapepe.png','Pizzas')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(2,'Traditional Wings',' 6 Alitas',3.25,'TRADITIONALWIN.PNG','WINGS')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(2,'Traditional Wings',' 12 Alitas',6,'TRADITIONALWIN.PNG','WINGS')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(2,'Boneless wings','6 Alitas',4,'Boneless.PNG','WINGS')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(2,'Boneless wings','12 Alitas',7.5,'Boneless.PNG','WINGS')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(2,'Bayou PoBoy','Big Sandwich',4,'Bayou.PNG','SANDWICHES')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(2,'Bayou PoBoy','Small Sandwich',2.5,'Bayou.PNG','SANDWICHES')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(3,'Caffe Latte','Pequeño',2.85,'caffelattestar.jpg','Cafe')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(3,'Caffe Latte','Mediano',3.45,'caffelattestar.jpg','Cafe')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(3,'Caffe Latte','Grande',3.95,'caffelattestar.jpg','Cafe')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(3,'Caffe Mocha','Pequeño',3.35,'icedcafemocha.jpg','Cafe')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(3,'Caffe Mocha','Mediano',3.95,'icedcafemocha.jpg','Cafe')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(3,'Caffe Mocha','Grande',4.45,'icedcafemocha.jpg','Cafe')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(3,'white chocolate mocha','Pequeño',3.65,'whitechocolatemochafrapp.jpg','Cafe')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(3,'white chocolate mocha','Mediano',4.25,'whitechocolatemochafrapp.jpg','Cafe')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(3,'white chocolate mocha','Grande',4.65,'whitechocolatemochafrapp.jpg','Cafe')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(3,'Caramel Flan Latte','Pequeño',3.75,'caramelflanlatte.jpg','Cafe')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(3,'Caramel Flan Latte','Mediano',4.55,'caramelflanlatte.jpg','Cafe')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(3,'Caramel Flan Latte','Grande',4.75,'caramelflanlatte.jpg','Cafe')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(3,'Cheese Danish','Rico pan con queso',2.45,'cheesedanish.jpg','Bakery')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(4,'La Tortuga','Torta C/ Frijoles,Guacamole,Cebollitas,Chile Chipotle',5.49,'tortuga.png','Los Especiales')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(4,'Los Volcanes','Crujiente tortilla LACA con carne de su elección y delicioso queso derretido. ',4.55,'losvolcanes.png','Pa Compartir')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(4,'Los Sopes','Estas delicias orogonadas en el noreste de México las hacemos al puro estilo tradicional',6.25,'lossopes.png','Pa Compartir')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(4,'La Gringa Árabe','La gringa se volvió árabe, delicioso pan LACA, con carne de entrañas y queso.  ',7.79,'lagringaarabe.png','Los Especiales')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(4,'La Gringa Árabe','La gringa se volvió árabe, delicioso pan LACA, vegetariana y queso. ',3.49,'lagringaarabe.png','Los Especiales')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(5,'Orange Chicken','Crujiente pollo sazonado con salsa agridulce y picante.',6.5,'OrangeChicken.jpg','PlatosPrincipales')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(5,'Kung Pao Chicken','Pechuga de pollo, pimientos rojos y piñas mezclados en el wok.',7,'KungPaoChicken.jpg','PlatosPrincipales')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(5,'Mushroom Chicken','Pollo, chapiñones y calabacin salteados al wok.',6.5,'MushrooChicken.jpg','PlatosPrincipales')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(5,'Fortune Cookies','Galletas de la fortuna.',2.99,'FortuneCookies.jpg','Postres')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(6,'Bigmac','Hamburguesa, papas y soda.',6.99,'BigMac.jpg','Combomeal')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(6,'Quarter Pounder Deluxe','Hamburguesa clasica.',4.5,'QuarterPounder.jpg','Hamburguesas')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(6,'Happy Meal','Hamburguesa, papas y leche.',6,'HappyMeal.jpg','Happymeal')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(6,'Egg McMuffin Meal','Egg McMuffin, Café y HashBrowns',3.5,'EgMcMuffin.jpg','Combomeal')
INSERT INTO PLATILLOS (idRes,Nombre ,Descp ,Price ,ImgPath ,Categoria) values(6,'Sausage McMuffin','Un muffin calientito con salchicha y queso americano.',2.99,'SauasageMcMuffin.jpg','Desayunos')



SELECT * FROM platillos