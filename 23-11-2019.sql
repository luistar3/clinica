USE [clinica]
GO
/****** Object:  Table [dbo].[Area]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Area](
	[id_area] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](250) NULL,
	[Piso] [int] NULL,
	[Tipo] [int] NULL,
	[Estado] [int] NULL,
	[id_persona] [int] NULL,
 CONSTRAINT [PK_Especialidad] PRIMARY KEY CLUSTERED 
(
	[id_area] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CAMPANA]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAMPANA](
	[IdCampana] [int] IDENTITY(1,1) NOT NULL,
	[UrlImg] [varchar](250) NULL,
	[InicioFecha] [datetime] NULL,
	[FinFecha] [datetime] NULL,
	[IdUsuario] [int] NULL,
	[FechaInsercio] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
	[Estado] [int] NULL,
	[id_area] [int] NULL,
	[Descripcion] [varchar](500) NULL,
	[NombreCampana] [varchar](250) NULL,
 CONSTRAINT [PK__CAMPANA__16A95A96660C0CBC] PRIMARY KEY CLUSTERED 
(
	[IdCampana] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Especializacion]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especializacion](
	[id_especializacion] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](250) NULL,
	[Fecha_insercion] [smalldatetime] NULL,
	[Fecha_modificacion] [smalldatetime] NULL,
	[Fecha_eliminacion] [smalldatetime] NULL,
	[Estado] [int] NULL,
 CONSTRAINT [PK_Especializacion] PRIMARY KEY CLUSTERED 
(
	[id_especializacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horario](
	[id_horario] [int] IDENTITY(1,1) NOT NULL,
	[Fecha_inicio] [datetime] NULL,
	[Fecha_fin] [datetime] NULL,
	[Dia] [int] NULL,
	[id_persona] [int] NOT NULL,
	[id_area] [int] NOT NULL,
	[Espacio] [int] NULL,
	[Color] [varchar](50) NULL,
	[Fecha_insercion] [smalldatetime] NULL,
	[Fecha_modificacion] [smalldatetime] NULL,
	[Estado] [int] NULL,
	[Fecha_eliminacion] [smalldatetime] NULL,
	[Fecha] [date] NULL,
	[Comentario] [varchar](500) NULL,
 CONSTRAINT [PK_Horario] PRIMARY KEY CLUSTERED 
(
	[id_horario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log](
	[id_log] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NULL,
	[InicioTurno] [datetime] NULL,
	[FinTurno] [datetime] NULL,
 CONSTRAINT [PK_log] PRIMARY KEY CLUSTERED 
(
	[id_log] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modulos]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modulos](
	[idModulos] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[idModulos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModulosPermisos]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModulosPermisos](
	[idModulosPermisos] [int] IDENTITY(1,1) NOT NULL,
	[Rol_idRol] [int] NOT NULL,
	[Modulos_idModulos] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idModulosPermisos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[id_persona] [int] IDENTITY(1,1) NOT NULL,
	[Dni] [varchar](250) NULL,
	[Nombre] [varchar](250) NULL,
	[ApePat] [varchar](250) NULL,
	[ApeMat] [varchar](250) NULL,
	[Sexo] [varchar](250) NULL,
	[id_area] [int] NULL,
	[FechaInsercion] [smalldatetime] NULL,
	[FechaModificacion] [smalldatetime] NULL,
	[FechaEliminacion] [smalldatetime] NULL,
	[Estado] [int] NULL,
	[id_especializacion] [int] NULL,
	[id_tipo_persona] [int] NULL,
	[telefono] [varchar](50) NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[id_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[idRol] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[idRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Persona]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Persona](
	[id_tipo_persona] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](250) NULL,
 CONSTRAINT [PK_Tipo_Persona_1] PRIMARY KEY CLUSTERED 
(
	[id_tipo_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[Rol_idRol] [int] NOT NULL,
	[Usuario] [varchar](250) NULL,
	[Contrasena] [varchar](250) NULL,
	[Nombre] [varchar](250) NULL,
	[Avatar] [varchar](250) NULL,
	[Estado] [int] NULL,
	[CambioContrasena] [int] NULL,
	[Ip] [varchar](50) NULL,
	[Mac] [varbinary](250) NULL,
	[Navegador] [varbinary](250) NULL,
	[idPersona] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Area]  WITH CHECK ADD  CONSTRAINT [FK_Area_Persona] FOREIGN KEY([id_persona])
REFERENCES [dbo].[Persona] ([id_persona])
GO
ALTER TABLE [dbo].[Area] CHECK CONSTRAINT [FK_Area_Persona]
GO
ALTER TABLE [dbo].[CAMPANA]  WITH CHECK ADD  CONSTRAINT [FK__CAMPANA__id_area__473C8FC7] FOREIGN KEY([id_area])
REFERENCES [dbo].[Area] ([id_area])
GO
ALTER TABLE [dbo].[CAMPANA] CHECK CONSTRAINT [FK__CAMPANA__id_area__473C8FC7]
GO
ALTER TABLE [dbo].[Horario]  WITH CHECK ADD  CONSTRAINT [FK_Horario_Especialidad] FOREIGN KEY([id_area])
REFERENCES [dbo].[Area] ([id_area])
GO
ALTER TABLE [dbo].[Horario] CHECK CONSTRAINT [FK_Horario_Especialidad]
GO
ALTER TABLE [dbo].[Horario]  WITH CHECK ADD  CONSTRAINT [FK_Horario_Persona] FOREIGN KEY([id_persona])
REFERENCES [dbo].[Persona] ([id_persona])
GO
ALTER TABLE [dbo].[Horario] CHECK CONSTRAINT [FK_Horario_Persona]
GO
ALTER TABLE [dbo].[ModulosPermisos]  WITH CHECK ADD FOREIGN KEY([Modulos_idModulos])
REFERENCES [dbo].[Modulos] ([idModulos])
GO
ALTER TABLE [dbo].[ModulosPermisos]  WITH CHECK ADD FOREIGN KEY([Rol_idRol])
REFERENCES [dbo].[Rol] ([idRol])
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_Persona_Area] FOREIGN KEY([id_area])
REFERENCES [dbo].[Area] ([id_area])
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_Persona_Area]
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_Persona_Especializacion] FOREIGN KEY([id_especializacion])
REFERENCES [dbo].[Especializacion] ([id_especializacion])
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_Persona_Especializacion]
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_Persona_Persona] FOREIGN KEY([id_persona])
REFERENCES [dbo].[Persona] ([id_persona])
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_Persona_Persona]
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_Persona_Persona1] FOREIGN KEY([id_persona])
REFERENCES [dbo].[Persona] ([id_persona])
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_Persona_Persona1]
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_Persona_Tipo_Persona] FOREIGN KEY([id_tipo_persona])
REFERENCES [dbo].[Tipo_Persona] ([id_tipo_persona])
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_Persona_Tipo_Persona]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD FOREIGN KEY([Rol_idRol])
REFERENCES [dbo].[Rol] ([idRol])
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Area_listarArea]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_Area_listarArea]

AS
BEGIN
declare @Encargado varchar(250);
set @Encargado='No Definido';
SELECT 
ROW_NUMBER() OVER (ORDER BY e.id_area  desc ) as fila ,
e.id_area,
e.Nombre,
e.Piso,
 
   CASE  
       WHEN e.id_persona IS NULL THEN 'NO ESPECIFICADO'
       ELSE CONCAT(PE.Nombre,' ', PE.ApePat , ' ', PE.ApeMat)  
   END  
   'Encargado'
/*CONCAT(PE.Nombre,' ', PE.ApePat , ' ', PE.ApeMat) AS Encargado*/
FROM 

Area AS e 
LEFT join Persona as pe on pe.id_persona = e.id_persona

END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_CAMPANA_insertarNuevaCampana]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_CAMPANA_insertarNuevaCampana]
	@urlImg varchar(250),
	@inicioFecha date,
	@finFecha date,
	@idUsuario int,
	@idArea int,
	@nombreCampana varchar(500),
	@descripcion varchar(500)
AS
BEGIN
	INSERT INTO CAMPANA
	(
		
		UrlImg,
		InicioFecha,
		FinFecha,
		IdUsuario,
		FechaInsercio,

		Estado,
		id_area,
		Descripcion,
		NombreCampana
	)
	VALUES
	(
		@urlImg,
		
		@inicioFecha,
		@finFecha,
		@idUsuario,
		GETDATE(),
	
		1,
		@idArea,
		@descripcion,
		@nombreCampana
	)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_clinica_CAMPANA_listarCampanasActivas]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_clinica_CAMPANA_listarCampanasActivas]
	
AS
BEGIN
	select 
	ca.IdCampana,
	a.Nombre as Area,
	a.id_area as idArea,
	ca.Descripcion as Descrip,
	ca.NombreCampana as Nombre,
	convert(varchar, ca.InicioFecha, 107) as InicioFecha,

	convert(date, ca.InicioFecha) as InicioFechaCast,
	convert(varchar, ca.FinFecha, 107) as FinFecha,
	convert(date, ca.FinFecha) as FinFechaCast,
	ca.UrlImg as Img
	from CAMPANA as ca 
	inner join Area as a on a.id_area = ca.id_area
	where  (convert(date,GETDATE())>=convert(date,ca.InicioFecha) and convert(date,GETDATE())<=convert(date,ca.finFecha)) and ca.Estado=1

END
GO
/****** Object:  StoredProcedure [dbo].[usp_clinica_CAMPANA_listarCampanasGestion]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_clinica_CAMPANA_listarCampanasGestion]

AS
BEGIN
	select 
	ca.IdCampana,
	a.Nombre as Area,
	a.id_area as idArea,
    CONCAT( LEFT(ca.Descripcion,90),' ...' )as Descrip,
    ca.Descripcion as Descripcion,
	ca.NombreCampana as Nombre,
	convert(varchar, ca.InicioFecha, 107) as InicioFecha,

	convert(date, ca.InicioFecha) as InicioFechaCast,
	convert(varchar, ca.FinFecha, 107) as FinFecha,
	convert(date, ca.FinFecha) as FinFechaCast,
	ca.UrlImg as Img
	from CAMPANA as ca 
	inner join Area as a on a.id_area = ca.id_area
	--where  (convert(date,GETDATE())>=convert(date,ca.InicioFecha) and convert(date,GETDATE())<=convert(date,ca.finFecha)) and ca.Estado=1
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_CAMPANA_modificarImagenCampana]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_CAMPANA_modificarImagenCampana] 
	@idCampana int,
	@urlImg varchar(250)
AS
BEGIN
	UPDATE CAMPANA
		SET
		

			UrlImg = @urlImg,
		
	
			FechaModificacion = getdate()
		
			

		where IdCampana = @idCampana
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_CAMPANA_modificarInfoCampana]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_CAMPANA_modificarInfoCampana]
	
	@inicioFecha date,
	@finFecha date,
	
	@idArea int,
	@nombreCampana varchar(500),
	@descripcion varchar(500),
	@idCampana int
AS
BEGIN
	UPDATE CAMPANA
	SET
		

		InicioFecha = @inicioFecha,
		FinFecha = @finFecha,
		
	
		FechaModificacion = getdate(),
		
		id_area = @idArea,
		Descripcion = @descripcion,
		NombreCampana = @nombreCampana

	where IdCampana = @idCampana
END
	

GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Especializacion_ListarEspecializacion]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_Especializacion_ListarEspecializacion]
	
AS
BEGIN
	select * from Especializacion as es

END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Horario_HoraSumaRestaServidor]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[usp_Clinica_Horario_HoraSumaRestaServidor] 
	@num int
AS
BEGIN
	declare @hoy date;
	set @hoy = convert(date, GETDATE()) ;
	set @hoy = DATEADD(DAY,@num,@hoy);

	select @hoy as fecha
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Horario_insertarHorario]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_Horario_insertarHorario] 
	@fecha_inicio varchar(250) ,
	@fecha_fin varchar(250),
	@id_persona int ,
	@id_area int,
	@color varchar(250),
	@estado int
	
AS
BEGIN

		INSERT INTO Horario
		(
			
			Fecha_inicio,
			Fecha_fin,
			id_persona,
			id_area,
			Color,
			Fecha_insercion,
			Estado
		)
		VALUES
		(
			@fecha_inicio,
			@fecha_fin,
			@id_persona,
			@id_area,
			@color,
			GETDATE(),
			@estado
		)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Horario_listarHorarioHoy]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_Clinica_Horario_listarHorarioHoy] 

AS
BEGIN
	declare @num int;
	set @num =1;
	declare @hoy date;
	set @hoy = convert(date, GETDATE()) ;
	set @hoy = DATEADD(DAY,@num,@hoy);
	declare @manana varchar(10);
	declare @tarde  varchar(10);
	declare @noche  varchar(10);
	declare @reten  varchar(10);
	set @manana = '#28a745';
	set @tarde  = '#ffc107';
	set @noche  = '#007bff';
	set @reten  = '#dc3545';
	DECLARE @VariableTabla TABLE (area varchar(50),persona varchar(100), turno varchar(50));
	/*INSERT INTO @VariableTabla */
	select a.Nombre,pe.Nombre as persona,
	CASE WHEN h.Color= @manana THEN CONCAT(pe.Nombre,' : ',convert(varchar, convert(TIME, h.Fecha_inicio), 24),' - ',convert(varchar, convert(TIME, h.Fecha_fin), 24)) ELSE '' end as 'manana' ,
	case WHEN h.Color= @tarde THEN CONCAT( pe.Nombre,' : ',convert(varchar, convert(TIME, h.Fecha_inicio), 24),' - ',convert(varchar, convert(TIME, h.Fecha_fin), 24)) ELSE ''end as 'tarde' ,
	case WHEN h.Color= @noche THEN CONCAT( pe.Nombre,' : ',convert(varchar, convert(TIME, h.Fecha_inicio), 24),' - ',convert(varchar, convert(TIME, h.Fecha_fin), 24)) ELSE ''end as 'noche' ,
	case WHEN h.Color= @reten THEN CONCAT( pe.Nombre,' : ',convert(varchar, convert(TIME, h.Fecha_inicio), 24),' - ',convert(varchar, convert(TIME, h.Fecha_fin), 24)) ELSE ''end as 'reten' 

	from Horario as h
	inner join	Area as a on a.id_area = h.id_area
	inner join  Persona as pe on pe.id_persona = h.id_persona
	where  convert(date, h.Fecha_inicio) = @hoy and h.Estado=1
	order by Nombre

END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Horario_listarHorarioNum]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_Horario_listarHorarioNum]
	@num int
AS
BEGIN
	
	declare @hoy date;
	set @hoy = convert(date, GETDATE()) ;
	set @hoy = DATEADD(DAY,@num,@hoy);
	declare @manana varchar(10);
	declare @tarde  varchar(10);
	declare @noche  varchar(10);
	declare @reten  varchar(10);
	set @manana = '#28a745';
	set @tarde  = '#ffc107';
	set @noche  = '#007bff';
	set @reten  = '#dc3545';
	DECLARE @VariableTabla TABLE (area varchar(50),persona varchar(100), turno varchar(50));
	/*INSERT INTO @VariableTabla */
	select a.Nombre,pe.Nombre as persona,
	CASE WHEN h.Color= @manana THEN CONCAT(pe.Nombre,' ',pe.ApeMat,'<br>  ',' ', convert(DATE, h.Fecha_inicio),'<br> ',convert(varchar, convert(TIME, h.Fecha_inicio), 24),' - ',convert(varchar, convert(TIME, h.Fecha_fin), 24)) ELSE '' end as 'manana' ,
	case WHEN h.Color= @tarde THEN CONCAT(pe.Nombre,' ',pe.ApeMat,'<br>  ',' ', convert(DATE, h.Fecha_inicio),' <br>',convert(varchar, convert(TIME, h.Fecha_inicio), 24),' - ',convert(varchar, convert(TIME, h.Fecha_fin), 24)) ELSE ''end as 'tarde' ,
	case WHEN h.Color= @noche THEN CONCAT(pe.Nombre,' ',pe.ApeMat,'<br>  ',' ', convert(DATE, h.Fecha_inicio),'<br> ',convert(varchar, convert(TIME, h.Fecha_inicio), 24),' - ',convert(varchar, convert(TIME, h.Fecha_fin), 24)) ELSE ''end as 'noche' ,
	case WHEN h.Color= @reten THEN CONCAT(pe.Nombre,' ',pe.ApeMat,'<br>  ',' ', convert(DATE, h.Fecha_inicio),'<br> ',convert(varchar, convert(TIME, h.Fecha_inicio), 24),' - ',convert(varchar, convert(TIME, h.Fecha_fin), 24)) ELSE ''end as 'reten' 

	from Horario as h
	inner join	Area as a on a.id_area = h.id_area
	inner join  Persona as pe on pe.id_persona = h.id_persona
	where  convert(date, h.Fecha_inicio) = @hoy and h.Estado=1
	order by pe.Nombre
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Horario_listarHorarioPorArea]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[usp_Clinica_Horario_listarHorarioPorArea]
	@id_area int
AS
BEGIN
	SELECT 
	h.id_horario,
	h.Fecha_inicio,
	h.Fecha_fin,
	h.Dia,
	h.id_persona,
	CONCAT( p.Nombre , ' ',p.ApePat,' ',p.ApeMat) AS Nombre ,
	h.Comentario,
	h.Color,
	DATEPART(yy,h.Fecha_inicio) AS Anio_inicio,
	DATEPART(mm,h.Fecha_inicio) AS Mes_inicio,
	DATEPART(dd,h.Fecha_inicio) AS 'Dia_inicio',
	DATEPART(hh,h.Fecha_inicio) AS Hora_inicio,
	DATEPART(mi,h.Fecha_inicio) AS Minuto_inicio,
	DATEPART(yy,h.Fecha_fin) AS Anio_fin,
	DATEPART(mm,h.Fecha_fin) AS Mes_fin,
	DATEPART(dd,h.Fecha_fin) AS 'Dia_fin',
	DATEPART(hh,h.Fecha_fin) AS Hora_fin,
	DATEPART(mi,h.Fecha_fin) AS Minuto_fin
	 
	FROM Horario AS h
	INNER JOIN Area AS e
			  ON e.id_area = h.id_area
	INNER JOIN Persona AS p
			  ON p.id_persona = h.id_persona
                    
	WHERE (h.Fecha_inicio >=  DATEADD(MM,-2,convert(date,getdate())) AND h.Fecha_inicio <= DATEADD(MM,2,convert(date,getdate())))
	AND e.id_area = @id_area and h.Estado = 1 and p.Estado=1
                    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Horario_modificarEstado]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_Horario_modificarEstado]
	@id_horario int
AS
BEGIN
	UPDATE Horario
	SET Estado = 0
	WHERE id_horario = @id_horario
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Horario_verificarExistenciaHorario]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_Horario_verificarExistenciaHorario]
	@anio int,
	@mes int,
	@dia int,
	@id_persona int,
	@id_area int
	
AS
BEGIN
	select * from Horario
	where year(Fecha_fin) = @anio 
	and MONTH(Fecha_inicio)=@mes 
	and DAY(Fecha_inicio)=@dia 
	and id_persona = @id_persona
	and id_area = @id_area
	and Estado = 1
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_horaServidor]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_horaServidor]
	
AS
BEGIN
	 
	select convert(varchar, getdate(), 20) as Fecha
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_listarReporteTurnoConsolidado]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_listarReporteTurnoConsolidado]
	@inicioFecha date,
	@finFecha date
AS
BEGIN
	declare @nuevoFinfecha date;
	set @nuevoFinfecha = DATEADD(DAY, 1, @finFecha);

	declare @nuevoIniciofecha date;
	set @nuevoIniciofecha = DATEADD(DAY, 0, @inicioFecha);

	DECLARE @temporal TABLE (id_log int, IdUsuario int ,Usuario varchar(50), InicioTurno datetime, FinTurno datetime,dif int ,conteo int)
	insert into @temporal
	select 
	lo.id_log,
	lo.idUsuario,
	usu.Usuario,
	lo.InicioTurno ,
	lo.FinTurno ,
	DATEDIFF(HOUR,lo.InicioTurno,lo.FinTurno) as dif ,
	case 
		when DATEDIFF(minute,lo.InicioTurno,lo.FinTurno) >690  then '2'
		when DATEDIFF(minute,lo.InicioTurno,lo.FinTurno) >330  then '1' else '0'
	end as conteo
	from [Log] as lo 
	inner join Usuario as usu on usu.id_usuario = lo.idUsuario
	where FinTurno is not null
	and lo.InicioTurno between @nuevoIniciofecha and @nuevoFinfecha

	select temp.Usuario, sum(temp.conteo) as Calculo from @temporal as temp
	group by temp.Usuario
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Log_ActualizarTurno]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_Log_ActualizarTurno]
@idLog int
AS
BEGIN
	UPDATE [Log]
	SET
	
	FinTurno = getdate()
	where id_log = @idLog
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Log_ActualizarTurno2]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Clinica_Log_ActualizarTurno2]
@idLog int,
@idUsuario int
AS
BEGIN
	UPDATE [Log]
	SET
	
	FinTurno = getdate()
	where id_log = @idLog and idUsuario = @idUsuario
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Log_BuscarPersonaPorId]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_Log_BuscarPersonaPorId]
	@idPersona int

AS
BEGIN
	select * from Persona as per where per.id_persona=@idPersona
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Log_buscarRegistro]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_Log_buscarRegistro]

	@idLog int ,
	@idUsuario int
AS
BEGIN
	select * from 	[Log] where id_log = @idLog and idUsuario = @idUsuario
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Log_insertarNuevoTurno]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_Log_insertarNuevoTurno]
	@idUsuario int
AS
	BEGIN
		INSERT INTO [Log]
	(
		
		idUsuario,
		InicioTurno
		
	)
	VALUES
	(
		@idUsuario,
		GETDATE()
	)
	END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Log_listarReporteTurno]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_Log_listarReporteTurno]
	@idUsuario int,
	@fechaInicio date,
	@fechaFin date
AS
BEGIN
	declare @nuevoFinfecha date;
	set @nuevoFinfecha = DATEADD(DAY, 1, @fechaFin);

	declare @nuevoIniciofecha date;
	set @nuevoIniciofecha = DATEADD(DAY, -1, @fechaInicio);

	select 
	lo.id_log,
	lo.idUsuario,
	usu.Usuario,
	lo.InicioTurno ,
	lo.FinTurno ,
	DATEDIFF(HOUR,lo.InicioTurno,lo.FinTurno) as dif ,
	case 
		when DATEDIFF(minute,lo.InicioTurno,lo.FinTurno) >690  then '2'
		when DATEDIFF(minute,lo.InicioTurno,lo.FinTurno) >330  then '1' else '0'
		
	end as conteo
	from [Log] as lo 
	inner join Usuario as usu on usu.id_usuario = lo.idUsuario

	where lo.FinTurno is not null  
	AND lo.idUsuario =@idUsuario
	AND lo.InicioTurno BETWEEN @nuevoIniciofecha AND @nuevoFinfecha
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Log_listarTurno]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[usp_Clinica_Log_listarTurno]
	@idUsuario int
AS
BEGIN
	
	select 
	l.id_log,
	l.idUsuario,
	convert(varchar, l.InicioTurno, 20) as InicioTurno,
	convert(varchar, l.FinTurno, 20) as FinTurno,
	case 
	when l.FinTurno is not null then '0' else '1' 
	end as Pendiente
	from Log as l 
	where(
	l.InicioTurno>=  DATEADD(MM,-2,convert(date,getdate())) 
	AND l.InicioTurno <= DATEADD(MM,2,convert(date,getdate()))
	)
	and idUsuario = @idUsuario
	order by  l.id_log asc
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Log_listarTurno2]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_Log_listarTurno2]
	
AS
BEGIN
	
	select 
	l.id_log,
	l.idUsuario,
	usu.Usuario,
	
	
	convert(varchar, l.InicioTurno, 20) as InicioTurno,
	convert(varchar, l.FinTurno, 20) as FinTurno,
	/*DATEDIFF(second,l.InicioTurno,GETDATE())as diferencia ,*/
	
	case 
	when l.FinTurno is not null then '0' else '1' 
	end as Pendiente,
	case 
	when l.FinTurno is not null then '0' else '1' 
	end as Pendiente2,
	case 
	when l.FinTurno is not null then DATEDIFF(SECOND,l.InicioTurno,l.FinTurno) else DATEDIFF(second,l.InicioTurno,GETDATE()) 
	end as Diferencia
	from Log as l 
	inner join Usuario as usu on usu.id_usuario = l.idUsuario
	where(
	l.InicioTurno>=  DATEADD(MM,-2,convert(date,getdate())) 
	AND l.InicioTurno <= DATEADD(MM,2,convert(date,getdate()))
	)
	
	order by  l.id_log asc
END

GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Log_verificarTurnoPendiente]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ================================================

CREATE PROCEDURE [dbo].[usp_Clinica_Log_verificarTurnoPendiente]
	@idUsuario int
AS
BEGIN
	select 
	l.id_log,
	l.idUsuario,
	convert(varchar, l.InicioTurno, 20) as InicioTurno,
	convert(varchar, l.FinTurno, 20) as FinTurno,
	case 
		when l.FinTurno is not null then '0' else '1' 
		end as Pendiente 
	from Log as l
	where l.InicioTurno = (select max(lo.InicioTurno) from Log as lo where lo.IdUsuario = @idUsuario  ) and  l.idUsuario = @idUsuario
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Login_insertar]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_Login_insertar]
	@idUsuario int,
	@login int 

AS
BEGIN
	insert into Log(
	idPersona,
	FechaLoginLogout,
	LoginLogout
	)values(
	@idUsuario,
	GETDATE(),
	@login
	)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Permisos_agregarPermisosModulosPorRol]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Clinica_Permisos_agregarPermisosModulosPorRol]
	@idRol int,
	@idModulos int
AS
BEGIN

	INSERT INTO ModulosPermisos
	(
	
		Rol_idRol,
		Modulos_idModulos
	)
	VALUES
	(
		@idRol,
		@idModulos
	)

END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Permisos_eliminarPermisosModulosPorRol]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Clinica_Permisos_eliminarPermisosModulosPorRol] 
	@idRol int
AS
BEGIN

	delete from ModulosPermisos where Rol_idRol = @idRol

END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Permisos_listarPermisosModulosPorRol]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_Permisos_listarPermisosModulosPorRol]
	@idRol int
AS
BEGIN
	SELECT
	 m.Nombre,
	 m.idModulos,
	 CASE  WHEN (SELECT COUNT(*) FROM ModulosPermisos AS mp WHERE mp.Modulos_idModulos = m.idModulos and mp.Rol_idRol=@idRol )>0 THEN '1' ELSE'0' END as 'existe'
	FROM Modulos AS m  

END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_buscarPersonaPorDni]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_Persona_buscarPersonaPorDni]
	@dni varchar(250)
AS
BEGIN
	select
	*
	from
	Persona as pe
	where pe.Dni = @dni and pe.Estado=1
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_eliminarPersona]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_Persona_eliminarPersona]
	@id_persona int 
AS
BEGIN
	update Persona
	set
	Estado = 0
	where id_persona=@id_persona
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_insertarNuevaPersona]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[usp_Clinica_Persona_insertarNuevaPersona]

	@id_txtDniPersona varchar(250),
	@id_txtNombrePersona varchar(250),
	@id_txtApePatPersona varchar(250),
	@id_txtApeMatPersona varchar(250),
	@id_selectArea int,
	@id_selectSexo varchar(250),
	@id_selectEspecializacion int,
	@id_selectTipoPersona int,
	@estado int,
	@telefono varchar(50)
AS
BEGIN
	INSERT INTO	Persona
(
	
	Dni,
	Nombre,
	ApePat,
	ApeMat,
	Sexo,
	id_area,
	FechaInsercion,

	Estado,
	id_especializacion,
	id_tipo_persona,
	telefono
)
VALUES
(
	@id_txtDniPersona,
	@id_txtNombrePersona,
	@id_txtApePatPersona,
	@id_txtApeMatPersona,
	@id_selectSexo,
	@id_selectArea,
	getdate(),
	
	@estado,
	@id_selectEspecializacion,
	@id_selectTipoPersona,
	@telefono
)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_listaPersonaAgregadaEnHorario]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_Persona_listaPersonaAgregadaEnHorario]
	@id_especialidad int
AS
BEGIN
	SELECT pe.id_persona,pe.Nombre , pe.ApePat,pe.ApeMat FROM persona AS pe 
	INNER JOIN Horario AS h
			  ON h.id_persona = pe.id_persona
	INNER JOIN	Especialidad AS e
			  ON e.id_especialidad = h.id_especialidad
	WHERE h.id_especialidad = @id_especialidad        
	GROUP BY pe.id_persona , pe.Nombre, pe.ApePat,pe.ApeMat

END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_listarEnfermeras]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_Persona_listarEnfermeras]
	
AS
BEGIN
	select * from
	Persona as pe 
	inner join Usuario as usu on usu.idPersona = pe.id_persona 
	where pe.id_tipo_persona =2
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_ListarPersonaParaHorario]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL

-- =============================================
CREATE PROCEDURE [dbo].[usp_Clinica_Persona_ListarPersonaParaHorario] 
	@id_area int
AS
BEGIN
	select
	pe.id_persona,
	CONCAT(pe.ApePat,' ',ApeMat,', ', pe.Nombre) as Nombre
	from  Persona as pe
	where  pe.id_area = @id_area and pe.Estado=1
	order by pe.ApePat
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_listarPersonaPorIdArea]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_Persona_listarPersonaPorIdArea]
	@id_are int 
AS
BEGIN
	select
	pe.id_persona,
	pe.Dni,
	pe.Nombre,
	pe.ApePat,
	pe.ApeMat,
	pe.Sexo,
	ar.id_area,
	ar.Nombre as area_Nombre,
	tp.id_tipo_persona,
	tp.nombre as tipo_Nombre,
	es.id_especializacion,
	es.Nombre as espe_Nombre,
	pe.telefono
	from Persona as pe


	inner join Area as ar on ar.id_area = pe.id_area
	inner join Tipo_Persona as tp on tp.id_tipo_persona = pe.id_tipo_persona
	inner join Especializacion as es on es.id_especializacion = pe.id_especializacion

	where pe.Estado = 1 and ar.id_area=@id_are
	 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_listarTodasLasPersonas]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_Persona_listarTodasLasPersonas] 
	
AS
BEGIN
	select 
	pe.Dni,
	pe.Nombre,
	pe.ApePat,
	pe.ApeMat,
	pe.Sexo,
	a.Nombre as Area
	from Persona as pe
	inner join Area as a on a.id_area = pe.id_area
	order by pe.Nombre desc
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_modificarPersona]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_Persona_modificarPersona]
	@id_persona int,
	@id_txtDniPersona varchar(250),
	@id_txtNombrePersona varchar(250),
	@id_txtApePatPersona varchar(250),
	@id_txtApeMatPersona varchar(250),
	@id_selectArea int,
	@id_selectSexo varchar(250),
	@id_selectEspecializacion int,
	@id_selectTipoPersona int,
	@estado int,
	@telefono varchar(50)
AS
BEGIN
	UPDATE Persona
	SET
	-- id_persona -- this column value is auto-generated
	Dni = @id_txtDniPersona,
	Nombre = @id_txtNombrePersona,
	ApePat = @id_txtApePatPersona,
	ApeMat = @id_txtApeMatPersona,
	Sexo = @id_selectSexo,
	id_area = @id_selectArea,

	FechaModificacion = GETDATE(),
	
	id_especializacion = @id_selectEspecializacion,
	id_tipo_persona = @id_selectTipoPersona,
	telefono = @telefono
	where Persona.id_persona=@id_persona
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Rol_listarRol]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_Rol_listarRol]
	
AS
BEGIN
	select
	*
	from
	Rol as r
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_TipoPersona_ListarTipoPersona]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_TipoPersona_ListarTipoPersona] 
	
AS
BEGIN
	
	select * from Tipo_Persona as tp

END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Usuario_BuscarUsuarioContrasena]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_Usuario_BuscarUsuarioContrasena]
	@Usuario varchar(250),
	@Contrasena varchar (250)
AS
BEGIN
	select
	usu.id_usuario,
	usu.Rol_idRol,
	--usu.Nombre,
	--usu.ApePat,
	--usu.ApeMat,
	per.Nombre as Nombre,
	per.ApePat as ApePat,
	per.ApePat as ApeMat,
	per.id_tipo_persona,
	per.Dni,
	usu.Avatar,
	usu.Estado,
	r.Nombre as NombreRol
	
	from 
	Usuario as usu
	inner join Rol as r on r.idRol = usu.Rol_idRol
	inner join Persona as per on per.id_persona= usu.idPersona

	where usu.Usuario = @Usuario and usu.Contrasena= @Contrasena and usu.Estado = 1
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Usuario_insertarUsuario]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_Usuario_insertarUsuario]
	@idRol int ,
	@usuario varchar(100),
	@constrasena varchar(100),
	@nombre varchar(100),
	@idpersona int 
AS
BEGIN
	INSERT INTO Usuario
	(
		-- id_usuario -- this column value is auto-generated
		Rol_idRol,
		Usuario,
		Contrasena,
		Nombre,
		Avatar,
		Estado,
		CambioContrasena,
		
		idPersona
	)
	VALUES
	(
		@idRol,
		@usuario,
		@constrasena,
		@nombre,
		'...',
		1,
		0,
		@idpersona
	)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Usuario_ListarPersonaSinUsuario]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_Clinica_Usuario_ListarPersonaSinUsuario]
	
AS
BEGIN
	
	select 
	CONCAT(p.ApePat,' ',p.ApeMat,' ,',p.Nombre) as NombrePersona,
	a.Nombre as NombreArea,
	p.Dni,
	p.id_persona
	from
	Persona as p
	inner join Area as a on p.id_area = a.id_area
	where p.id_persona not in(
		select
		pe.id_persona
		from Persona as pe 
		inner join Usuario as usu on usu.idPersona = pe.id_persona
		where usu.Estado = 1
	)
	and p.Estado = 1

END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Usuario_listarUsuario]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[usp_Clinica_Usuario_listarUsuario]

	
AS
BEGIN
	select
	usu.id_usuario,
	usu.Rol_idRol,
	usu.Usuario,
	--usu.Nombre,
	--usu.ApePat,
	--usu.ApeMat,
	concat (per.ApePat,' ',per.ApeMat,',',per.Nombre) as Nombre,
	--per.ApePat as ApePat,
	--per.ApeMat as ApeMat,
	per.Dni,
	usu.Avatar,
	usu.Estado,
	r.Nombre as NombreRol
	
	from 
	Usuario as usu
	inner join Rol as r on r.idRol = usu.Rol_idRol
	inner join Persona as per on per.id_persona= usu.idPersona
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Usuario_permisoModulo]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_Usuario_permisoModulo]
	@idUsuario int 
AS
BEGIN
	SELECT 
	u.id_usuario,
	pe.Dni,
	u.Usuario,
	pe.Nombre as NombreUsuario,
	pe.ApePat,
	pe.ApeMat,
	Avatar,
	u.Estado,
	r.idRol,
	r.Nombre as NombreRol,
	
	m.idModulos,
	m.Nombre as NombreModulos

	
	FROM Usuario AS u
	INNER JOIN Rol AS r ON r.idRol = u.Rol_idRol
	INNER JOIN ModulosPermisos AS mp
			  ON mp.Rol_idRol = r.idRol
	INNER JOIN Modulos AS m
			  ON m.idModulos = mp.Modulos_idModulos
			  inner join Persona as pe on pe.id_persona = u.idPersona
	WHERE u.id_usuario = @idUsuario


END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Usuario_verificarExistenciaUsuario]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_Usuario_verificarExistenciaUsuario]
	@usuario varchar(100)
AS
BEGIN
	select 
	*
	from 
	Usuario as usu
	where usu.Usuario = @usuario
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Usuario_verificarUsuario]    Script Date: 23/11/2019 11:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_Usuario_verificarUsuario]
	@usuario varchar(250),
	@password varchar(250)
AS
BEGIN
	select 
	* 
	from Usuario as usu
	where usu.NombreUsuario = @usuario and usu.Contrasena = @password
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'encargado de la Especialidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Area'
GO
