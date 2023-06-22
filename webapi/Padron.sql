USE [master]
GO
/****** Object:  Database [Padron]    Script Date: 6/18/2023 9:19:18 PM ******/
CREATE DATABASE [Padron]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Padron', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Padron.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Padron_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Padron_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Padron] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Padron].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Padron] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Padron] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Padron] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Padron] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Padron] SET ARITHABORT OFF 
GO
ALTER DATABASE [Padron] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Padron] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Padron] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Padron] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Padron] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Padron] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Padron] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Padron] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Padron] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Padron] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Padron] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Padron] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Padron] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Padron] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Padron] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Padron] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Padron] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Padron] SET RECOVERY FULL 
GO
ALTER DATABASE [Padron] SET  MULTI_USER 
GO
ALTER DATABASE [Padron] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Padron] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Padron] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Padron] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Padron] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Padron] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Padron', N'ON'
GO
ALTER DATABASE [Padron] SET QUERY_STORE = ON
GO
ALTER DATABASE [Padron] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Padron]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 6/18/2023 9:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](50) NOT NULL,
	[Apellidos] [varchar](100) NOT NULL,
	[Sexo] [varchar](50) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[Cedula] [varchar](13) NOT NULL,
	[Direccion] [varchar](500) NOT NULL,
	[LugarNacimiento] [varchar](500) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
 CONSTRAINT [PK_Solicitudes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Padron] SET  READ_WRITE 
GO
