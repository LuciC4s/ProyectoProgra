USE [master]
GO
/****** Object:  Database [BASE]    Script Date: 22/04/2023 09:39:04 p. m. ******/
CREATE DATABASE [BASE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BASE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BASE.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BASE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BASE_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BASE] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BASE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BASE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BASE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BASE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BASE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BASE] SET ARITHABORT OFF 
GO
ALTER DATABASE [BASE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BASE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BASE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BASE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BASE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BASE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BASE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BASE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BASE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BASE] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BASE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BASE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BASE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BASE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BASE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BASE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BASE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BASE] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BASE] SET  MULTI_USER 
GO
ALTER DATABASE [BASE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BASE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BASE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BASE] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BASE] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BASE] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BASE] SET QUERY_STORE = OFF
GO
USE [BASE]
GO
/****** Object:  Table [dbo].[MODULO]    Script Date: 22/04/2023 09:39:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MODULO](
	[ID_MODULO] [int] NOT NULL,
	[NOMBRE] [nchar](50) NULL,
	[DESCRIPCION] [nchar](50) NULL,
	[PATH] [nchar](50) NULL,
	[NIVEL] [int] NULL,
	[ORDEN] [int] NULL,
	[ID_MODULO_PADRE] [int] NULL,
	[FECHA_CREA] [int] NULL,
	[FECHA_MOD] [int] NULL,
	[USUARIO_CREA] [nchar](50) NULL,
	[USUARIO_MOD] [nchar](50) NULL,
	[ACTIVO] [int] NULL,
 CONSTRAINT [PK_MODULO] PRIMARY KEY CLUSTERED 
(
	[ID_MODULO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERMISO]    Script Date: 22/04/2023 09:39:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERMISO](
	[ID_PERMISO] [int] NOT NULL,
	[ID_MODULO] [int] NULL,
	[ID_ROL] [int] NULL,
	[FECHA_CREA] [int] NULL,
	[FECHA_MOD] [int] NULL,
	[USUARIO_CREA] [nchar](50) NULL,
	[USUARIO_MOD] [nchar](50) NULL,
	[ACTIVO] [int] NULL,
 CONSTRAINT [PK_PERMISO] PRIMARY KEY CLUSTERED 
(
	[ID_PERMISO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ROL]    Script Date: 22/04/2023 09:39:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROL](
	[ID_ROL] [int] NOT NULL,
	[NOMBRE] [nchar](50) NULL,
	[DESCRIPCION] [nchar](50) NULL,
	[ACTIVO] [int] NULL,
	[USUARIO_CREA] [nchar](50) NULL,
	[USUARIO_MOD] [nchar](50) NULL,
	[FECHA_CREA] [int] NULL,
	[FECHA_MOD] [int] NULL,
 CONSTRAINT [PK_ROL] PRIMARY KEY CLUSTERED 
(
	[ID_ROL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIOS]    Script Date: 22/04/2023 09:39:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIOS](
	[ID_USUARIO] [int] NULL,
	[NOMBRE] [nchar](50) NULL,
	[APELLIDO] [nchar](50) NULL,
	[USUARIO] [nchar](20) NULL,
	[PASSWORD] [nchar](20) NULL,
	[ID_ROL] [int] NULL,
	[FECHA_CREA] [int] NULL,
	[USUARIO_CREA] [nchar](50) NULL,
	[USUARIO_MOD] [nchar](50) NULL,
	[CODIGO] [nchar](50) NULL,
	[FECHA_MOD] [int] NULL,
	[ACTIVO] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[MODULO] ([ID_MODULO], [NOMBRE], [DESCRIPCION], [PATH], [NIVEL], [ORDEN], [ID_MODULO_PADRE], [FECHA_CREA], [FECHA_MOD], [USUARIO_CREA], [USUARIO_MOD], [ACTIVO]) VALUES (1, N'INICIO                                            ', N'INICIO SESION                                     ', NULL, 1, 1, 1, 22042023, 22042023, N'LRPEREZ                                           ', N'ACANO                                             ', 1)
INSERT [dbo].[MODULO] ([ID_MODULO], [NOMBRE], [DESCRIPCION], [PATH], [NIVEL], [ORDEN], [ID_MODULO_PADRE], [FECHA_CREA], [FECHA_MOD], [USUARIO_CREA], [USUARIO_MOD], [ACTIVO]) VALUES (2, N'CLIENTES                                          ', N'Cliente                                           ', N'inicio/cliente                                    ', 2, 0, 1, 2222, 555, N'LRPEREZC                                          ', N'LRPEREZC                                          ', 1)
GO
INSERT [dbo].[PERMISO] ([ID_PERMISO], [ID_MODULO], [ID_ROL], [FECHA_CREA], [FECHA_MOD], [USUARIO_CREA], [USUARIO_MOD], [ACTIVO]) VALUES (1, 1, 1, 22042023, 22042023, N'EHERNANDEZ                                        ', N'EHERNANDEZ                                        ', 1)
GO
INSERT [dbo].[ROL] ([ID_ROL], [NOMBRE], [DESCRIPCION], [ACTIVO], [USUARIO_CREA], [USUARIO_MOD], [FECHA_CREA], [FECHA_MOD]) VALUES (1, N'VER                                               ', N'VER TABLA                                         ', 1, N'EHERNANDEZ                                        ', N'LPEREZC                                           ', 22042023, 22042023)
GO
INSERT [dbo].[USUARIOS] ([ID_USUARIO], [NOMBRE], [APELLIDO], [USUARIO], [PASSWORD], [ID_ROL], [FECHA_CREA], [USUARIO_CREA], [USUARIO_MOD], [CODIGO], [FECHA_MOD], [ACTIVO]) VALUES (1, N'Lucia                                             ', N'PEREZ                                             ', N'lrperezc            ', N'123                 ', 1, 2222, N'LRPEREZC                                          ', N'LRPEREZC                                          ', N'0                                                 ', 555, 1)
GO
ALTER TABLE [dbo].[MODULO]  WITH CHECK ADD  CONSTRAINT [FK_MODULO_MODULO] FOREIGN KEY([ID_MODULO_PADRE])
REFERENCES [dbo].[MODULO] ([ID_MODULO])
GO
ALTER TABLE [dbo].[MODULO] CHECK CONSTRAINT [FK_MODULO_MODULO]
GO
ALTER TABLE [dbo].[PERMISO]  WITH CHECK ADD  CONSTRAINT [FK_PERMISO_MODULO] FOREIGN KEY([ID_MODULO])
REFERENCES [dbo].[MODULO] ([ID_MODULO])
GO
ALTER TABLE [dbo].[PERMISO] CHECK CONSTRAINT [FK_PERMISO_MODULO]
GO
ALTER TABLE [dbo].[PERMISO]  WITH CHECK ADD  CONSTRAINT [FK_PERMISO_ROL] FOREIGN KEY([ID_ROL])
REFERENCES [dbo].[ROL] ([ID_ROL])
GO
ALTER TABLE [dbo].[PERMISO] CHECK CONSTRAINT [FK_PERMISO_ROL]
GO
ALTER TABLE [dbo].[USUARIOS]  WITH CHECK ADD  CONSTRAINT [FK_USUARIOS_ROL] FOREIGN KEY([ID_ROL])
REFERENCES [dbo].[ROL] ([ID_ROL])
GO
ALTER TABLE [dbo].[USUARIOS] CHECK CONSTRAINT [FK_USUARIOS_ROL]
GO
USE [master]
GO
ALTER DATABASE [BASE] SET  READ_WRITE 
GO
