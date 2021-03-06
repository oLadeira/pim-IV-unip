USE [master]
GO
/****** Object:  Database [HotelMountain]    Script Date: 17/11/2021 19:33:59 ******/
CREATE DATABASE [HotelMountain]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HotelMountain', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\HotelMountain.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HotelMountain_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\HotelMountain_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [HotelMountain] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HotelMountain].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HotelMountain] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HotelMountain] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HotelMountain] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HotelMountain] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HotelMountain] SET ARITHABORT OFF 
GO
ALTER DATABASE [HotelMountain] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HotelMountain] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HotelMountain] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HotelMountain] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HotelMountain] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HotelMountain] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HotelMountain] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HotelMountain] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HotelMountain] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HotelMountain] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HotelMountain] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HotelMountain] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HotelMountain] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HotelMountain] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HotelMountain] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HotelMountain] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HotelMountain] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HotelMountain] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HotelMountain] SET  MULTI_USER 
GO
ALTER DATABASE [HotelMountain] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HotelMountain] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HotelMountain] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HotelMountain] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HotelMountain] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HotelMountain] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [HotelMountain] SET QUERY_STORE = OFF
GO
USE [HotelMountain]
GO
/****** Object:  User [teste]    Script Date: 17/11/2021 19:33:59 ******/
CREATE USER [teste] FOR LOGIN [teste] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [teste]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [teste]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [teste]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [teste]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [teste]
GO
ALTER ROLE [db_datareader] ADD MEMBER [teste]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [teste]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [teste]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [teste]
GO
/****** Object:  Table [dbo].[cargo]    Script Date: 17/11/2021 19:33:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cargo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cargo] [varchar](100) NOT NULL,
	[salario] [float] NOT NULL,
 CONSTRAINT [PK_cargo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[checkIn]    Script Date: 17/11/2021 19:34:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[checkIn](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cpfHospede] [varchar](50) NOT NULL,
	[idQuarto] [int] NOT NULL,
	[entrada] [date] NOT NULL,
	[saida] [date] NOT NULL,
	[dias] [int] NOT NULL,
 CONSTRAINT [PK_checkIn] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[checkOut]    Script Date: 17/11/2021 19:34:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[checkOut](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cpfHosped] [varchar](50) NOT NULL,
	[idQuarto] [int] NOT NULL,
	[entrada] [date] NOT NULL,
	[saida] [date] NOT NULL,
	[dias] [int] NOT NULL,
	[total] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_checkOut] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estado]    Script Date: 17/11/2021 19:34:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estado](
	[id] [int] NOT NULL,
	[nome] [varchar](100) NOT NULL,
	[uf] [varchar](2) NOT NULL,
	[ibge] [int] NOT NULL,
	[pais] [int] NOT NULL,
	[ddd] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fornecedor]    Script Date: 17/11/2021 19:34:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fornecedor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nomeFantasia] [varchar](100) NOT NULL,
	[razaoSocial] [varchar](100) NOT NULL,
	[endereco] [varchar](100) NOT NULL,
	[cnpj] [varchar](100) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[telefone] [varchar](50) NOT NULL,
	[categoria] [varchar](100) NOT NULL,
 CONSTRAINT [PK_fornecedor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[funcionario]    Script Date: 17/11/2021 19:34:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[funcionario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](100) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[cpf] [varchar](100) NOT NULL,
	[cep] [varchar](100) NOT NULL,
	[estadoCivil] [varchar](100) NOT NULL,
	[telefone] [varchar](100) NOT NULL,
	[sexo] [varchar](100) NOT NULL,
	[endereco] [varchar](100) NOT NULL,
	[numero] [varchar](10) NOT NULL,
	[cargo] [int] NOT NULL,
	[turno] [varchar](50) NOT NULL,
 CONSTRAINT [PK__funciona__3213E83FE7DB8FCB] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hospede]    Script Date: 17/11/2021 19:34:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hospede](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](100) NOT NULL,
	[telefone] [varchar](50) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[cpf] [varchar](100) NOT NULL,
	[cep] [varchar](100) NOT NULL,
	[endereco] [varchar](100) NOT NULL,
	[numeroEndereco] [varchar](100) NOT NULL,
	[estado] [int] NOT NULL,
	[cidade] [varchar](100) NOT NULL,
 CONSTRAINT [PK_hospede] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loginFuncionarios]    Script Date: 17/11/2021 19:34:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loginFuncionarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[login] [varchar](30) NOT NULL,
	[senha] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[produto]    Script Date: 17/11/2021 19:34:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[produto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](100) NOT NULL,
	[categoria] [varchar](100) NOT NULL,
	[quantidade] [int] NOT NULL,
	[valorCompra] [decimal](18, 2) NOT NULL,
	[valorVenda] [decimal](18, 2) NOT NULL,
	[fornecedor] [int] NOT NULL,
 CONSTRAINT [PK_produto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quarto]    Script Date: 17/11/2021 19:34:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quarto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[categoria] [varchar](50) NOT NULL,
	[valor] [decimal](10, 2) NOT NULL,
	[numero] [varchar](50) NOT NULL,
	[status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_quarto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[checkIn]  WITH CHECK ADD FOREIGN KEY([idQuarto])
REFERENCES [dbo].[quarto] ([id])
GO
ALTER TABLE [dbo].[checkIn]  WITH CHECK ADD  CONSTRAINT [FK_checkIn_checkIn] FOREIGN KEY([id])
REFERENCES [dbo].[checkIn] ([id])
GO
ALTER TABLE [dbo].[checkIn] CHECK CONSTRAINT [FK_checkIn_checkIn]
GO
ALTER TABLE [dbo].[checkOut]  WITH CHECK ADD FOREIGN KEY([idQuarto])
REFERENCES [dbo].[quarto] ([id])
GO
ALTER TABLE [dbo].[funcionario]  WITH CHECK ADD  CONSTRAINT [fk_cargos] FOREIGN KEY([cargo])
REFERENCES [dbo].[cargo] ([id])
GO
ALTER TABLE [dbo].[funcionario] CHECK CONSTRAINT [fk_cargos]
GO
ALTER TABLE [dbo].[hospede]  WITH CHECK ADD FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[hospede]  WITH CHECK ADD FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[produto]  WITH CHECK ADD FOREIGN KEY([fornecedor])
REFERENCES [dbo].[fornecedor] ([id])
GO
USE [master]
GO
ALTER DATABASE [HotelMountain] SET  READ_WRITE 
GO
