
/*nombre: oliver  matricula:18-EIIN-1-154 seccion:0542*/





USE [master]
GO
/****** Object:  Database [UniversityCity]    Script Date: 14/4/2019 6:26:04 p.m. ******/
CREATE DATABASE [UniversityCity]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UniversityCity', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\UniversityCity.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'UniversityCity_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\UniversityCity_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [UniversityCity] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UniversityCity].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UniversityCity] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UniversityCity] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UniversityCity] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UniversityCity] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UniversityCity] SET ARITHABORT OFF 
GO
ALTER DATABASE [UniversityCity] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UniversityCity] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UniversityCity] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UniversityCity] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UniversityCity] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UniversityCity] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UniversityCity] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UniversityCity] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UniversityCity] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UniversityCity] SET  DISABLE_BROKER 
GO
ALTER DATABASE [UniversityCity] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UniversityCity] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UniversityCity] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UniversityCity] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UniversityCity] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UniversityCity] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UniversityCity] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UniversityCity] SET RECOVERY FULL 
GO
ALTER DATABASE [UniversityCity] SET  MULTI_USER 
GO
ALTER DATABASE [UniversityCity] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UniversityCity] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UniversityCity] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UniversityCity] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [UniversityCity] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'UniversityCity', N'ON'
GO
ALTER DATABASE [UniversityCity] SET QUERY_STORE = OFF
GO
USE [UniversityCity]
GO
/****** Object:  Table [dbo].[AulaID]    Script Date: 14/4/2019 6:26:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AulaID](
	[AulaID] [int] NOT NULL,
	[Nombre] [varchar](5) NULL,
	[Edificio] [varchar](5) NULL,
 CONSTRAINT [PK_AulaID] PRIMARY KEY CLUSTERED 
(
	[AulaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CalificacionID]    Script Date: 14/4/2019 6:26:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalificacionID](
	[CalificacionID] [int] NOT NULL,
	[MaestriaID] [int] NULL,
	[EstudianteID] [int] NULL,
	[ProfesorID] [int] NULL,
	[1raParcial] [float] NULL,
	[2doParcial] [float] NULL,
	[ExamenFinal] [float] NULL,
	[Calificacion] [float] NULL,
 CONSTRAINT [PK_CalificacionID] PRIMARY KEY CLUSTERED 
(
	[CalificacionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstudianteID]    Script Date: 14/4/2019 6:26:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstudianteID](
	[EstudianteID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Matricula] [varchar](6) NULL,
	[Carrera] [varchar](50) NULL,
	[FechaDeNacimiento] [datetime] NULL,
	[Sexo] [char](1) NULL,
 CONSTRAINT [PK_EstudianteID] PRIMARY KEY CLUSTERED 
(
	[EstudianteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MateriaID]    Script Date: 14/4/2019 6:26:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MateriaID](
	[MateriaID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[AulaID] [int] NULL,
	[ProfesorID] [int] NULL,
	[sec] [varchar](3) NULL,
	[Dias] [varchar](20) NULL,
	[Horas] [varchar](10) NULL,
 CONSTRAINT [PK_MateriaID] PRIMARY KEY CLUSTERED 
(
	[MateriaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProfesorID]    Script Date: 14/4/2019 6:26:05 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProfesorID](
	[ProfesorID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Direccion] [varchar](250) NULL,
	[Sexo] [char](1) NULL,
	[Telefono] [varchar](11) NULL,
	[Mail] [varchar](50) NULL,
 CONSTRAINT [PK_ProfesorID] PRIMARY KEY CLUSTERED 
(
	[ProfesorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AulaID] ([AulaID], [Nombre], [Edificio]) VALUES (1, N'401', N'Fr1')
INSERT [dbo].[AulaID] ([AulaID], [Nombre], [Edificio]) VALUES (2, N'402', N'Fr1')
INSERT [dbo].[AulaID] ([AulaID], [Nombre], [Edificio]) VALUES (3, N'403', N'Fr1')
INSERT [dbo].[AulaID] ([AulaID], [Nombre], [Edificio]) VALUES (4, N'404', N'Fr1')
INSERT [dbo].[AulaID] ([AulaID], [Nombre], [Edificio]) VALUES (5, N'405', N'Fr1')
INSERT [dbo].[AulaID] ([AulaID], [Nombre], [Edificio]) VALUES (6, N'201', N'Fr2')
INSERT [dbo].[AulaID] ([AulaID], [Nombre], [Edificio]) VALUES (7, N'202', N'Fr2')
INSERT [dbo].[AulaID] ([AulaID], [Nombre], [Edificio]) VALUES (8, N'203', N'Fr2')
INSERT [dbo].[AulaID] ([AulaID], [Nombre], [Edificio]) VALUES (9, N'204', N'Fr2')
INSERT [dbo].[AulaID] ([AulaID], [Nombre], [Edificio]) VALUES (10, N'205', N'Fr2')
INSERT [dbo].[AulaID] ([AulaID], [Nombre], [Edificio]) VALUES (11, N'501', N'Fr1')
INSERT [dbo].[CalificacionID] ([CalificacionID], [MaestriaID], [EstudianteID], [ProfesorID], [1raParcial], [2doParcial], [ExamenFinal], [Calificacion]) VALUES (1, 1, 1, 1, 28, 27, 36, 91)
INSERT [dbo].[CalificacionID] ([CalificacionID], [MaestriaID], [EstudianteID], [ProfesorID], [1raParcial], [2doParcial], [ExamenFinal], [Calificacion]) VALUES (2, 1, 3, 1, 27, 28, 40, 95)
INSERT [dbo].[CalificacionID] ([CalificacionID], [MaestriaID], [EstudianteID], [ProfesorID], [1raParcial], [2doParcial], [ExamenFinal], [Calificacion]) VALUES (3, 1, 4, 1, 20, 26, 32, 78)
INSERT [dbo].[CalificacionID] ([CalificacionID], [MaestriaID], [EstudianteID], [ProfesorID], [1raParcial], [2doParcial], [ExamenFinal], [Calificacion]) VALUES (4, 1, 5, 1, 23, 25, 33, 81)
INSERT [dbo].[CalificacionID] ([CalificacionID], [MaestriaID], [EstudianteID], [ProfesorID], [1raParcial], [2doParcial], [ExamenFinal], [Calificacion]) VALUES (5, 1, 7, 1, 27, 27, 38, 92)
INSERT [dbo].[CalificacionID] ([CalificacionID], [MaestriaID], [EstudianteID], [ProfesorID], [1raParcial], [2doParcial], [ExamenFinal], [Calificacion]) VALUES (6, 1, 10, 1, 19, 27, 37, 83)
INSERT [dbo].[CalificacionID] ([CalificacionID], [MaestriaID], [EstudianteID], [ProfesorID], [1raParcial], [2doParcial], [ExamenFinal], [Calificacion]) VALUES (7, 1, 12, 1, 21, 24, 33, 78)
INSERT [dbo].[CalificacionID] ([CalificacionID], [MaestriaID], [EstudianteID], [ProfesorID], [1raParcial], [2doParcial], [ExamenFinal], [Calificacion]) VALUES (8, 1, 13, 1, 23, 21, 30, 74)
INSERT [dbo].[CalificacionID] ([CalificacionID], [MaestriaID], [EstudianteID], [ProfesorID], [1raParcial], [2doParcial], [ExamenFinal], [Calificacion]) VALUES (9, 1, 16, 1, 25, 26, 31, 82)
INSERT [dbo].[CalificacionID] ([CalificacionID], [MaestriaID], [EstudianteID], [ProfesorID], [1raParcial], [2doParcial], [ExamenFinal], [Calificacion]) VALUES (10, 1, 18, 1, 29, 30, 38, 97)
INSERT [dbo].[CalificacionID] ([CalificacionID], [MaestriaID], [EstudianteID], [ProfesorID], [1raParcial], [2doParcial], [ExamenFinal], [Calificacion]) VALUES (11, 1, 19, 1, 24, 22, 35, 81)
INSERT [dbo].[EstudianteID] ([EstudianteID], [Nombre], [Matricula], [Carrera], [FechaDeNacimiento], [Sexo]) VALUES (1, N'Juan Alvarez Crespo', N'190456', N' ing.industrial', CAST(N'2009-02-01T00:00:00.000' AS DateTime), N'M')
INSERT [dbo].[EstudianteID] ([EstudianteID], [Nombre], [Matricula], [Carrera], [FechaDeNacimiento], [Sexo]) VALUES (2, N'Sara Vila Ruiz', N'190457', N'ing.civil', CAST(N'2010-08-05T00:00:00.000' AS DateTime), N'F')
INSERT [dbo].[EstudianteID] ([EstudianteID], [Nombre], [Matricula], [Carrera], [FechaDeNacimiento], [Sexo]) VALUES (3, N'Biel Pons Moya', N'190458', N' ing.industrial', CAST(N'2008-11-28T00:00:00.000' AS DateTime), N'M')
INSERT [dbo].[EstudianteID] ([EstudianteID], [Nombre], [Matricula], [Carrera], [FechaDeNacimiento], [Sexo]) VALUES (4, N'Valentina Cruz Caballero', N'190459', N' ing.industrial', CAST(N'2009-05-15T00:00:00.000' AS DateTime), N'F')
INSERT [dbo].[EstudianteID] ([EstudianteID], [Nombre], [Matricula], [Carrera], [FechaDeNacimiento], [Sexo]) VALUES (5, N'Iris Cortes Dominguez', N'190460', N' ing.industrial', CAST(N'2009-03-19T00:00:00.000' AS DateTime), N'F')
INSERT [dbo].[EstudianteID] ([EstudianteID], [Nombre], [Matricula], [Carrera], [FechaDeNacimiento], [Sexo]) VALUES (6, N'Miguel Santos Medina', N'190461', N'ing.civil', CAST(N'2007-07-03T00:00:00.000' AS DateTime), N'M')
INSERT [dbo].[EstudianteID] ([EstudianteID], [Nombre], [Matricula], [Carrera], [FechaDeNacimiento], [Sexo]) VALUES (7, N'Jorge Lopez Suarez', N'190462', N' ing.industrial', CAST(N'2010-06-24T00:00:00.000' AS DateTime), N'M')
INSERT [dbo].[EstudianteID] ([EstudianteID], [Nombre], [Matricula], [Carrera], [FechaDeNacimiento], [Sexo]) VALUES (8, N'Lidia Vila Blanco', N'190463', N'ing.civil', CAST(N'2009-01-27T00:00:00.000' AS DateTime), N'F')
INSERT [dbo].[EstudianteID] ([EstudianteID], [Nombre], [Matricula], [Carrera], [FechaDeNacimiento], [Sexo]) VALUES (9, N'Fernando Santos Prieto', N'190464', N'ing.civil', CAST(N'2007-06-18T00:00:00.000' AS DateTime), N'M')
INSERT [dbo].[EstudianteID] ([EstudianteID], [Nombre], [Matricula], [Carrera], [FechaDeNacimiento], [Sexo]) VALUES (10, N'José Gomez Ortega', N'190465', N' ing.industrial', CAST(N'2008-05-14T00:00:00.000' AS DateTime), N'M')
INSERT [dbo].[EstudianteID] ([EstudianteID], [Nombre], [Matricula], [Carrera], [FechaDeNacimiento], [Sexo]) VALUES (11, N'Francisco Nuñez Cabrera', N'190466', N'ing.civil', CAST(N'2008-11-29T00:00:00.000' AS DateTime), N'M')
INSERT [dbo].[EstudianteID] ([EstudianteID], [Nombre], [Matricula], [Carrera], [FechaDeNacimiento], [Sexo]) VALUES (12, N'Nadia Perez Herrero', N'190467', N' ing.industrial', CAST(N'2006-07-26T00:00:00.000' AS DateTime), N'F')
INSERT [dbo].[EstudianteID] ([EstudianteID], [Nombre], [Matricula], [Carrera], [FechaDeNacimiento], [Sexo]) VALUES (13, N'Luis Diaz Romero', N'190468', N' ing.industrial', CAST(N'2007-05-19T00:00:00.000' AS DateTime), N'M')
INSERT [dbo].[EstudianteID] ([EstudianteID], [Nombre], [Matricula], [Carrera], [FechaDeNacimiento], [Sexo]) VALUES (14, N'Iván Aguilar Nuñez', N'190469', N'ing.civil', CAST(N'2007-12-30T00:00:00.000' AS DateTime), N'M')
INSERT [dbo].[EstudianteID] ([EstudianteID], [Nombre], [Matricula], [Carrera], [FechaDeNacimiento], [Sexo]) VALUES (15, N'César Peña Crespo', N'190470', N'ing.civil', CAST(N'2009-01-26T00:00:00.000' AS DateTime), N'M')
INSERT [dbo].[EstudianteID] ([EstudianteID], [Nombre], [Matricula], [Carrera], [FechaDeNacimiento], [Sexo]) VALUES (16, N'Vega Nuñez Muñoz', N'190471', N' ing.industrial', CAST(N'2006-02-28T00:00:00.000' AS DateTime), N'F')
INSERT [dbo].[EstudianteID] ([EstudianteID], [Nombre], [Matricula], [Carrera], [FechaDeNacimiento], [Sexo]) VALUES (17, N'Asier Marquez Caballero', N'190472', N'ing.civil', CAST(N'2009-09-24T00:00:00.000' AS DateTime), N'M')
INSERT [dbo].[EstudianteID] ([EstudianteID], [Nombre], [Matricula], [Carrera], [FechaDeNacimiento], [Sexo]) VALUES (18, N'Ángel Gallego Hernandez', N'190473', N' ing.industrial', CAST(N'2007-11-13T00:00:00.000' AS DateTime), N'M')
INSERT [dbo].[EstudianteID] ([EstudianteID], [Nombre], [Matricula], [Carrera], [FechaDeNacimiento], [Sexo]) VALUES (19, N'Blanca Font Marquez', N'190474', N' ing.industrial', CAST(N'2007-04-21T00:00:00.000' AS DateTime), N'F')
INSERT [dbo].[EstudianteID] ([EstudianteID], [Nombre], [Matricula], [Carrera], [FechaDeNacimiento], [Sexo]) VALUES (20, N'Joel Serrano Mendez', N'190475', N'ing.civil', CAST(N'2008-06-27T00:00:00.000' AS DateTime), N'M')
INSERT [dbo].[MateriaID] ([MateriaID], [Nombre], [AulaID], [ProfesorID], [sec], [Dias], [Horas]) VALUES (1, N'introduccion a la ing.industrial', 1, 1, N'01', N'martes', N'08am/10am')
INSERT [dbo].[MateriaID] ([MateriaID], [Nombre], [AulaID], [ProfesorID], [sec], [Dias], [Horas]) VALUES (2, N'introduccion a la ing.civil', 6, 7, N'01', N'lunes', N'08am/10am')
INSERT [dbo].[MateriaID] ([MateriaID], [Nombre], [AulaID], [ProfesorID], [sec], [Dias], [Horas]) VALUES (3, N'español 1', 11, 10, N'03', N'miercoles/viernes', N'01pm/03pm')
INSERT [dbo].[MateriaID] ([MateriaID], [Nombre], [AulaID], [ProfesorID], [sec], [Dias], [Horas]) VALUES (4, N'calculo', 7, 4, N'04', N'martes/jueves', N'09am/11am')
INSERT [dbo].[MateriaID] ([MateriaID], [Nombre], [AulaID], [ProfesorID], [sec], [Dias], [Horas]) VALUES (5, N'dibujo tecnico', 2, 2, N'06', N'viernes', N'02pm/05pm')
INSERT [dbo].[MateriaID] ([MateriaID], [Nombre], [AulaID], [ProfesorID], [sec], [Dias], [Horas]) VALUES (6, N'historia', 8, 8, N'03', N'miercoles', N'11am/01pm')
INSERT [dbo].[MateriaID] ([MateriaID], [Nombre], [AulaID], [ProfesorID], [sec], [Dias], [Horas]) VALUES (7, N'ecologia', 5, 11, N'05', N'lunes', N'08am/11am')
INSERT [dbo].[MateriaID] ([MateriaID], [Nombre], [AulaID], [ProfesorID], [sec], [Dias], [Horas]) VALUES (8, N'progamacion ', 3, 3, N'01', N'jueves', N'10am/12pm')
INSERT [dbo].[MateriaID] ([MateriaID], [Nombre], [AulaID], [ProfesorID], [sec], [Dias], [Horas]) VALUES (9, N'quimica 1', 9, 6, N'08', N'viernes', N'09am/11am')
INSERT [dbo].[MateriaID] ([MateriaID], [Nombre], [AulaID], [ProfesorID], [sec], [Dias], [Horas]) VALUES (10, N'fisica 1', 10, 9, N'02', N'martes', N'08am/12pm')
INSERT [dbo].[MateriaID] ([MateriaID], [Nombre], [AulaID], [ProfesorID], [sec], [Dias], [Horas]) VALUES (11, N'ingles 1', 4, 5, N'010', N'viernes', N'10am/12pm')
INSERT [dbo].[ProfesorID] ([ProfesorID], [Nombre], [Direccion], [Sexo], [Telefono], [Mail]) VALUES (1, N'Hugo Molina Romero', N'Calle Padre Fantino Falco, Santo Domingo', N'M', N'8099653754', N'HugoMolinaRomero@gmail.com')
INSERT [dbo].[ProfesorID] ([ProfesorID], [Nombre], [Direccion], [Sexo], [Telefono], [Mail]) VALUES (2, N'Mikel Gomez Parra', N'Ensanche Julieta, Avenida Gustavo Mejía Ricart 111, Santo Domingo', N'M', N'8092166421', N'MikelGomezParra@gmail.com')
INSERT [dbo].[ProfesorID] ([ProfesorID], [Nombre], [Direccion], [Sexo], [Telefono], [Mail]) VALUES (3, N'Jesús Garcia Castillo', N'Av Sarasota, Santo Domingo', N'M', N'8098421616', N'JesúsGarciaCastillo@gmail.com')
INSERT [dbo].[ProfesorID] ([ProfesorID], [Nombre], [Direccion], [Sexo], [Telefono], [Mail]) VALUES (4, N'José Gonzalez Diez', N'esquina, Calle Uruguay, Calle Luisa Ozema Pellerano &, Santo Domingo', N'M', N'8095165324', N'JoséGonzalezDiez@hotmail.com')
INSERT [dbo].[ProfesorID] ([ProfesorID], [Nombre], [Direccion], [Sexo], [Telefono], [Mail]) VALUES (5, N'Alberto Bosch Vazquez', N'Av San Martin 227, Santo Domingo 10514', N'M', N'8292426484', N'AlbertoBoschVazquez@gmail.com')
INSERT [dbo].[ProfesorID] ([ProfesorID], [Nombre], [Direccion], [Sexo], [Telefono], [Mail]) VALUES (6, N'Bruno Iglesias Martinez', N'Plaza Galería Floral, Calle Olof Palme, Santo Domingo 10131', N'M', N'8095231462', N'BrunoIglesiasMartinez@gmail.com')
INSERT [dbo].[ProfesorID] ([ProfesorID], [Nombre], [Direccion], [Sexo], [Telefono], [Mail]) VALUES (7, N'Paola Ortega Santana', N'Calle Guarocuya & Calle Winston Arnaud, Santo Domingo', N'F', N'8294637197', N'PaolaOrtegaSantana@hotmail.com')
INSERT [dbo].[ProfesorID] ([ProfesorID], [Nombre], [Direccion], [Sexo], [Telefono], [Mail]) VALUES (8, N'Lola Lozano Montero', N'Calle San Pio X, con, Calle Leonardo da Vinci, Santo Domingo', N'F', N'8091043521', N'LolaLozanoMontero@gmail.com')
INSERT [dbo].[ProfesorID] ([ProfesorID], [Nombre], [Direccion], [Sexo], [Telefono], [Mail]) VALUES (9, N'Lidia Cortes Rodriguez', N'Calle Sta Clara, Santo Domingo', N'F', N'8098635716', N'LidiaCortesRodriguezgmail.com')
INSERT [dbo].[ProfesorID] ([ProfesorID], [Nombre], [Direccion], [Sexo], [Telefono], [Mail]) VALUES (10, N'Leyre Mendez Prieto', N'entre Guarocuya y San Antón, Calle Juan Ballenilla #19A, Santo Domingo', N'F', N'8093516562', N'LeyreMendezPrieto@hotmail.com')
INSERT [dbo].[ProfesorID] ([ProfesorID], [Nombre], [Direccion], [Sexo], [Telefono], [Mail]) VALUES (11, N'Aina Sanchez Molina', N'Av. Winston Churchill, Santo Domingo', N'F', N'8093416327', N'AinaSanchezMolina@gmail.com')
ALTER TABLE [dbo].[CalificacionID]  WITH CHECK ADD  CONSTRAINT [FK_CalificacionID_EstudianteID] FOREIGN KEY([EstudianteID])
REFERENCES [dbo].[EstudianteID] ([EstudianteID])
GO
ALTER TABLE [dbo].[CalificacionID] CHECK CONSTRAINT [FK_CalificacionID_EstudianteID]
GO
ALTER TABLE [dbo].[CalificacionID]  WITH CHECK ADD  CONSTRAINT [FK_CalificacionID_MateriaID] FOREIGN KEY([MaestriaID])
REFERENCES [dbo].[MateriaID] ([MateriaID])
GO
ALTER TABLE [dbo].[CalificacionID] CHECK CONSTRAINT [FK_CalificacionID_MateriaID]
GO
ALTER TABLE [dbo].[CalificacionID]  WITH CHECK ADD  CONSTRAINT [FK_CalificacionID_ProfesorID] FOREIGN KEY([ProfesorID])
REFERENCES [dbo].[ProfesorID] ([ProfesorID])
GO
ALTER TABLE [dbo].[CalificacionID] CHECK CONSTRAINT [FK_CalificacionID_ProfesorID]
GO
ALTER TABLE [dbo].[MateriaID]  WITH CHECK ADD  CONSTRAINT [FK_MateriaID_AulaID] FOREIGN KEY([AulaID])
REFERENCES [dbo].[AulaID] ([AulaID])
GO
ALTER TABLE [dbo].[MateriaID] CHECK CONSTRAINT [FK_MateriaID_AulaID]
GO
ALTER TABLE [dbo].[MateriaID]  WITH CHECK ADD  CONSTRAINT [FK_MateriaID_ProfesorID] FOREIGN KEY([ProfesorID])
REFERENCES [dbo].[ProfesorID] ([ProfesorID])
GO
ALTER TABLE [dbo].[MateriaID] CHECK CONSTRAINT [FK_MateriaID_ProfesorID]
GO
USE [master]
GO
ALTER DATABASE [UniversityCity] SET  READ_WRITE 
GO
