USE [master]
GO
/****** Object:  Database [bdCentinela]    Script Date: 4/6/2018 8:57:26 PM ******/
CREATE DATABASE [bdCentinela]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bdCentinela', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\bdCentinela.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'bdCentinela_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\bdCentinela_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [bdCentinela] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bdCentinela].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bdCentinela] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bdCentinela] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bdCentinela] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bdCentinela] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bdCentinela] SET ARITHABORT OFF 
GO
ALTER DATABASE [bdCentinela] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [bdCentinela] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bdCentinela] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bdCentinela] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bdCentinela] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bdCentinela] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bdCentinela] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bdCentinela] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bdCentinela] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bdCentinela] SET  ENABLE_BROKER 
GO
ALTER DATABASE [bdCentinela] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bdCentinela] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bdCentinela] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bdCentinela] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bdCentinela] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bdCentinela] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bdCentinela] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bdCentinela] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [bdCentinela] SET  MULTI_USER 
GO
ALTER DATABASE [bdCentinela] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bdCentinela] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bdCentinela] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bdCentinela] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [bdCentinela] SET DELAYED_DURABILITY = DISABLED 
GO
USE [bdCentinela]
GO
/****** Object:  User [juan]    Script Date: 4/6/2018 8:57:26 PM ******/
CREATE USER [juan] FOR LOGIN [juan] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [juan]
GO
/****** Object:  Table [dbo].[Docentes]    Script Date: 4/6/2018 8:57:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Docentes](
	[CODIGO_DOCENTE] [numeric](10, 0) NOT NULL,
	[NOMBRE_DOCENTE] [varchar](30) NULL,
	[APELLIDO_DOCENTE] [varchar](30) NULL,
	[ASIGNATURA_DOCENTE] [varchar](30) NULL,
	[TELEFONO] [numeric](30, 0) NULL,
	[CELULAR] [numeric](30, 0) NULL,
	[DIRECCION] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO_DOCENTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbEstudiante]    Script Date: 4/6/2018 8:57:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbEstudiante](
	[estCodigo] [numeric](10, 0) NOT NULL,
	[estNombre] [varchar](30) NULL,
	[estApellido] [varchar](30) NULL,
	[estGrado] [varchar](30) NULL,
	[estCelular] [varchar](30) NULL,
	[estEmail] [varchar](50) NULL,
	[estNombrePadre] [varchar](30) NULL,
	[estApellidoPadre] [varchar](30) NULL,
	[estCelularPadre] [varchar](30) NULL,
	[estEmailPadre] [varchar](50) NULL,
	[estNombreMadre] [varchar](30) NULL,
	[estApellidoMadre] [varchar](30) NULL,
	[estCelularMadre] [varchar](30) NULL,
	[estEmailMadre] [varchar](50) NULL,
	[estNombreAcuadiente] [varchar](30) NULL,
	[estApellidoAcudiente] [varchar](30) NULL,
	[estCelularAcudiente] [varchar](30) NULL,
	[estEmailAcudiente] [varchar](50) NULL,
 CONSTRAINT [PK_tbEstudiante] PRIMARY KEY CLUSTERED 
(
	[estCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbGrados]    Script Date: 4/6/2018 8:57:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbGrados](
	[graCodigo] [varchar](30) NOT NULL,
	[graGrado] [varchar](30) NULL,
	[graDetalle] [varchar](30) NULL,
	[graNum_estudiante] [numeric](18, 0) NULL,
	[graJornada] [varchar](30) NULL,
	[graNivel] [varchar](30) NULL,
	[graPlantilla] [varchar](30) NULL,
 CONSTRAINT [PK_tbGrados] PRIMARY KEY CLUSTERED 
(
	[graCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbUsuarios]    Script Date: 4/6/2018 8:57:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbUsuarios](
	[usuaLogin] [varchar](50) NOT NULL,
	[usuaPassword] [varchar](50) NULL,
 CONSTRAINT [PK_tbUsuarios] PRIMARY KEY CLUSTERED 
(
	[usuaLogin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tbEstudiante] ([estCodigo], [estNombre], [estApellido], [estGrado], [estCelular], [estEmail], [estNombrePadre], [estApellidoPadre], [estCelularPadre], [estEmailPadre], [estNombreMadre], [estApellidoMadre], [estCelularMadre], [estEmailMadre], [estNombreAcuadiente], [estApellidoAcudiente], [estCelularAcudiente], [estEmailAcudiente]) VALUES (CAST(2 AS Numeric(10, 0)), N'camilo', N'zapata', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[tbEstudiante] ([estCodigo], [estNombre], [estApellido], [estGrado], [estCelular], [estEmail], [estNombrePadre], [estApellidoPadre], [estCelularPadre], [estEmailPadre], [estNombreMadre], [estApellidoMadre], [estCelularMadre], [estEmailMadre], [estNombreAcuadiente], [estApellidoAcudiente], [estCelularAcudiente], [estEmailAcudiente]) VALUES (CAST(1234 AS Numeric(10, 0)), N'Juan Carlos', N'Jaramillo', N'6A', N'3001234567', N'juancho@', N'Luis', N'Jaramillo', N'3000987654', N'luisj@', N'Sofia', N'Corrales', N'31712348765', N'sofiac@', N'Raul', N'Corrales', N'31712348765', N'raulj@')
INSERT [dbo].[tbEstudiante] ([estCodigo], [estNombre], [estApellido], [estGrado], [estCelular], [estEmail], [estNombrePadre], [estApellidoPadre], [estCelularPadre], [estEmailPadre], [estNombreMadre], [estApellidoMadre], [estCelularMadre], [estEmailMadre], [estNombreAcuadiente], [estApellidoAcudiente], [estCelularAcudiente], [estEmailAcudiente]) VALUES (CAST(14123 AS Numeric(10, 0)), N'asfd', N'asdfa', N'6A', N'124', N'juancho@', N'Luis', N'Jaramillo', N'3000987654', N'luisj@', N'Sofia', N'Corrales', N'31712348765', N'sofiac@', N'Raul', N'Corrales', N'31712348765', N'raulj@')
INSERT [dbo].[tbGrados] ([graCodigo], [graGrado], [graDetalle], [graNum_estudiante], [graJornada], [graNivel], [graPlantilla]) VALUES (N'1', N'6', N'A', CAST(30 AS Numeric(18, 0)), N'Mañana', N'Bachillerato', N'1001')
INSERT [dbo].[tbUsuarios] ([usuaLogin], [usuaPassword]) VALUES (N'jcjc', N'12345')
/****** Object:  StoredProcedure [dbo].[Consultar_Grado]    Script Date: 4/6/2018 8:57:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Consultar_Grado]
@Codigo varchar(10) ,

@mensaje varchar(100) output

AS
BEGIN    
    if  exists(select 1 from tbGrados where graCodigo=@CODIGO)
	 
	begin 

	select * from tbGrados where graCodigo=@CODIGO
	set @mensaje='exito'
	end

   
END

GO
/****** Object:  StoredProcedure [dbo].[Eliminar_Grado]    Script Date: 4/6/2018 8:57:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Eliminar_Grado]
@Codigo varchar(10) ,

@mensaje varchar(100) output

AS
BEGIN    
    if  exists(select 1 from tbGrados where graCodigo=@CODIGO)
	 
	begin 

	delete from tbGrados where graCodigo=@CODIGO
	set @mensaje='Se elimino el GRADO con exito'
	end

   
END

GO
/****** Object:  StoredProcedure [dbo].[Eliminar_usuarios]    Script Date: 4/6/2018 8:57:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Eliminar_usuarios]
@CODIGO VARCHAR(50) ,

@mensaje varchar(100) output

AS
BEGIN    
    if  exists(select 1 from tbUsuarios where usuaLogin=@CODIGO)
	 
	begin 

	delete from tbUsuarios where usuaLogin=@CODIGO
	set @mensaje='Se elimino el Usuario con exito'
	end

   
END

GO
/****** Object:  StoredProcedure [dbo].[Insertar_Docente]    Script Date: 4/6/2018 8:57:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insertar_Docente]
@CODIGO NUMERIC(10) ,
@NOMBRE VARCHAR(30),
@APELLIDO VARCHAR(30),
@ASIGNATURA VARCHAR(30),
@TELEFONO NUMERIC(30),
@CELULAR NUMERIC(30),
@DIRECCION VARCHAR(30),
@mensaje varchar(100) output

AS
BEGIN    
    if not exists(select 1 from Docentes where CODIGO_DOCENTE=@CODIGO)
	 
	begin 

	insert into  Docentes (CODIGO_DOCENTE,NOMBRE_DOCENTE,APELLIDO_DOCENTE,ASIGNATURA_DOCENTE,TELEFONO,CELULAR,DIRECCION) 
	values(@CODIGO,@NOMBRE,@APELLIDO,@ASIGNATURA,@TELEFONO,@CELULAR,@DIRECCION)

	set @mensaje='Se registro el docente'
	end

   
END

GO
/****** Object:  StoredProcedure [dbo].[Insertar_Grado]    Script Date: 4/6/2018 8:57:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--INSERTAR GRADOS

CREATE PROCEDURE [dbo].[Insertar_Grado]
@CODIGO VARCHAR(30),
@GRADO VARCHAR(30),
@DETALLE VARCHAR(30),
@NUM_ESTUDIANTE NUMERIC,
@JORNADA VARCHAR(30),
@NIVEL VARCHAR(30),
@PLANTILLA VARCHAR(30),
@mensaje varchar(100) output

AS
BEGIN    
    if not exists(select 1 from tbGrados where graCodigo=@CODIGO)
	 
	begin 

	insert into tbGrados(graCodigo,graGrado,graDetalle,graNum_estudiante,graJornada,graNivel,graPlantilla) 
	values(@CODIGO,@GRADO,@DETALLE,@NUM_ESTUDIANTE,@JORNADA,@NIVEL,@PLANTILLA)

	set @mensaje='Se registro el grado'
	end

   
END

GO
/****** Object:  StoredProcedure [dbo].[insertar_usuarios]    Script Date: 4/6/2018 8:57:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertar_usuarios]

@USUARIO VARCHAR(50),
@CONTRASEÑA VARCHAR(50),

@mensaje varchar(100) output

AS
BEGIN    
    if not exists(select 1 from tbUsuarios where usuaLogin=@USUARIO)
	 
	begin 

	
	insert into tbUsuarios(usuaLogin,usuaPassword) values(@USUARIO,@CONTRASEÑA)
	
	set @mensaje='Se REGISTRO el USUARIO con exito'
	end

   
END

GO
/****** Object:  StoredProcedure [dbo].[modificar_Grado]    Script Date: 4/6/2018 8:57:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[modificar_Grado]
@CODIGO VARCHAR(30),
@GRADO VARCHAR(30),
@DETALLE VARCHAR(30),
@NUM_ESTUDIANTE NUMERIC,
@JORNADA VARCHAR(30),
@NIVEL VARCHAR(30),
@PLANTILLA VARCHAR(30),
@mensaje varchar(100) output

AS
BEGIN    
    if exists(select 1 from tbGrados where graCodigo=@CODIGO)
	 
	begin 

	Update tbGrados set graGrado=@GRADO,graDetalle=@DETALLE,graNum_estudiante=@NUM_ESTUDIANTE,
	graJornada=@JORNADA,graNivel=@NIVEL,graPlantilla=@PLANTILLA


	where graCodigo=@CODIGO

	set @mensaje='Se modifico el grado con exito'
	end

   
END

GO
/****** Object:  StoredProcedure [dbo].[modificar_usuarios]    Script Date: 4/6/2018 8:57:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[modificar_usuarios]

@USUARIO VARCHAR(50),
@CONTRASEÑA VARCHAR(50),

@mensaje varchar(100) output

AS
BEGIN    
    if  exists(select 1 from tbUsuarios where usuaLogin=@USUARIO)
	 
	begin 

	
	Update tbUsuarios set  
	 usuaPassword= @CONTRASEÑA
	
	where usuaLogin=@USUARIO
	
	set @mensaje='Se MODIFICO el USUARIO con exito'
	end

   
END

GO
/****** Object:  StoredProcedure [dbo].[spConsultarUsuario]    Script Date: 4/6/2018 8:57:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[spConsultarUsuario]
(@cLogin Varchar(50),
@cPassword Varchar(50))

As
Select usuaLogin,
usuaPassword
From tbUsuarios
Where
(usuaLogin=@cLogin) and
(usuaPassword=@cPassword);
GO
/****** Object:  StoredProcedure [dbo].[spInsertarEstudiantes]    Script Date: 4/6/2018 8:57:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[spInsertarEstudiantes]
(@CODIGO numeric(10,0),
@NOMBRE varchar(30),
@APELLIDO varchar(30),
@GRADO varchar(30),
@CELULAR varchar(30),
@EMAIL varchar(50),
@NOMBREPADRE varchar(30),
@APELLIDOPADRE varchar(30),
@CELULARPADRE varchar(30),
@EMAILPADRE varchar(50),
@NOMBREMADRE varchar(30),
@APELLIDOMADRE varchar(30),
@CELULARMADRE varchar(30),
@EMAILMADRE varchar(50),
@NOMBREACUDIENTE varchar(30),
@APELLIDOACUDIENTE varchar(30),
@CELULARACUDIENTE varchar(30),
@EMAILACUDIENTE varchar(50),
@Mensaje varchar(50) output)
AS

IF EXISTS (SELECT 1 FROM tbEstudiante WHERE estCodigo=@CODIGO)
	BEGIN
	SET @Mensaje = 'Ya existe un registro con ese Código';
	RETURN -1;
	END

INSERT INTO tbEstudiante
(estCodigo,
estNombre,
estApellido,
estGrado,
estCelular,
estEmail,
estNombrePadre,
estApellidoPadre,
estCelularPadre,
estEmailPadre,
estNombreMadre,
estApellidoMadre,
estCelularMadre,
estEmailMadre,
estNombreAcuadiente,
estApellidoAcudiente,
estCelularAcudiente,
estEmailAcudiente)
VALUES
(@CODIGO,
@NOMBRE,
@APELLIDO,
@GRADO,
@CELULAR,
@EMAIL,
@NOMBREPADRE,
@APELLIDOPADRE,
@CELULARPADRE,
@EMAILPADRE,
@NOMBREMADRE,
@APELLIDOMADRE,
@CELULARMADRE,
@EMAILMADRE,
@NOMBREACUDIENTE,
@APELLIDOACUDIENTE,
@CELULARACUDIENTE,
@EMAILACUDIENTE)

SET @Mensaje ='Se realizo proceso con exito.';

IF @@ERROR !=0
	BEGIN
	SET @Mensaje ='Se produjo un error durante el procedimiento, ' + ERROR_MESSAGE();
	RETURN -1;
	END

GO
/****** Object:  StoredProcedure [dbo].[spInsertarGradosMasivos]    Script Date: 4/6/2018 8:57:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[spInsertarGradosMasivos]
(@cXML VARCHAR(MAX),
@cMensaje VARCHAR(100) OUTPUT)
As

DECLARE @Insertar VARCHAR(100),
		@nId INT;

Begin TRAN @Insertar

EXEC sp_xml_preparedocument @nId OUTPUT, @cXML;

INSERT INTO tbGrados
(graCodigo,
graGrado,
graDetalle,
graNum_estudiante,
graJornada,
graNivel,
graPlantilla)
SELECT
graCodigo,
graGrado,
graDetalle,
graNum_estudiante,
graJornada,
graNivel,
graPlantilla
FROM OPENXML(@nId,'registros/rows',2)
WITH
(graCodigo VARCHAR(30),
graGrado VARCHAR(30),
graDetalle VARCHAR(30),
graNum_estudiante NUMERIC(18,2),
graJornada VARCHAR(30),
graNivel VARCHAR(30),
graPlantilla VARCHAR(30));

EXEC sp_xml_removedocument @nId;

SET @cMensaje='Se realizo proceso con exito'


IF @@ERROR !=0
BEGIN
	ROLLBACK TRAN @Insertar
	SET @cMensaje='Se produjo un error durante el procedimiento'
	RETURN -1
END

COMMIT TRAN @Insertar;
GO
USE [master]
GO
ALTER DATABASE [bdCentinela] SET  READ_WRITE 
GO
