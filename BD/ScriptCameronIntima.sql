USE [cameronIntima]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 14/11/2024 17:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Cliente] [varchar](255) NOT NULL,
	[Telefono] [varchar](255) NULL,
	[Correo] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contactanos_consulta]    Script Date: 14/11/2024 17:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contactanos_consulta](
	[id_msj] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[asunto] [nvarchar](50) NULL,
	[mensaje] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Imagenes]    Script Date: 14/11/2024 17:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Imagenes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[Imagen] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 14/11/2024 17:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[categoria] [nvarchar](50) NULL,
	[descripcion] [nvarchar](50) NULL,
	[talle] [nvarchar](50) NULL,
	[color] [nvarchar](50) NULL,
	[precio] [money] NULL,
	[dirImagen] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles_Usuarios]    Script Date: 14/11/2024 17:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles_Usuarios](
	[ID_Usuarios] [int] IDENTITY(1,1) NOT NULL,
	[name_User] [nvarchar](50) NULL,
	[pass_User] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ventas]    Script Date: 14/11/2024 17:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ventas](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDCliente] [int] NOT NULL,
	[Fecha] [datetime] NULL,
	[Total] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ventasitems]    Script Date: 14/11/2024 17:59:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ventasitems](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDVenta] [int] NOT NULL,
	[IDProducto] [int] NOT NULL,
	[PrecioUnitario] [float] NULL,
	[Cantidad] [float] NULL,
	[PrecioTotal] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD  CONSTRAINT [FK_ventas_clientes] FOREIGN KEY([IDCliente])
REFERENCES [dbo].[clientes] ([ID])
GO
ALTER TABLE [dbo].[ventas] CHECK CONSTRAINT [FK_ventas_clientes]
GO
ALTER TABLE [dbo].[ventasitems]  WITH CHECK ADD  CONSTRAINT [FK_ventasitems_productos] FOREIGN KEY([IDProducto])
REFERENCES [dbo].[productos] ([ID])
GO
ALTER TABLE [dbo].[ventasitems] CHECK CONSTRAINT [FK_ventasitems_productos]
GO
ALTER TABLE [dbo].[ventasitems]  WITH CHECK ADD  CONSTRAINT [FK_ventasitems_ventas] FOREIGN KEY([IDVenta])
REFERENCES [dbo].[ventas] ([ID])
GO
ALTER TABLE [dbo].[ventasitems] CHECK CONSTRAINT [FK_ventasitems_ventas]
GO
