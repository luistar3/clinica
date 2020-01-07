USE [clinica]
GO
/****** Object:  Table [dbo].[Area]    Script Date: 26/12/2019 16:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAMPANA]    Script Date: 26/12/2019 16:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Especializacion]    Script Date: 26/12/2019 16:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HOJA1]    Script Date: 26/12/2019 16:09:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOJA1](
	[RAZON_SOCIAL] [nvarchar](255) NULL,
	[PERIODO] [nvarchar](255) NULL,
	[MES] [nvarchar](255) NULL,
	[GRUPO] [nvarchar](255) NULL,
	[SUBGRUPO] [nvarchar](255) NULL,
	[COD_FAMILIAP] [nvarchar](255) NULL,
	[DES_FAMILIA] [nvarchar](255) NULL,
	[COD_FAMILIA] [nvarchar](255) NULL,
	[DES_SUBFAMILIA] [nvarchar](255) NULL,
	[CODIGO] [nvarchar](255) NULL,
	[PRODUCTO] [nvarchar](255) NULL,
	[PRECIOPROM] [float] NULL,
	[CANTIDAD] [float] NULL,
	[VEN_CIGV] [float] NULL,
	[STOCK] [float] NULL,
	[DOCUMENTO] [nvarchar](255) NULL,
	[SUCURSAL] [nvarchar](255) NULL,
	[fec_emision] [datetime] NULL,
	[FEC_ACTUALIZA] [datetime] NULL,
	[OPERACION] [nvarchar](255) NULL,
	[NUM_PARTE_PROV] [nvarchar](255) NULL,
	[DOC_CLIENTE] [nvarchar](255) NULL,
	[CLIENTE] [nvarchar](255) NULL,
	[CLIENTE_EMAIL] [nvarchar](255) NULL,
	[CLIENTE_TELEFONO] [nvarchar](255) NULL,
	[CLIENTE_DIRECCION] [nvarchar](255) NULL,
	[TOTAL_BOLETA] [float] NULL,
	[COD_ATENCION] [nvarchar](255) NULL,
	[FEC_ATENCION] [datetime] NULL,
	[PACIENTE] [nvarchar](255) NULL,
	[PAC_EDAD] [nvarchar](255) NULL,
	[PAC_GENERO] [nvarchar](255) NULL,
	[MEDICO] [nvarchar](255) NULL,
	[ESPECIALIDAD] [nvarchar](255) NULL,
	[DIAGNOSTICO] [nvarchar](255) NULL,
	[COD_USUARIO] [nvarchar](255) NULL,
	[TIP_ESTADO] [nvarchar](255) NULL,
	[TURNO] [nvarchar](255) NULL,
	[MEDICO_JEFE] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Horario]    Script Date: 26/12/2019 16:09:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  Table [dbo].[Modulos]    Script Date: 26/12/2019 16:09:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ModulosPermisos]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  Table [dbo].[Persona]    Script Date: 26/12/2019 16:09:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 26/12/2019 16:09:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sl_CODIGO]    Script Date: 26/12/2019 16:09:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sl_CODIGO](
	[codigo] [varchar](250) NULL,
	[form] [int] NULL,
	[operacion] [varchar](250) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sl_ESPECIALIDAD]    Script Date: 26/12/2019 16:09:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sl_ESPECIALIDAD](
	[nombre] [varchar](250) NULL,
	[form] [int] NULL,
	[operacion] [varchar](50) NULL,
	[razonsocial] [varchar](300) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sl_PAQUETE]    Script Date: 26/12/2019 16:09:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sl_PAQUETE](
	[idCodigo] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](50) NULL,
	[especialidad] [varchar](30) NULL,
	[precio] [decimal](10, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tipo_Persona]    Script Date: 26/12/2019 16:09:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 26/12/2019 16:09:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Area] ON 

INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (1, N'ALERGOLOGIA', 1, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (2, N'EMERGENCIA', 1, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (3, N'MEDICINA GENERAL', 4, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (4, N'ONCOLOGIA', 9, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (5, N'ANESTESIOLOGIA', 6, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (6, N'ENDOCRINOLOGIA', 7, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (7, N'MEDICINA INTERNA', 4, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (8, N'OTORRINOLARINGOLOGIA', 3, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (9, N'CARDIOLOGIA', 2, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (10, N'GASTROENTEROLOGIA', 5, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (11, N'NEFROLOGIA', 4, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (12, N'PEDIATRIA', 3, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (13, N'CIRUGIA CARDIOVASCULAR', 5, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (14, N'GERIATRIA', 8, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (15, N'NEONATOLOGIA', 3, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (16, N'PSICOLOGIA', 4, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (17, N'CIRUGIA DE CABEZA Y CUELLO', 5, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (18, N'GINECOLOGIA 1', 6, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (19, N'NEUMOLOGIA', 3, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (20, N'PSIQUIATRIA', 4, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (21, N'CIRUGIA GENERAL 1', 5, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (22, N'HEMATOLOGIA', 9, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (23, N'NEUROCIRUGIA', 3, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (24, N'REUMATOLOGIA', 5, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (25, N'CIRUGIA PEDIATRICA', 6, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (26, N'HOSPITALIZACION', 3, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (27, N'NEUROLOGIA', 9, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (28, N'SALA DE OPERACIONES', 5, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (29, N'CIRUGIA PLASTICA 1', 6, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (30, N'INFECTOLOGIA', 7, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (31, N'NUTRICION', 7, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (32, N'SALA DE PARTOS', 4, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (33, N'DERMATOLOGIA', 3, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (34, N'INFERTILIDAD', 8, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (35, N'OBSTETRICIA', 6, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (36, N'TRAUMATOLOGIA', 6, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (37, N'ECOGRAFIA', 7, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (38, N'MFR!A1', 8, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (39, N'OFTALMOLOGIA', 8, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (40, N'UROLOGIA', 4, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (43, N'CIRUGIA GENERAL 2', 4, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (44, N'CIRUGIA PLASTICA 2', 6, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (45, N'GINECOLOGIA 2', 6, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (46, N'CENTRAL DE DATOS', 3, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (47, N'INFORMES', 3, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (48, N'GERENCIA', 9, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (49, N'UCI', 7, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (50, N'CENTRO QUIRURGICO', 1, NULL, NULL, NULL)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (51, N'RAYOS X', 2, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Area] OFF
SET IDENTITY_INSERT [dbo].[CAMPANA] ON 

INSERT [dbo].[CAMPANA] ([IdCampana], [UrlImg], [InicioFecha], [FinFecha], [IdUsuario], [FechaInsercio], [FechaModificacion], [Estado], [id_area], [Descripcion], [NombreCampana]) VALUES (3, N'20191119013514LifeCam-Studio-1.jpg', CAST(N'2019-11-19 00:00:00.000' AS DateTime), CAST(N'2019-11-25 00:00:00.000' AS DateTime), 1, CAST(N'2019-11-18 19:35:14.490' AS DateTime), CAST(N'2019-11-22 10:48:56.167' AS DateTime), 1, 47, N'des', N'logito uci')
INSERT [dbo].[CAMPANA] ([IdCampana], [UrlImg], [InicioFecha], [FinFecha], [IdUsuario], [FechaInsercio], [FechaModificacion], [Estado], [id_area], [Descripcion], [NombreCampana]) VALUES (4, N'20191121175522', CAST(N'2019-11-19 00:00:00.000' AS DateTime), CAST(N'2019-11-24 00:00:00.000' AS DateTime), 1, CAST(N'2019-11-19 11:28:59.290' AS DateTime), CAST(N'2019-11-21 13:13:16.153' AS DateTime), 1, 21, N'La Municipalidad Provincial de Ferreñafe mediante la División de Educación Cultura, Salud, Deporte y Juventudes en coordinación con la Red de Salud de Ferreñafe realizara la Campaña Medica de atención integral la cual se realizara el día Sábado 09 de Agosto a partir de las 8.00 de la mañana hasta la 1.00 de la tarde dia', N'SERVICIO DE CIRUGIA GENERAL')
INSERT [dbo].[CAMPANA] ([IdCampana], [UrlImg], [InicioFecha], [FinFecha], [IdUsuario], [FechaInsercio], [FechaModificacion], [Estado], [id_area], [Descripcion], [NombreCampana]) VALUES (5, N'20191119172944LOGO-2-01-01.png', CAST(N'2019-11-19 00:00:00.000' AS DateTime), CAST(N'2019-11-24 00:00:00.000' AS DateTime), 1, CAST(N'2019-11-19 11:29:44.767' AS DateTime), CAST(N'2019-11-19 19:09:28.743' AS DateTime), 1, 49, N'des', N'logito 2')
INSERT [dbo].[CAMPANA] ([IdCampana], [UrlImg], [InicioFecha], [FinFecha], [IdUsuario], [FechaInsercio], [FechaModificacion], [Estado], [id_area], [Descripcion], [NombreCampana]) VALUES (6, N'20191121171800', CAST(N'2019-11-18 00:00:00.000' AS DateTime), CAST(N'2019-11-30 00:00:00.000' AS DateTime), 1, CAST(N'2019-11-19 11:32:19.403' AS DateTime), CAST(N'2019-11-21 13:14:30.380' AS DateTime), 1, 48, N'america latina', N'logito usa')
INSERT [dbo].[CAMPANA] ([IdCampana], [UrlImg], [InicioFecha], [FinFecha], [IdUsuario], [FechaInsercio], [FechaModificacion], [Estado], [id_area], [Descripcion], [NombreCampana]) VALUES (1004, N'20191122164550', CAST(N'2019-11-21 00:00:00.000' AS DateTime), CAST(N'2019-11-21 00:00:00.000' AS DateTime), 1, CAST(N'2019-11-21 10:07:42.700' AS DateTime), CAST(N'2019-11-22 10:46:44.740' AS DateTime), 1, 3, N'MIGRAÑAS', N'MIGRAÑAS')
INSERT [dbo].[CAMPANA] ([IdCampana], [UrlImg], [InicioFecha], [FinFecha], [IdUsuario], [FechaInsercio], [FechaModificacion], [Estado], [id_area], [Descripcion], [NombreCampana]) VALUES (1006, N'20191122164539', CAST(N'2019-11-21 00:00:00.000' AS DateTime), CAST(N'2019-11-21 00:00:00.000' AS DateTime), 1, CAST(N'2019-11-21 10:15:42.080' AS DateTime), CAST(N'2019-11-22 10:46:33.760' AS DateTime), 1, 51, N'GINE', N'GINE')
INSERT [dbo].[CAMPANA] ([IdCampana], [UrlImg], [InicioFecha], [FinFecha], [IdUsuario], [FechaInsercio], [FechaModificacion], [Estado], [id_area], [Descripcion], [NombreCampana]) VALUES (1007, N'20191122164815', CAST(N'2019-11-19 00:00:00.000' AS DateTime), CAST(N'2019-11-25 00:00:00.000' AS DateTime), 1, CAST(N'2019-11-22 10:49:09.200' AS DateTime), NULL, 1, 47, N'img', N'img')
INSERT [dbo].[CAMPANA] ([IdCampana], [UrlImg], [InicioFecha], [FinFecha], [IdUsuario], [FechaInsercio], [FechaModificacion], [Estado], [id_area], [Descripcion], [NombreCampana]) VALUES (1008, N'20191122164839', CAST(N'2019-11-22 00:00:00.000' AS DateTime), CAST(N'2019-11-22 00:00:00.000' AS DateTime), 1, CAST(N'2019-11-22 10:49:33.683' AS DateTime), NULL, 1, 51, N'sdsd', N'sds')
SET IDENTITY_INSERT [dbo].[CAMPANA] OFF
SET IDENTITY_INSERT [dbo].[Especializacion] ON 

INSERT [dbo].[Especializacion] ([id_especializacion], [Nombre], [Fecha_insercion], [Fecha_modificacion], [Fecha_eliminacion], [Estado]) VALUES (1, N'ANGIOLOGIA', NULL, NULL, NULL, 1)
INSERT [dbo].[Especializacion] ([id_especializacion], [Nombre], [Fecha_insercion], [Fecha_modificacion], [Fecha_eliminacion], [Estado]) VALUES (2, N'DERMATOLOGÍA', NULL, NULL, NULL, 1)
INSERT [dbo].[Especializacion] ([id_especializacion], [Nombre], [Fecha_insercion], [Fecha_modificacion], [Fecha_eliminacion], [Estado]) VALUES (3, N'OFTALMOLOGÍA', NULL, NULL, NULL, 1)
INSERT [dbo].[Especializacion] ([id_especializacion], [Nombre], [Fecha_insercion], [Fecha_modificacion], [Fecha_eliminacion], [Estado]) VALUES (4, N'UROLOGÍA', NULL, NULL, NULL, 1)
INSERT [dbo].[Especializacion] ([id_especializacion], [Nombre], [Fecha_insercion], [Fecha_modificacion], [Fecha_eliminacion], [Estado]) VALUES (5, N'OTROS', NULL, NULL, NULL, 1)
INSERT [dbo].[Especializacion] ([id_especializacion], [Nombre], [Fecha_insercion], [Fecha_modificacion], [Fecha_eliminacion], [Estado]) VALUES (6, N'LIC. ENFERMERIA', NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Especializacion] OFF
SET IDENTITY_INSERT [dbo].[Horario] ON 

INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1661, CAST(N'2019-10-02 17:00:00.000' AS DateTime), CAST(N'2019-10-02 19:00:00.000' AS DateTime), NULL, 1143, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:48:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1662, CAST(N'2019-10-03 17:00:00.000' AS DateTime), CAST(N'2019-10-03 19:00:00.000' AS DateTime), NULL, 1143, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:48:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1663, CAST(N'2019-10-04 17:00:00.000' AS DateTime), CAST(N'2019-10-04 19:00:00.000' AS DateTime), NULL, 1143, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:48:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1664, CAST(N'2019-10-05 17:00:00.000' AS DateTime), CAST(N'2019-10-05 19:00:00.000' AS DateTime), NULL, 1143, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:48:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1665, CAST(N'2019-10-06 17:00:00.000' AS DateTime), CAST(N'2019-10-06 19:00:00.000' AS DateTime), NULL, 1143, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:48:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1666, CAST(N'2019-10-07 17:00:00.000' AS DateTime), CAST(N'2019-10-07 19:00:00.000' AS DateTime), NULL, 1143, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:48:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1667, CAST(N'2019-10-08 17:00:00.000' AS DateTime), CAST(N'2019-10-08 19:00:00.000' AS DateTime), NULL, 1143, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:48:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1668, CAST(N'2019-10-09 17:00:00.000' AS DateTime), CAST(N'2019-10-09 19:00:00.000' AS DateTime), NULL, 1143, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:48:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1669, CAST(N'2019-10-10 17:00:00.000' AS DateTime), CAST(N'2019-10-10 19:00:00.000' AS DateTime), NULL, 1143, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:48:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1670, CAST(N'2019-10-11 17:00:00.000' AS DateTime), CAST(N'2019-10-11 19:00:00.000' AS DateTime), NULL, 1143, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:48:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1671, CAST(N'2019-10-12 17:00:00.000' AS DateTime), CAST(N'2019-10-12 19:00:00.000' AS DateTime), NULL, 1143, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:48:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1672, CAST(N'2019-10-13 17:00:00.000' AS DateTime), CAST(N'2019-10-13 19:00:00.000' AS DateTime), NULL, 1143, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:48:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1673, CAST(N'2019-10-14 17:00:00.000' AS DateTime), CAST(N'2019-10-14 19:00:00.000' AS DateTime), NULL, 1143, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:48:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1674, CAST(N'2019-10-15 17:00:00.000' AS DateTime), CAST(N'2019-10-15 19:00:00.000' AS DateTime), NULL, 1143, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:48:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1675, CAST(N'2019-10-16 17:00:00.000' AS DateTime), CAST(N'2019-10-16 19:00:00.000' AS DateTime), NULL, 1143, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:48:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1676, CAST(N'2019-10-17 17:00:00.000' AS DateTime), CAST(N'2019-10-17 19:00:00.000' AS DateTime), NULL, 1143, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:48:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1677, CAST(N'2019-10-18 17:00:00.000' AS DateTime), CAST(N'2019-10-18 19:00:00.000' AS DateTime), NULL, 1143, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:48:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1678, CAST(N'2019-10-19 17:00:00.000' AS DateTime), CAST(N'2019-10-19 19:00:00.000' AS DateTime), NULL, 1143, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:48:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1679, CAST(N'2019-10-20 17:00:00.000' AS DateTime), CAST(N'2019-10-20 19:00:00.000' AS DateTime), NULL, 1143, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:48:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1680, CAST(N'2019-10-21 17:00:00.000' AS DateTime), CAST(N'2019-10-21 19:00:00.000' AS DateTime), NULL, 1143, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:48:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1681, CAST(N'2019-10-22 17:00:00.000' AS DateTime), CAST(N'2019-10-22 19:00:00.000' AS DateTime), NULL, 1143, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:48:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1682, CAST(N'2019-10-23 17:00:00.000' AS DateTime), CAST(N'2019-10-23 19:00:00.000' AS DateTime), NULL, 1143, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:48:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1683, CAST(N'2019-10-24 17:00:00.000' AS DateTime), CAST(N'2019-10-24 19:00:00.000' AS DateTime), NULL, 1143, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:48:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1684, CAST(N'2019-10-25 17:00:00.000' AS DateTime), CAST(N'2019-10-25 19:00:00.000' AS DateTime), NULL, 1143, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:48:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1685, CAST(N'2019-10-26 17:00:00.000' AS DateTime), CAST(N'2019-10-26 19:00:00.000' AS DateTime), NULL, 1143, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:48:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1686, CAST(N'2019-10-27 17:00:00.000' AS DateTime), CAST(N'2019-10-27 19:00:00.000' AS DateTime), NULL, 1143, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:48:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1687, CAST(N'2019-10-28 17:00:00.000' AS DateTime), CAST(N'2019-10-28 19:00:00.000' AS DateTime), NULL, 1143, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:48:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1688, CAST(N'2019-10-29 17:00:00.000' AS DateTime), CAST(N'2019-10-29 19:00:00.000' AS DateTime), NULL, 1143, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:48:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1689, CAST(N'2019-10-30 17:00:00.000' AS DateTime), CAST(N'2019-10-30 19:00:00.000' AS DateTime), NULL, 1143, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:48:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1690, CAST(N'2019-10-31 17:00:00.000' AS DateTime), CAST(N'2019-10-31 19:00:00.000' AS DateTime), NULL, 1143, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:48:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1691, CAST(N'2019-10-02 17:00:00.000' AS DateTime), CAST(N'2019-10-03 07:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:52:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1692, CAST(N'2019-10-03 17:00:00.000' AS DateTime), CAST(N'2019-10-04 07:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#ffc107', CAST(N'2019-10-03 08:52:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1693, CAST(N'2019-10-02 09:00:00.000' AS DateTime), CAST(N'2019-10-02 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 08:56:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1694, CAST(N'2019-10-03 09:00:00.000' AS DateTime), CAST(N'2019-10-03 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 08:56:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1695, CAST(N'2019-10-04 09:00:00.000' AS DateTime), CAST(N'2019-10-04 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 08:56:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1696, CAST(N'2019-10-05 09:00:00.000' AS DateTime), CAST(N'2019-10-05 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 08:56:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1697, CAST(N'2019-10-06 09:00:00.000' AS DateTime), CAST(N'2019-10-06 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 08:56:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1698, CAST(N'2019-10-07 09:00:00.000' AS DateTime), CAST(N'2019-10-07 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 08:56:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1699, CAST(N'2019-10-08 09:00:00.000' AS DateTime), CAST(N'2019-10-08 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 08:56:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1700, CAST(N'2019-10-09 09:00:00.000' AS DateTime), CAST(N'2019-10-09 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 08:56:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1701, CAST(N'2019-10-10 09:00:00.000' AS DateTime), CAST(N'2019-10-10 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 08:56:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1702, CAST(N'2019-10-11 09:00:00.000' AS DateTime), CAST(N'2019-10-11 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 08:56:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1703, CAST(N'2019-10-12 09:00:00.000' AS DateTime), CAST(N'2019-10-12 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 08:56:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1704, CAST(N'2019-10-13 09:00:00.000' AS DateTime), CAST(N'2019-10-13 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 08:56:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1705, CAST(N'2019-10-14 09:00:00.000' AS DateTime), CAST(N'2019-10-14 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 08:56:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1706, CAST(N'2019-10-15 09:00:00.000' AS DateTime), CAST(N'2019-10-15 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 08:56:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1707, CAST(N'2019-10-16 09:00:00.000' AS DateTime), CAST(N'2019-10-16 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 08:56:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1708, CAST(N'2019-10-17 09:00:00.000' AS DateTime), CAST(N'2019-10-17 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 08:56:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1709, CAST(N'2019-10-18 09:00:00.000' AS DateTime), CAST(N'2019-10-18 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 08:56:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1710, CAST(N'2019-10-19 09:00:00.000' AS DateTime), CAST(N'2019-10-19 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 08:56:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1711, CAST(N'2019-10-20 09:00:00.000' AS DateTime), CAST(N'2019-10-20 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 08:56:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1712, CAST(N'2019-10-21 09:00:00.000' AS DateTime), CAST(N'2019-10-21 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 08:56:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1713, CAST(N'2019-10-22 09:00:00.000' AS DateTime), CAST(N'2019-10-22 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 08:56:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1714, CAST(N'2019-10-23 09:00:00.000' AS DateTime), CAST(N'2019-10-23 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 08:56:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1715, CAST(N'2019-10-24 09:00:00.000' AS DateTime), CAST(N'2019-10-24 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 08:56:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1716, CAST(N'2019-10-25 09:00:00.000' AS DateTime), CAST(N'2019-10-25 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 08:56:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1717, CAST(N'2019-10-26 09:00:00.000' AS DateTime), CAST(N'2019-10-26 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 08:56:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1718, CAST(N'2019-10-27 09:00:00.000' AS DateTime), CAST(N'2019-10-27 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 08:56:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1719, CAST(N'2019-10-28 09:00:00.000' AS DateTime), CAST(N'2019-10-28 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 08:56:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1720, CAST(N'2019-10-29 09:00:00.000' AS DateTime), CAST(N'2019-10-29 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 08:56:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1721, CAST(N'2019-10-30 09:00:00.000' AS DateTime), CAST(N'2019-10-30 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 08:56:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1722, CAST(N'2019-10-31 09:00:00.000' AS DateTime), CAST(N'2019-10-31 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 08:56:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1723, CAST(N'2019-10-08 09:00:00.000' AS DateTime), CAST(N'2019-10-08 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 09:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1724, CAST(N'2019-10-22 09:00:00.000' AS DateTime), CAST(N'2019-10-22 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 09:02:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1727, CAST(N'2019-10-02 08:00:00.000' AS DateTime), CAST(N'2019-10-02 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:23:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1728, CAST(N'2019-10-03 08:00:00.000' AS DateTime), CAST(N'2019-10-03 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:23:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1729, CAST(N'2019-10-04 08:00:00.000' AS DateTime), CAST(N'2019-10-04 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:23:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1730, CAST(N'2019-10-05 08:00:00.000' AS DateTime), CAST(N'2019-10-05 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:23:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1731, CAST(N'2019-10-06 08:00:00.000' AS DateTime), CAST(N'2019-10-06 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:23:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1732, CAST(N'2019-10-07 08:00:00.000' AS DateTime), CAST(N'2019-10-07 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:23:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1733, CAST(N'2019-10-08 08:00:00.000' AS DateTime), CAST(N'2019-10-08 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:23:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1734, CAST(N'2019-10-09 08:00:00.000' AS DateTime), CAST(N'2019-10-09 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:23:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1735, CAST(N'2019-10-10 08:00:00.000' AS DateTime), CAST(N'2019-10-10 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:23:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1736, CAST(N'2019-10-11 08:00:00.000' AS DateTime), CAST(N'2019-10-11 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:23:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1737, CAST(N'2019-10-12 08:00:00.000' AS DateTime), CAST(N'2019-10-12 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:23:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1738, CAST(N'2019-10-13 08:00:00.000' AS DateTime), CAST(N'2019-10-13 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:23:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1739, CAST(N'2019-10-14 08:00:00.000' AS DateTime), CAST(N'2019-10-14 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:23:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1740, CAST(N'2019-10-15 08:00:00.000' AS DateTime), CAST(N'2019-10-15 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:23:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1741, CAST(N'2019-10-16 08:00:00.000' AS DateTime), CAST(N'2019-10-16 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:23:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1742, CAST(N'2019-10-17 08:00:00.000' AS DateTime), CAST(N'2019-10-17 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:23:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1743, CAST(N'2019-10-18 08:00:00.000' AS DateTime), CAST(N'2019-10-18 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:23:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1744, CAST(N'2019-10-19 08:00:00.000' AS DateTime), CAST(N'2019-10-19 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:23:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1745, CAST(N'2019-10-20 08:00:00.000' AS DateTime), CAST(N'2019-10-20 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:23:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1746, CAST(N'2019-10-21 08:00:00.000' AS DateTime), CAST(N'2019-10-21 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:23:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1747, CAST(N'2019-10-22 08:00:00.000' AS DateTime), CAST(N'2019-10-22 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:23:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1748, CAST(N'2019-10-23 08:00:00.000' AS DateTime), CAST(N'2019-10-23 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:23:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1749, CAST(N'2019-10-24 08:00:00.000' AS DateTime), CAST(N'2019-10-24 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:23:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1750, CAST(N'2019-10-25 08:00:00.000' AS DateTime), CAST(N'2019-10-25 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:23:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1751, CAST(N'2019-10-26 08:00:00.000' AS DateTime), CAST(N'2019-10-26 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:23:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1752, CAST(N'2019-10-27 08:00:00.000' AS DateTime), CAST(N'2019-10-27 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:23:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1753, CAST(N'2019-10-28 08:00:00.000' AS DateTime), CAST(N'2019-10-28 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:23:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1754, CAST(N'2019-10-29 08:00:00.000' AS DateTime), CAST(N'2019-10-29 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:23:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1755, CAST(N'2019-10-30 08:00:00.000' AS DateTime), CAST(N'2019-10-30 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:23:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1756, CAST(N'2019-10-31 08:00:00.000' AS DateTime), CAST(N'2019-10-31 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:23:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1757, CAST(N'2019-10-10 08:00:00.000' AS DateTime), CAST(N'2019-10-10 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:26:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1758, CAST(N'2019-10-02 16:00:00.000' AS DateTime), CAST(N'2019-10-02 19:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:28:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1759, CAST(N'2019-10-03 16:00:00.000' AS DateTime), CAST(N'2019-10-03 19:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:28:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1760, CAST(N'2019-10-04 16:00:00.000' AS DateTime), CAST(N'2019-10-04 19:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:28:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1761, CAST(N'2019-10-05 16:00:00.000' AS DateTime), CAST(N'2019-10-05 19:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:28:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1762, CAST(N'2019-10-06 16:00:00.000' AS DateTime), CAST(N'2019-10-06 19:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:28:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1763, CAST(N'2019-10-07 16:00:00.000' AS DateTime), CAST(N'2019-10-07 19:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:28:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1764, CAST(N'2019-10-08 16:00:00.000' AS DateTime), CAST(N'2019-10-08 19:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:28:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1765, CAST(N'2019-10-09 16:00:00.000' AS DateTime), CAST(N'2019-10-09 19:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:28:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1766, CAST(N'2019-10-10 16:00:00.000' AS DateTime), CAST(N'2019-10-10 19:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1767, CAST(N'2019-10-11 16:00:00.000' AS DateTime), CAST(N'2019-10-11 19:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1768, CAST(N'2019-10-12 16:00:00.000' AS DateTime), CAST(N'2019-10-12 19:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1769, CAST(N'2019-10-13 16:00:00.000' AS DateTime), CAST(N'2019-10-13 19:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1770, CAST(N'2019-10-14 16:00:00.000' AS DateTime), CAST(N'2019-10-14 19:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:28:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1771, CAST(N'2019-10-15 16:00:00.000' AS DateTime), CAST(N'2019-10-15 19:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:28:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1772, CAST(N'2019-10-16 16:00:00.000' AS DateTime), CAST(N'2019-10-16 19:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:28:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1773, CAST(N'2019-10-17 16:00:00.000' AS DateTime), CAST(N'2019-10-17 19:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1774, CAST(N'2019-10-18 16:00:00.000' AS DateTime), CAST(N'2019-10-18 19:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1775, CAST(N'2019-10-19 16:00:00.000' AS DateTime), CAST(N'2019-10-19 19:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:28:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1776, CAST(N'2019-10-20 16:00:00.000' AS DateTime), CAST(N'2019-10-20 19:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1777, CAST(N'2019-10-21 16:00:00.000' AS DateTime), CAST(N'2019-10-21 19:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1778, CAST(N'2019-10-22 16:00:00.000' AS DateTime), CAST(N'2019-10-22 19:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:28:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1779, CAST(N'2019-10-23 16:00:00.000' AS DateTime), CAST(N'2019-10-23 19:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:28:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1780, CAST(N'2019-10-24 16:00:00.000' AS DateTime), CAST(N'2019-10-24 19:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:28:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1781, CAST(N'2019-10-25 16:00:00.000' AS DateTime), CAST(N'2019-10-25 19:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1782, CAST(N'2019-10-26 16:00:00.000' AS DateTime), CAST(N'2019-10-26 19:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1783, CAST(N'2019-10-27 16:00:00.000' AS DateTime), CAST(N'2019-10-27 19:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1784, CAST(N'2019-10-28 16:00:00.000' AS DateTime), CAST(N'2019-10-28 19:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1785, CAST(N'2019-10-29 16:00:00.000' AS DateTime), CAST(N'2019-10-29 19:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:28:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1786, CAST(N'2019-10-30 16:00:00.000' AS DateTime), CAST(N'2019-10-30 19:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:28:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1787, CAST(N'2019-10-31 16:00:00.000' AS DateTime), CAST(N'2019-10-31 19:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:28:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1788, CAST(N'2019-10-02 08:00:00.000' AS DateTime), CAST(N'2019-10-02 13:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1789, CAST(N'2019-10-03 08:00:00.000' AS DateTime), CAST(N'2019-10-03 13:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1790, CAST(N'2019-10-04 08:00:00.000' AS DateTime), CAST(N'2019-10-04 13:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1791, CAST(N'2019-10-05 08:00:00.000' AS DateTime), CAST(N'2019-10-05 13:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1792, CAST(N'2019-10-06 08:00:00.000' AS DateTime), CAST(N'2019-10-06 13:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1793, CAST(N'2019-10-07 08:00:00.000' AS DateTime), CAST(N'2019-10-07 13:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1794, CAST(N'2019-10-08 08:00:00.000' AS DateTime), CAST(N'2019-10-08 13:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1795, CAST(N'2019-10-09 08:00:00.000' AS DateTime), CAST(N'2019-10-09 13:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1796, CAST(N'2019-10-10 08:00:00.000' AS DateTime), CAST(N'2019-10-10 13:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1797, CAST(N'2019-10-11 08:00:00.000' AS DateTime), CAST(N'2019-10-11 13:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1798, CAST(N'2019-10-12 08:00:00.000' AS DateTime), CAST(N'2019-10-12 13:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1799, CAST(N'2019-10-13 08:00:00.000' AS DateTime), CAST(N'2019-10-13 13:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1800, CAST(N'2019-10-14 08:00:00.000' AS DateTime), CAST(N'2019-10-14 13:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1801, CAST(N'2019-10-15 08:00:00.000' AS DateTime), CAST(N'2019-10-15 13:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1802, CAST(N'2019-10-16 08:00:00.000' AS DateTime), CAST(N'2019-10-16 13:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1803, CAST(N'2019-10-17 08:00:00.000' AS DateTime), CAST(N'2019-10-17 13:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1804, CAST(N'2019-10-18 08:00:00.000' AS DateTime), CAST(N'2019-10-18 13:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1805, CAST(N'2019-10-19 08:00:00.000' AS DateTime), CAST(N'2019-10-19 13:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1806, CAST(N'2019-10-20 08:00:00.000' AS DateTime), CAST(N'2019-10-20 13:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1807, CAST(N'2019-10-21 08:00:00.000' AS DateTime), CAST(N'2019-10-21 13:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1808, CAST(N'2019-10-22 08:00:00.000' AS DateTime), CAST(N'2019-10-22 13:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1809, CAST(N'2019-10-23 08:00:00.000' AS DateTime), CAST(N'2019-10-23 13:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1810, CAST(N'2019-10-24 08:00:00.000' AS DateTime), CAST(N'2019-10-24 13:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1811, CAST(N'2019-10-25 08:00:00.000' AS DateTime), CAST(N'2019-10-25 13:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1812, CAST(N'2019-10-26 08:00:00.000' AS DateTime), CAST(N'2019-10-26 13:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1813, CAST(N'2019-10-27 08:00:00.000' AS DateTime), CAST(N'2019-10-27 13:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1814, CAST(N'2019-10-28 08:00:00.000' AS DateTime), CAST(N'2019-10-28 13:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1815, CAST(N'2019-10-29 08:00:00.000' AS DateTime), CAST(N'2019-10-29 13:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1816, CAST(N'2019-10-30 08:00:00.000' AS DateTime), CAST(N'2019-10-30 13:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1817, CAST(N'2019-10-31 08:00:00.000' AS DateTime), CAST(N'2019-10-31 13:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1818, CAST(N'2019-10-02 16:00:00.000' AS DateTime), CAST(N'2019-10-02 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:34:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1819, CAST(N'2019-10-03 16:00:00.000' AS DateTime), CAST(N'2019-10-03 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:34:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1820, CAST(N'2019-10-04 16:00:00.000' AS DateTime), CAST(N'2019-10-04 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:34:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1821, CAST(N'2019-10-05 16:00:00.000' AS DateTime), CAST(N'2019-10-05 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:34:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1822, CAST(N'2019-10-06 16:00:00.000' AS DateTime), CAST(N'2019-10-06 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:34:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1823, CAST(N'2019-10-07 16:00:00.000' AS DateTime), CAST(N'2019-10-07 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:34:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1824, CAST(N'2019-10-08 16:00:00.000' AS DateTime), CAST(N'2019-10-08 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:34:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1825, CAST(N'2019-10-09 16:00:00.000' AS DateTime), CAST(N'2019-10-09 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:34:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1826, CAST(N'2019-10-10 16:00:00.000' AS DateTime), CAST(N'2019-10-10 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:34:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1827, CAST(N'2019-10-11 16:00:00.000' AS DateTime), CAST(N'2019-10-11 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:34:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1828, CAST(N'2019-10-12 16:00:00.000' AS DateTime), CAST(N'2019-10-12 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:34:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1829, CAST(N'2019-10-13 16:00:00.000' AS DateTime), CAST(N'2019-10-13 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:34:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1830, CAST(N'2019-10-14 16:00:00.000' AS DateTime), CAST(N'2019-10-14 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:34:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1831, CAST(N'2019-10-15 16:00:00.000' AS DateTime), CAST(N'2019-10-15 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:34:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1832, CAST(N'2019-10-16 16:00:00.000' AS DateTime), CAST(N'2019-10-16 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:34:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1833, CAST(N'2019-10-17 16:00:00.000' AS DateTime), CAST(N'2019-10-17 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:34:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1834, CAST(N'2019-10-18 16:00:00.000' AS DateTime), CAST(N'2019-10-18 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:34:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1835, CAST(N'2019-10-19 16:00:00.000' AS DateTime), CAST(N'2019-10-19 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:34:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1836, CAST(N'2019-10-20 16:00:00.000' AS DateTime), CAST(N'2019-10-20 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:34:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1837, CAST(N'2019-10-21 16:00:00.000' AS DateTime), CAST(N'2019-10-21 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:34:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1838, CAST(N'2019-10-22 16:00:00.000' AS DateTime), CAST(N'2019-10-22 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:34:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1839, CAST(N'2019-10-23 16:00:00.000' AS DateTime), CAST(N'2019-10-23 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:34:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1840, CAST(N'2019-10-24 16:00:00.000' AS DateTime), CAST(N'2019-10-24 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:34:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1841, CAST(N'2019-10-25 16:00:00.000' AS DateTime), CAST(N'2019-10-25 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:34:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1842, CAST(N'2019-10-26 16:00:00.000' AS DateTime), CAST(N'2019-10-26 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:34:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1843, CAST(N'2019-10-27 16:00:00.000' AS DateTime), CAST(N'2019-10-27 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:34:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1844, CAST(N'2019-10-28 16:00:00.000' AS DateTime), CAST(N'2019-10-28 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:34:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1845, CAST(N'2019-10-29 16:00:00.000' AS DateTime), CAST(N'2019-10-29 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:34:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1846, CAST(N'2019-10-30 16:00:00.000' AS DateTime), CAST(N'2019-10-30 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:34:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1847, CAST(N'2019-10-31 16:00:00.000' AS DateTime), CAST(N'2019-10-31 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:34:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1848, CAST(N'2019-10-12 08:00:00.000' AS DateTime), CAST(N'2019-10-12 12:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:45:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1849, CAST(N'2019-10-13 08:00:00.000' AS DateTime), CAST(N'2019-10-13 12:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:52:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1850, CAST(N'2019-10-26 08:00:00.000' AS DateTime), CAST(N'2019-10-26 12:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:53:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1851, CAST(N'2019-10-30 08:00:00.000' AS DateTime), CAST(N'2019-10-30 12:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:53:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1852, CAST(N'2019-10-15 08:00:00.000' AS DateTime), CAST(N'2019-10-15 12:00:00.000' AS DateTime), NULL, 1179, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:53:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1853, CAST(N'2019-10-16 08:00:00.000' AS DateTime), CAST(N'2019-10-16 12:00:00.000' AS DateTime), NULL, 1179, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:53:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1854, CAST(N'2019-10-18 08:00:00.000' AS DateTime), CAST(N'2019-10-18 12:00:00.000' AS DateTime), NULL, 1179, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:54:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1855, CAST(N'2019-10-19 08:00:00.000' AS DateTime), CAST(N'2019-10-19 12:00:00.000' AS DateTime), NULL, 1179, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:54:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1856, CAST(N'2019-10-22 08:00:00.000' AS DateTime), CAST(N'2019-10-22 12:00:00.000' AS DateTime), NULL, 1179, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:54:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1857, CAST(N'2019-10-25 08:00:00.000' AS DateTime), CAST(N'2019-10-25 12:00:00.000' AS DateTime), NULL, 1179, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:54:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1858, CAST(N'2019-10-28 08:00:00.000' AS DateTime), CAST(N'2019-10-28 12:00:00.000' AS DateTime), NULL, 1179, 12, NULL, N'#28a745', CAST(N'2019-10-03 09:54:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1859, CAST(N'2019-10-15 04:00:00.000' AS DateTime), CAST(N'2019-10-15 19:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#007bff', CAST(N'2019-10-03 09:55:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1860, CAST(N'2019-10-19 04:00:00.000' AS DateTime), CAST(N'2019-10-19 19:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#007bff', CAST(N'2019-10-03 09:55:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1861, CAST(N'2019-10-22 04:00:00.000' AS DateTime), CAST(N'2019-10-22 19:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#007bff', CAST(N'2019-10-03 09:55:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1862, CAST(N'2019-10-31 04:00:00.000' AS DateTime), CAST(N'2019-10-31 19:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#007bff', CAST(N'2019-10-03 09:56:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1863, CAST(N'2019-10-15 16:00:00.000' AS DateTime), CAST(N'2019-10-15 19:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:57:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1864, CAST(N'2019-10-15 16:00:00.000' AS DateTime), CAST(N'2019-10-15 19:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1865, CAST(N'2019-10-31 16:00:00.000' AS DateTime), CAST(N'2019-10-31 19:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1866, CAST(N'2019-10-22 16:00:00.000' AS DateTime), CAST(N'2019-10-22 19:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#ffc107', CAST(N'2019-10-03 09:58:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1867, CAST(N'2019-10-03 16:00:00.000' AS DateTime), CAST(N'2019-10-03 19:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#ffc107', CAST(N'2019-10-03 10:26:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1868, CAST(N'2019-10-04 16:00:00.000' AS DateTime), CAST(N'2019-10-04 19:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#ffc107', CAST(N'2019-10-03 10:26:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1869, CAST(N'2019-10-05 16:00:00.000' AS DateTime), CAST(N'2019-10-05 19:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#ffc107', CAST(N'2019-10-03 10:26:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1870, CAST(N'2019-10-06 16:00:00.000' AS DateTime), CAST(N'2019-10-06 19:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#ffc107', CAST(N'2019-10-03 10:26:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1871, CAST(N'2019-10-07 16:00:00.000' AS DateTime), CAST(N'2019-10-07 19:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#ffc107', CAST(N'2019-10-03 10:26:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1872, CAST(N'2019-10-08 16:00:00.000' AS DateTime), CAST(N'2019-10-08 19:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#ffc107', CAST(N'2019-10-03 10:26:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1873, CAST(N'2019-10-09 16:00:00.000' AS DateTime), CAST(N'2019-10-09 19:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#ffc107', CAST(N'2019-10-03 10:26:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1874, CAST(N'2019-10-10 16:00:00.000' AS DateTime), CAST(N'2019-10-10 19:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#ffc107', CAST(N'2019-10-03 10:26:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1875, CAST(N'2019-10-11 16:00:00.000' AS DateTime), CAST(N'2019-10-11 19:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#ffc107', CAST(N'2019-10-03 10:26:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1876, CAST(N'2019-10-12 16:00:00.000' AS DateTime), CAST(N'2019-10-12 19:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#ffc107', CAST(N'2019-10-03 10:26:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1877, CAST(N'2019-10-13 16:00:00.000' AS DateTime), CAST(N'2019-10-13 19:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#ffc107', CAST(N'2019-10-03 10:26:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1878, CAST(N'2019-10-14 16:00:00.000' AS DateTime), CAST(N'2019-10-14 19:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#ffc107', CAST(N'2019-10-03 10:26:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1879, CAST(N'2019-10-15 16:00:00.000' AS DateTime), CAST(N'2019-10-15 19:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#ffc107', CAST(N'2019-10-03 10:26:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1880, CAST(N'2019-10-16 16:00:00.000' AS DateTime), CAST(N'2019-10-16 19:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#ffc107', CAST(N'2019-10-03 10:26:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1881, CAST(N'2019-10-17 16:00:00.000' AS DateTime), CAST(N'2019-10-17 19:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#ffc107', CAST(N'2019-10-03 10:26:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1882, CAST(N'2019-10-18 16:00:00.000' AS DateTime), CAST(N'2019-10-18 19:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#ffc107', CAST(N'2019-10-03 10:26:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1883, CAST(N'2019-10-19 16:00:00.000' AS DateTime), CAST(N'2019-10-19 19:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#ffc107', CAST(N'2019-10-03 10:26:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1884, CAST(N'2019-10-20 16:00:00.000' AS DateTime), CAST(N'2019-10-20 19:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#ffc107', CAST(N'2019-10-03 10:26:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1885, CAST(N'2019-10-21 16:00:00.000' AS DateTime), CAST(N'2019-10-21 19:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#ffc107', CAST(N'2019-10-03 10:26:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1886, CAST(N'2019-10-22 16:00:00.000' AS DateTime), CAST(N'2019-10-22 19:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#ffc107', CAST(N'2019-10-03 10:26:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1887, CAST(N'2019-10-23 16:00:00.000' AS DateTime), CAST(N'2019-10-23 19:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#ffc107', CAST(N'2019-10-03 10:26:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1888, CAST(N'2019-10-24 16:00:00.000' AS DateTime), CAST(N'2019-10-24 19:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#ffc107', CAST(N'2019-10-03 10:26:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1889, CAST(N'2019-10-25 16:00:00.000' AS DateTime), CAST(N'2019-10-25 19:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#ffc107', CAST(N'2019-10-03 10:26:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1890, CAST(N'2019-10-26 16:00:00.000' AS DateTime), CAST(N'2019-10-26 19:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#ffc107', CAST(N'2019-10-03 10:26:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1891, CAST(N'2019-10-27 16:00:00.000' AS DateTime), CAST(N'2019-10-27 19:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#ffc107', CAST(N'2019-10-03 10:26:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1892, CAST(N'2019-10-28 16:00:00.000' AS DateTime), CAST(N'2019-10-28 19:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#ffc107', CAST(N'2019-10-03 10:26:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1893, CAST(N'2019-10-29 16:00:00.000' AS DateTime), CAST(N'2019-10-29 19:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#ffc107', CAST(N'2019-10-03 10:26:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1894, CAST(N'2019-10-30 16:00:00.000' AS DateTime), CAST(N'2019-10-30 19:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#ffc107', CAST(N'2019-10-03 10:26:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1895, CAST(N'2019-10-31 16:00:00.000' AS DateTime), CAST(N'2019-10-31 19:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#ffc107', CAST(N'2019-10-03 10:26:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1896, CAST(N'2019-10-09 09:00:00.000' AS DateTime), CAST(N'2019-10-09 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 10:30:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1897, CAST(N'2019-10-09 09:00:00.000' AS DateTime), CAST(N'2019-10-09 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 10:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1898, CAST(N'2019-10-23 09:00:00.000' AS DateTime), CAST(N'2019-10-23 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 10:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1899, CAST(N'2019-10-16 09:00:00.000' AS DateTime), CAST(N'2019-10-16 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 10:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1900, CAST(N'2019-10-30 09:00:00.000' AS DateTime), CAST(N'2019-10-30 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 10:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1901, CAST(N'2019-10-04 09:00:00.000' AS DateTime), CAST(N'2019-10-04 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 10:33:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1902, CAST(N'2019-10-11 09:00:00.000' AS DateTime), CAST(N'2019-10-11 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 10:33:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1903, CAST(N'2019-10-18 09:00:00.000' AS DateTime), CAST(N'2019-10-18 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 10:33:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1904, CAST(N'2019-10-25 09:00:00.000' AS DateTime), CAST(N'2019-10-25 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 10:33:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1905, CAST(N'2019-10-05 09:00:00.000' AS DateTime), CAST(N'2019-10-05 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 10:34:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1906, CAST(N'2019-10-12 09:00:00.000' AS DateTime), CAST(N'2019-10-12 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 10:34:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1907, CAST(N'2019-10-19 09:00:00.000' AS DateTime), CAST(N'2019-10-19 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 10:34:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1908, CAST(N'2019-10-26 09:00:00.000' AS DateTime), CAST(N'2019-10-26 13:00:00.000' AS DateTime), NULL, 1142, 24, NULL, N'#28a745', CAST(N'2019-10-03 10:34:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1909, CAST(N'2019-10-03 08:00:00.000' AS DateTime), CAST(N'2019-10-03 12:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#28a745', CAST(N'2019-10-03 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1910, CAST(N'2019-10-04 08:00:00.000' AS DateTime), CAST(N'2019-10-04 12:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#28a745', CAST(N'2019-10-03 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1911, CAST(N'2019-10-05 08:00:00.000' AS DateTime), CAST(N'2019-10-05 12:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#28a745', CAST(N'2019-10-03 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1912, CAST(N'2019-10-06 08:00:00.000' AS DateTime), CAST(N'2019-10-06 12:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#28a745', CAST(N'2019-10-03 11:01:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1913, CAST(N'2019-10-07 08:00:00.000' AS DateTime), CAST(N'2019-10-07 12:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#28a745', CAST(N'2019-10-03 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1914, CAST(N'2019-10-08 08:00:00.000' AS DateTime), CAST(N'2019-10-08 12:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#28a745', CAST(N'2019-10-03 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1915, CAST(N'2019-10-09 08:00:00.000' AS DateTime), CAST(N'2019-10-09 12:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#28a745', CAST(N'2019-10-03 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1916, CAST(N'2019-10-10 08:00:00.000' AS DateTime), CAST(N'2019-10-10 12:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#28a745', CAST(N'2019-10-03 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1917, CAST(N'2019-10-11 08:00:00.000' AS DateTime), CAST(N'2019-10-11 12:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#28a745', CAST(N'2019-10-03 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1918, CAST(N'2019-10-12 08:00:00.000' AS DateTime), CAST(N'2019-10-12 12:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#28a745', CAST(N'2019-10-03 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1919, CAST(N'2019-10-13 08:00:00.000' AS DateTime), CAST(N'2019-10-13 12:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#28a745', CAST(N'2019-10-03 11:01:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1920, CAST(N'2019-10-14 08:00:00.000' AS DateTime), CAST(N'2019-10-14 12:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#28a745', CAST(N'2019-10-03 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1921, CAST(N'2019-10-15 08:00:00.000' AS DateTime), CAST(N'2019-10-15 12:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#28a745', CAST(N'2019-10-03 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1922, CAST(N'2019-10-16 08:00:00.000' AS DateTime), CAST(N'2019-10-16 12:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#28a745', CAST(N'2019-10-03 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1923, CAST(N'2019-10-17 08:00:00.000' AS DateTime), CAST(N'2019-10-17 12:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#28a745', CAST(N'2019-10-03 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1924, CAST(N'2019-10-18 08:00:00.000' AS DateTime), CAST(N'2019-10-18 12:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#28a745', CAST(N'2019-10-03 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1925, CAST(N'2019-10-19 08:00:00.000' AS DateTime), CAST(N'2019-10-19 12:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#28a745', CAST(N'2019-10-03 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1926, CAST(N'2019-10-20 08:00:00.000' AS DateTime), CAST(N'2019-10-20 12:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#28a745', CAST(N'2019-10-03 11:01:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1927, CAST(N'2019-10-21 08:00:00.000' AS DateTime), CAST(N'2019-10-21 12:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#28a745', CAST(N'2019-10-03 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1928, CAST(N'2019-10-22 08:00:00.000' AS DateTime), CAST(N'2019-10-22 12:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#28a745', CAST(N'2019-10-03 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1929, CAST(N'2019-10-23 08:00:00.000' AS DateTime), CAST(N'2019-10-23 12:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#28a745', CAST(N'2019-10-03 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1930, CAST(N'2019-10-24 08:00:00.000' AS DateTime), CAST(N'2019-10-24 12:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#28a745', CAST(N'2019-10-03 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1931, CAST(N'2019-10-25 08:00:00.000' AS DateTime), CAST(N'2019-10-25 12:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#28a745', CAST(N'2019-10-03 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1932, CAST(N'2019-10-26 08:00:00.000' AS DateTime), CAST(N'2019-10-26 12:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#28a745', CAST(N'2019-10-03 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1933, CAST(N'2019-10-27 08:00:00.000' AS DateTime), CAST(N'2019-10-27 12:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#28a745', CAST(N'2019-10-03 11:01:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1934, CAST(N'2019-10-28 08:00:00.000' AS DateTime), CAST(N'2019-10-28 12:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#28a745', CAST(N'2019-10-03 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1935, CAST(N'2019-10-29 08:00:00.000' AS DateTime), CAST(N'2019-10-29 12:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#28a745', CAST(N'2019-10-03 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1936, CAST(N'2019-10-30 08:00:00.000' AS DateTime), CAST(N'2019-10-30 12:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#28a745', CAST(N'2019-10-03 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1937, CAST(N'2019-10-31 08:00:00.000' AS DateTime), CAST(N'2019-10-31 12:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#28a745', CAST(N'2019-10-03 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1938, CAST(N'2019-10-03 00:00:00.000' AS DateTime), CAST(N'2019-10-03 23:59:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#007bff', CAST(N'2019-10-03 11:35:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1939, CAST(N'2019-10-03 08:00:00.000' AS DateTime), CAST(N'2019-10-03 23:59:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 11:36:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1940, CAST(N'2019-10-03 07:00:00.000' AS DateTime), CAST(N'2019-10-03 13:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 12:25:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1941, CAST(N'2019-10-03 07:00:00.000' AS DateTime), CAST(N'2019-10-03 13:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 12:25:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1942, CAST(N'2019-10-05 07:00:00.000' AS DateTime), CAST(N'2019-10-05 13:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 12:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1943, CAST(N'2019-10-10 07:00:00.000' AS DateTime), CAST(N'2019-10-10 13:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 12:32:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1944, CAST(N'2019-10-23 07:00:00.000' AS DateTime), CAST(N'2019-10-23 13:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 12:33:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1945, CAST(N'2019-10-31 07:00:00.000' AS DateTime), CAST(N'2019-10-31 13:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 12:33:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1946, CAST(N'2019-10-03 03:00:00.000' AS DateTime), CAST(N'2019-10-03 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#007bff', CAST(N'2019-10-03 12:34:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1947, CAST(N'2019-10-03 15:00:00.000' AS DateTime), CAST(N'2019-10-03 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 12:35:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1948, CAST(N'2019-10-05 15:00:00.000' AS DateTime), CAST(N'2019-10-05 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 12:35:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1949, CAST(N'2019-10-03 07:00:00.000' AS DateTime), CAST(N'2019-10-03 13:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#28a745', CAST(N'2019-10-03 12:37:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1950, CAST(N'2019-10-04 02:00:00.000' AS DateTime), CAST(N'2019-10-04 07:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#007bff', CAST(N'2019-10-03 12:38:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1951, CAST(N'2019-10-04 02:00:00.000' AS DateTime), CAST(N'2019-10-04 07:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#007bff', CAST(N'2019-10-03 12:38:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1952, CAST(N'2019-10-08 02:00:00.000' AS DateTime), CAST(N'2019-10-08 07:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#007bff', CAST(N'2019-10-03 12:39:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1953, CAST(N'2019-10-06 02:00:00.000' AS DateTime), CAST(N'2019-10-06 07:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#007bff', CAST(N'2019-10-03 12:39:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1954, CAST(N'2019-10-09 19:00:00.000' AS DateTime), CAST(N'2019-10-09 20:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#dc3545', CAST(N'2019-10-03 12:40:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1955, CAST(N'2019-10-10 19:00:00.000' AS DateTime), CAST(N'2019-10-10 20:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#dc3545', CAST(N'2019-10-03 12:40:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1956, CAST(N'2019-10-13 19:00:00.000' AS DateTime), CAST(N'2019-10-13 20:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#dc3545', CAST(N'2019-10-03 12:41:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1957, CAST(N'2019-10-14 19:00:00.000' AS DateTime), CAST(N'2019-10-14 20:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#dc3545', CAST(N'2019-10-03 12:41:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1958, CAST(N'2019-10-16 19:00:00.000' AS DateTime), CAST(N'2019-10-16 20:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#dc3545', CAST(N'2019-10-03 12:41:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1959, CAST(N'2019-10-17 19:00:00.000' AS DateTime), CAST(N'2019-10-17 20:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#dc3545', CAST(N'2019-10-03 12:41:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1960, CAST(N'2019-10-20 19:00:00.000' AS DateTime), CAST(N'2019-10-20 20:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#dc3545', CAST(N'2019-10-03 12:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1961, CAST(N'2019-10-23 19:00:00.000' AS DateTime), CAST(N'2019-10-23 20:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#dc3545', CAST(N'2019-10-03 12:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1962, CAST(N'2019-10-28 19:00:00.000' AS DateTime), CAST(N'2019-10-28 20:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#dc3545', CAST(N'2019-10-03 12:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1963, CAST(N'2019-10-30 19:00:00.000' AS DateTime), CAST(N'2019-10-30 20:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#dc3545', CAST(N'2019-10-03 12:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1964, CAST(N'2019-10-31 19:00:00.000' AS DateTime), CAST(N'2019-10-31 20:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#dc3545', CAST(N'2019-10-03 12:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1965, CAST(N'2019-10-04 19:00:00.000' AS DateTime), CAST(N'2019-10-04 20:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#dc3545', CAST(N'2019-10-03 12:43:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1966, CAST(N'2019-10-06 19:00:00.000' AS DateTime), CAST(N'2019-10-06 20:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#dc3545', CAST(N'2019-10-03 12:43:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1967, CAST(N'2019-10-08 19:00:00.000' AS DateTime), CAST(N'2019-10-08 20:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#dc3545', CAST(N'2019-10-03 12:44:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1968, CAST(N'2019-10-03 19:00:00.000' AS DateTime), CAST(N'2019-10-03 20:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#dc3545', CAST(N'2019-10-03 12:45:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1969, CAST(N'2019-10-19 19:00:00.000' AS DateTime), CAST(N'2019-10-19 20:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#dc3545', CAST(N'2019-10-03 12:45:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1970, CAST(N'2019-10-21 19:00:00.000' AS DateTime), CAST(N'2019-10-21 20:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#dc3545', CAST(N'2019-10-03 12:45:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1971, CAST(N'2019-10-29 19:00:00.000' AS DateTime), CAST(N'2019-10-29 20:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#dc3545', CAST(N'2019-10-03 12:45:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1972, CAST(N'2019-10-07 19:00:00.000' AS DateTime), CAST(N'2019-10-07 20:00:00.000' AS DateTime), NULL, 1180, 12, NULL, N'#dc3545', CAST(N'2019-10-03 12:46:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1973, CAST(N'2019-10-12 19:00:00.000' AS DateTime), CAST(N'2019-10-12 20:00:00.000' AS DateTime), NULL, 1180, 12, NULL, N'#dc3545', CAST(N'2019-10-03 12:46:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1974, CAST(N'2019-10-15 19:00:00.000' AS DateTime), CAST(N'2019-10-15 20:00:00.000' AS DateTime), NULL, 1180, 12, NULL, N'#dc3545', CAST(N'2019-10-03 12:46:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1975, CAST(N'2019-10-25 19:00:00.000' AS DateTime), CAST(N'2019-10-25 20:00:00.000' AS DateTime), NULL, 1180, 12, NULL, N'#dc3545', CAST(N'2019-10-03 12:46:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1976, CAST(N'2019-10-26 19:00:00.000' AS DateTime), CAST(N'2019-10-26 20:00:00.000' AS DateTime), NULL, 1180, 12, NULL, N'#dc3545', CAST(N'2019-10-03 12:47:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1977, CAST(N'2019-10-05 19:00:00.000' AS DateTime), CAST(N'2019-10-05 20:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#dc3545', CAST(N'2019-10-03 12:47:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1978, CAST(N'2019-10-18 19:00:00.000' AS DateTime), CAST(N'2019-10-18 20:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#dc3545', CAST(N'2019-10-03 12:47:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1979, CAST(N'2019-10-22 19:00:00.000' AS DateTime), CAST(N'2019-10-22 20:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#dc3545', CAST(N'2019-10-03 12:47:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1980, CAST(N'2019-10-27 19:00:00.000' AS DateTime), CAST(N'2019-10-27 20:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#dc3545', CAST(N'2019-10-03 12:47:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1981, CAST(N'2019-10-19 15:00:00.000' AS DateTime), CAST(N'2019-10-19 19:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#dc3545', CAST(N'2019-10-03 12:50:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1982, CAST(N'2019-10-19 15:00:00.000' AS DateTime), CAST(N'2019-10-19 19:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#dc3545', CAST(N'2019-10-03 12:51:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1983, CAST(N'2019-10-19 15:00:00.000' AS DateTime), CAST(N'2019-10-19 19:00:00.000' AS DateTime), NULL, 1178, 12, NULL, N'#ffc107', CAST(N'2019-10-03 12:52:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1984, CAST(N'2019-10-06 15:00:00.000' AS DateTime), CAST(N'2019-10-06 19:00:00.000' AS DateTime), NULL, 1171, 12, NULL, N'#ffc107', CAST(N'2019-10-03 12:55:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1985, CAST(N'2019-10-13 07:00:00.000' AS DateTime), CAST(N'2019-10-13 13:00:00.000' AS DateTime), NULL, 1170, 12, NULL, N'#28a745', CAST(N'2019-10-03 15:04:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1986, CAST(N'2019-10-03 07:00:00.000' AS DateTime), CAST(N'2019-10-03 13:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#28a745', CAST(N'2019-10-03 15:10:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1987, CAST(N'2019-10-04 07:00:00.000' AS DateTime), CAST(N'2019-10-04 13:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#28a745', CAST(N'2019-10-03 15:10:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1988, CAST(N'2019-10-07 07:00:00.000' AS DateTime), CAST(N'2019-10-07 13:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#28a745', CAST(N'2019-10-03 15:10:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1989, CAST(N'2019-10-09 07:00:00.000' AS DateTime), CAST(N'2019-10-09 13:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#28a745', CAST(N'2019-10-03 15:10:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1990, CAST(N'2019-10-10 07:00:00.000' AS DateTime), CAST(N'2019-10-10 13:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#28a745', CAST(N'2019-10-03 15:10:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1991, CAST(N'2019-10-12 07:00:00.000' AS DateTime), CAST(N'2019-10-12 13:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#28a745', CAST(N'2019-10-03 15:10:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1992, CAST(N'2019-10-14 07:00:00.000' AS DateTime), CAST(N'2019-10-14 13:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#28a745', CAST(N'2019-10-03 15:10:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1993, CAST(N'2019-10-15 07:00:00.000' AS DateTime), CAST(N'2019-10-15 13:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#28a745', CAST(N'2019-10-03 15:10:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1994, CAST(N'2019-10-17 07:00:00.000' AS DateTime), CAST(N'2019-10-17 13:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#28a745', CAST(N'2019-10-03 15:11:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1995, CAST(N'2019-10-18 07:00:00.000' AS DateTime), CAST(N'2019-10-18 13:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#28a745', CAST(N'2019-10-03 15:11:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1996, CAST(N'2019-10-21 07:00:00.000' AS DateTime), CAST(N'2019-10-21 13:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#28a745', CAST(N'2019-10-03 15:11:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1997, CAST(N'2019-10-22 07:00:00.000' AS DateTime), CAST(N'2019-10-22 13:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#28a745', CAST(N'2019-10-03 15:11:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1998, CAST(N'2019-10-23 07:00:00.000' AS DateTime), CAST(N'2019-10-23 13:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#28a745', CAST(N'2019-10-03 15:11:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1999, CAST(N'2019-10-25 07:00:00.000' AS DateTime), CAST(N'2019-10-25 13:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#28a745', CAST(N'2019-10-03 15:11:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2000, CAST(N'2019-10-28 07:00:00.000' AS DateTime), CAST(N'2019-10-28 13:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#28a745', CAST(N'2019-10-03 15:11:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2001, CAST(N'2019-10-29 07:00:00.000' AS DateTime), CAST(N'2019-10-29 13:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#28a745', CAST(N'2019-10-03 15:11:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2002, CAST(N'2019-10-30 07:00:00.000' AS DateTime), CAST(N'2019-10-30 13:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#28a745', CAST(N'2019-10-03 15:11:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2003, CAST(N'2019-10-31 07:00:00.000' AS DateTime), CAST(N'2019-10-31 13:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#28a745', CAST(N'2019-10-03 15:11:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2004, CAST(N'2019-10-03 15:00:00.000' AS DateTime), CAST(N'2019-10-03 19:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#ffc107', CAST(N'2019-10-03 15:26:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2005, CAST(N'2019-10-04 15:00:00.000' AS DateTime), CAST(N'2019-10-04 19:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#ffc107', CAST(N'2019-10-03 15:26:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2006, CAST(N'2019-10-07 15:00:00.000' AS DateTime), CAST(N'2019-10-07 19:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#ffc107', CAST(N'2019-10-03 15:27:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2007, CAST(N'2019-10-09 15:00:00.000' AS DateTime), CAST(N'2019-10-09 19:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#ffc107', CAST(N'2019-10-03 15:27:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2008, CAST(N'2019-10-14 15:00:00.000' AS DateTime), CAST(N'2019-10-14 19:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#ffc107', CAST(N'2019-10-03 15:27:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2009, CAST(N'2019-10-15 15:00:00.000' AS DateTime), CAST(N'2019-10-15 19:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#ffc107', CAST(N'2019-10-03 15:27:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2010, CAST(N'2019-10-17 15:00:00.000' AS DateTime), CAST(N'2019-10-17 19:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#ffc107', CAST(N'2019-10-03 15:27:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2011, CAST(N'2019-10-18 15:00:00.000' AS DateTime), CAST(N'2019-10-18 19:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#ffc107', CAST(N'2019-10-03 15:27:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2012, CAST(N'2019-10-21 15:00:00.000' AS DateTime), CAST(N'2019-10-21 19:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#ffc107', CAST(N'2019-10-03 15:27:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2013, CAST(N'2019-10-22 15:00:00.000' AS DateTime), CAST(N'2019-10-22 19:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#ffc107', CAST(N'2019-10-03 15:27:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2014, CAST(N'2019-10-23 15:00:00.000' AS DateTime), CAST(N'2019-10-23 19:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#ffc107', CAST(N'2019-10-03 15:27:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2015, CAST(N'2019-10-25 15:00:00.000' AS DateTime), CAST(N'2019-10-25 19:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#ffc107', CAST(N'2019-10-03 15:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2016, CAST(N'2019-10-28 15:00:00.000' AS DateTime), CAST(N'2019-10-28 19:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#ffc107', CAST(N'2019-10-03 15:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2017, CAST(N'2019-10-29 15:00:00.000' AS DateTime), CAST(N'2019-10-29 19:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#ffc107', CAST(N'2019-10-03 15:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2018, CAST(N'2019-10-30 15:00:00.000' AS DateTime), CAST(N'2019-10-30 19:00:00.000' AS DateTime), NULL, 1213, 3, NULL, N'#ffc107', CAST(N'2019-10-03 15:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2019, CAST(N'2019-10-11 07:00:00.000' AS DateTime), CAST(N'2019-10-11 13:00:00.000' AS DateTime), NULL, 1217, 3, NULL, N'#28a745', CAST(N'2019-10-03 15:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2020, CAST(N'2019-10-16 07:00:00.000' AS DateTime), CAST(N'2019-10-16 13:00:00.000' AS DateTime), NULL, 1217, 3, NULL, N'#28a745', CAST(N'2019-10-03 15:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2021, CAST(N'2019-10-19 07:00:00.000' AS DateTime), CAST(N'2019-10-19 13:00:00.000' AS DateTime), NULL, 1217, 3, NULL, N'#28a745', CAST(N'2019-10-03 15:32:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2022, CAST(N'2019-10-24 07:00:00.000' AS DateTime), CAST(N'2019-10-24 13:00:00.000' AS DateTime), NULL, 1217, 3, NULL, N'#28a745', CAST(N'2019-10-03 15:32:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2023, CAST(N'2019-10-10 15:00:00.000' AS DateTime), CAST(N'2019-10-10 19:00:00.000' AS DateTime), NULL, 1217, 3, NULL, N'#ffc107', CAST(N'2019-10-03 15:33:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2024, CAST(N'2019-10-16 15:00:00.000' AS DateTime), CAST(N'2019-10-16 19:00:00.000' AS DateTime), NULL, 1217, 3, NULL, N'#ffc107', CAST(N'2019-10-03 15:33:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2025, CAST(N'2019-10-31 15:00:00.000' AS DateTime), CAST(N'2019-10-31 19:00:00.000' AS DateTime), NULL, 1217, 3, NULL, N'#ffc107', CAST(N'2019-10-03 15:33:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2026, CAST(N'2019-10-11 15:00:00.000' AS DateTime), CAST(N'2019-10-11 19:00:00.000' AS DateTime), NULL, 1218, 3, NULL, N'#ffc107', CAST(N'2019-10-03 15:34:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2027, CAST(N'2019-10-24 15:00:00.000' AS DateTime), CAST(N'2019-10-24 19:00:00.000' AS DateTime), NULL, 1218, 3, NULL, N'#ffc107', CAST(N'2019-10-03 15:34:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2028, CAST(N'2019-10-03 19:00:00.000' AS DateTime), CAST(N'2019-10-04 07:00:00.000' AS DateTime), NULL, 1217, 3, NULL, N'#dc3545', CAST(N'2019-10-03 15:36:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2029, CAST(N'2019-10-04 19:00:00.000' AS DateTime), CAST(N'2019-10-05 07:00:00.000' AS DateTime), NULL, 1217, 3, NULL, N'#dc3545', CAST(N'2019-10-03 15:36:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2030, CAST(N'2019-10-05 19:00:00.000' AS DateTime), CAST(N'2019-10-06 07:00:00.000' AS DateTime), NULL, 1217, 3, NULL, N'#dc3545', CAST(N'2019-10-03 15:36:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2031, CAST(N'2019-10-03 15:00:00.000' AS DateTime), CAST(N'2019-10-03 19:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#ffc107', CAST(N'2019-10-04 08:00:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2032, CAST(N'2019-10-04 15:00:00.000' AS DateTime), CAST(N'2019-10-04 19:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#ffc107', CAST(N'2019-10-04 08:00:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2033, CAST(N'2019-10-05 15:00:00.000' AS DateTime), CAST(N'2019-10-05 19:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#ffc107', CAST(N'2019-10-04 08:00:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2034, CAST(N'2019-10-06 15:00:00.000' AS DateTime), CAST(N'2019-10-06 19:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#ffc107', CAST(N'2019-10-04 08:00:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2035, CAST(N'2019-10-07 15:00:00.000' AS DateTime), CAST(N'2019-10-07 19:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#ffc107', CAST(N'2019-10-04 08:00:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2036, CAST(N'2019-10-08 15:00:00.000' AS DateTime), CAST(N'2019-10-08 19:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#ffc107', CAST(N'2019-10-04 08:00:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2037, CAST(N'2019-10-09 15:00:00.000' AS DateTime), CAST(N'2019-10-09 19:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#ffc107', CAST(N'2019-10-04 08:00:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2038, CAST(N'2019-10-10 15:00:00.000' AS DateTime), CAST(N'2019-10-10 19:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#ffc107', CAST(N'2019-10-04 08:00:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2039, CAST(N'2019-10-11 15:00:00.000' AS DateTime), CAST(N'2019-10-11 19:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#ffc107', CAST(N'2019-10-04 08:00:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2040, CAST(N'2019-10-12 15:00:00.000' AS DateTime), CAST(N'2019-10-12 19:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#ffc107', CAST(N'2019-10-04 08:00:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2041, CAST(N'2019-10-13 15:00:00.000' AS DateTime), CAST(N'2019-10-13 19:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#ffc107', CAST(N'2019-10-04 08:00:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2042, CAST(N'2019-10-14 15:00:00.000' AS DateTime), CAST(N'2019-10-14 19:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#ffc107', CAST(N'2019-10-04 08:00:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2043, CAST(N'2019-10-15 15:00:00.000' AS DateTime), CAST(N'2019-10-15 19:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#ffc107', CAST(N'2019-10-04 08:00:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2044, CAST(N'2019-10-16 15:00:00.000' AS DateTime), CAST(N'2019-10-16 19:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#ffc107', CAST(N'2019-10-04 08:00:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2045, CAST(N'2019-10-17 15:00:00.000' AS DateTime), CAST(N'2019-10-17 19:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#ffc107', CAST(N'2019-10-04 08:00:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2046, CAST(N'2019-10-18 15:00:00.000' AS DateTime), CAST(N'2019-10-18 19:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#ffc107', CAST(N'2019-10-04 08:00:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2047, CAST(N'2019-10-19 15:00:00.000' AS DateTime), CAST(N'2019-10-19 19:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#ffc107', CAST(N'2019-10-04 08:00:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2048, CAST(N'2019-10-20 15:00:00.000' AS DateTime), CAST(N'2019-10-20 19:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#ffc107', CAST(N'2019-10-04 08:00:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2049, CAST(N'2019-10-21 15:00:00.000' AS DateTime), CAST(N'2019-10-21 19:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#ffc107', CAST(N'2019-10-04 08:00:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2050, CAST(N'2019-10-22 15:00:00.000' AS DateTime), CAST(N'2019-10-22 19:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#ffc107', CAST(N'2019-10-04 08:00:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2051, CAST(N'2019-10-23 15:00:00.000' AS DateTime), CAST(N'2019-10-23 19:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#ffc107', CAST(N'2019-10-04 08:00:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2052, CAST(N'2019-10-24 15:00:00.000' AS DateTime), CAST(N'2019-10-24 19:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#ffc107', CAST(N'2019-10-04 08:00:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2053, CAST(N'2019-10-25 15:00:00.000' AS DateTime), CAST(N'2019-10-25 19:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#ffc107', CAST(N'2019-10-04 08:00:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2054, CAST(N'2019-10-26 15:00:00.000' AS DateTime), CAST(N'2019-10-26 19:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#ffc107', CAST(N'2019-10-04 08:00:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2055, CAST(N'2019-10-27 15:00:00.000' AS DateTime), CAST(N'2019-10-27 19:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#ffc107', CAST(N'2019-10-04 08:00:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2056, CAST(N'2019-10-28 15:00:00.000' AS DateTime), CAST(N'2019-10-28 19:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#ffc107', CAST(N'2019-10-04 08:00:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2057, CAST(N'2019-10-29 15:00:00.000' AS DateTime), CAST(N'2019-10-29 19:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#ffc107', CAST(N'2019-10-04 08:00:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2058, CAST(N'2019-10-30 15:00:00.000' AS DateTime), CAST(N'2019-10-30 19:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#ffc107', CAST(N'2019-10-04 08:00:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2059, CAST(N'2019-10-31 15:00:00.000' AS DateTime), CAST(N'2019-10-31 19:00:00.000' AS DateTime), NULL, 1102, 39, NULL, N'#ffc107', CAST(N'2019-10-04 08:00:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2060, CAST(N'2019-10-09 15:00:00.000' AS DateTime), CAST(N'2019-10-09 19:00:00.000' AS DateTime), NULL, 1099, 39, NULL, N'#ffc107', CAST(N'2019-10-04 08:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2061, CAST(N'2019-10-22 15:00:00.000' AS DateTime), CAST(N'2019-10-22 19:00:00.000' AS DateTime), NULL, 1099, 39, NULL, N'#ffc107', CAST(N'2019-10-04 08:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2062, CAST(N'2019-10-29 08:00:00.000' AS DateTime), CAST(N'2019-10-29 13:00:00.000' AS DateTime), NULL, 1188, 8, NULL, N'#28a745', CAST(N'2019-10-04 08:20:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2063, CAST(N'2019-10-31 08:00:00.000' AS DateTime), CAST(N'2019-10-31 13:00:00.000' AS DateTime), NULL, 1188, 8, NULL, N'#28a745', CAST(N'2019-10-04 08:20:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2064, CAST(N'2019-10-05 08:00:00.000' AS DateTime), CAST(N'2019-10-05 13:00:00.000' AS DateTime), NULL, 1192, 8, NULL, N'#28a745', CAST(N'2019-10-04 08:21:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2065, CAST(N'2019-10-12 08:00:00.000' AS DateTime), CAST(N'2019-10-12 13:00:00.000' AS DateTime), NULL, 1192, 8, NULL, N'#28a745', CAST(N'2019-10-04 08:21:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2066, CAST(N'2019-10-09 08:00:00.000' AS DateTime), CAST(N'2019-10-09 13:00:00.000' AS DateTime), NULL, 1192, 8, NULL, N'#28a745', CAST(N'2019-10-04 08:21:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2067, CAST(N'2019-10-11 08:00:00.000' AS DateTime), CAST(N'2019-10-11 13:00:00.000' AS DateTime), NULL, 1192, 8, NULL, N'#28a745', CAST(N'2019-10-04 08:21:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2068, CAST(N'2019-10-17 08:00:00.000' AS DateTime), CAST(N'2019-10-17 13:00:00.000' AS DateTime), NULL, 1192, 8, NULL, N'#28a745', CAST(N'2019-10-04 08:21:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2069, CAST(N'2019-10-18 08:00:00.000' AS DateTime), CAST(N'2019-10-18 13:00:00.000' AS DateTime), NULL, 1192, 8, NULL, N'#28a745', CAST(N'2019-10-04 08:21:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2070, CAST(N'2019-10-21 08:00:00.000' AS DateTime), CAST(N'2019-10-21 13:00:00.000' AS DateTime), NULL, 1192, 8, NULL, N'#28a745', CAST(N'2019-10-04 08:21:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2071, CAST(N'2019-10-24 08:00:00.000' AS DateTime), CAST(N'2019-10-24 13:00:00.000' AS DateTime), NULL, 1192, 8, NULL, N'#28a745', CAST(N'2019-10-04 08:22:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2072, CAST(N'2019-10-25 08:00:00.000' AS DateTime), CAST(N'2019-10-25 13:00:00.000' AS DateTime), NULL, 1192, 8, NULL, N'#28a745', CAST(N'2019-10-04 08:22:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2073, CAST(N'2019-10-26 08:00:00.000' AS DateTime), CAST(N'2019-10-26 13:00:00.000' AS DateTime), NULL, 1192, 8, NULL, N'#28a745', CAST(N'2019-10-04 08:22:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2074, CAST(N'2019-10-28 08:00:00.000' AS DateTime), CAST(N'2019-10-28 13:00:00.000' AS DateTime), NULL, 1192, 8, NULL, N'#28a745', CAST(N'2019-10-04 08:22:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2075, CAST(N'2019-10-04 08:00:00.000' AS DateTime), CAST(N'2019-10-04 13:00:00.000' AS DateTime), NULL, 1189, 8, NULL, N'#28a745', CAST(N'2019-10-04 08:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2076, CAST(N'2019-10-30 08:00:00.000' AS DateTime), CAST(N'2019-10-30 13:00:00.000' AS DateTime), NULL, 1189, 8, NULL, N'#28a745', CAST(N'2019-10-04 08:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2077, CAST(N'2019-10-03 08:00:00.000' AS DateTime), CAST(N'2019-10-03 13:00:00.000' AS DateTime), NULL, 1195, 8, NULL, N'#28a745', CAST(N'2019-10-04 08:32:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2078, CAST(N'2019-10-07 08:00:00.000' AS DateTime), CAST(N'2019-10-07 13:00:00.000' AS DateTime), NULL, 1195, 8, NULL, N'#28a745', CAST(N'2019-10-04 08:32:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2079, CAST(N'2019-10-10 08:00:00.000' AS DateTime), CAST(N'2019-10-10 13:00:00.000' AS DateTime), NULL, 1195, 8, NULL, N'#28a745', CAST(N'2019-10-04 08:32:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2080, CAST(N'2019-10-15 08:00:00.000' AS DateTime), CAST(N'2019-10-15 13:00:00.000' AS DateTime), NULL, 1195, 8, NULL, N'#28a745', CAST(N'2019-10-04 08:32:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2081, CAST(N'2019-10-22 08:00:00.000' AS DateTime), CAST(N'2019-10-22 13:00:00.000' AS DateTime), NULL, 1195, 8, NULL, N'#28a745', CAST(N'2019-10-04 08:32:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2082, CAST(N'2019-10-23 08:00:00.000' AS DateTime), CAST(N'2019-10-23 13:00:00.000' AS DateTime), NULL, 1195, 8, NULL, N'#28a745', CAST(N'2019-10-04 08:32:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2083, CAST(N'2019-10-14 08:00:00.000' AS DateTime), CAST(N'2019-10-14 13:00:00.000' AS DateTime), NULL, 1193, 8, NULL, N'#28a745', CAST(N'2019-10-04 08:33:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2084, CAST(N'2019-10-16 08:00:00.000' AS DateTime), CAST(N'2019-10-16 13:00:00.000' AS DateTime), NULL, 1193, 8, NULL, N'#28a745', CAST(N'2019-10-04 08:33:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2085, CAST(N'2019-10-19 08:00:00.000' AS DateTime), CAST(N'2019-10-19 13:00:00.000' AS DateTime), NULL, 1193, 8, NULL, N'#28a745', CAST(N'2019-10-04 08:33:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2086, CAST(N'2019-10-03 15:00:00.000' AS DateTime), CAST(N'2019-10-03 19:00:00.000' AS DateTime), NULL, 1188, 8, NULL, N'#ffc107', CAST(N'2019-10-04 08:34:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2087, CAST(N'2019-10-04 15:00:00.000' AS DateTime), CAST(N'2019-10-04 19:00:00.000' AS DateTime), NULL, 1188, 8, NULL, N'#ffc107', CAST(N'2019-10-04 08:34:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2088, CAST(N'2019-10-29 15:00:00.000' AS DateTime), CAST(N'2019-10-29 19:00:00.000' AS DateTime), NULL, 1188, 8, NULL, N'#ffc107', CAST(N'2019-10-04 08:34:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2089, CAST(N'2019-10-30 15:00:00.000' AS DateTime), CAST(N'2019-10-30 19:00:00.000' AS DateTime), NULL, 1188, 8, NULL, N'#ffc107', CAST(N'2019-10-04 08:35:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2090, CAST(N'2019-10-31 15:00:00.000' AS DateTime), CAST(N'2019-10-31 19:00:00.000' AS DateTime), NULL, 1188, 8, NULL, N'#ffc107', CAST(N'2019-10-04 08:35:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2091, CAST(N'2019-10-07 15:00:00.000' AS DateTime), CAST(N'2019-10-07 19:00:00.000' AS DateTime), NULL, 1192, 8, NULL, N'#ffc107', CAST(N'2019-10-04 08:35:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2092, CAST(N'2019-10-09 15:00:00.000' AS DateTime), CAST(N'2019-10-09 19:00:00.000' AS DateTime), NULL, 1192, 8, NULL, N'#ffc107', CAST(N'2019-10-04 08:35:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2093, CAST(N'2019-10-10 15:00:00.000' AS DateTime), CAST(N'2019-10-10 19:00:00.000' AS DateTime), NULL, 1192, 8, NULL, N'#ffc107', CAST(N'2019-10-04 08:35:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2094, CAST(N'2019-10-11 15:00:00.000' AS DateTime), CAST(N'2019-10-11 19:00:00.000' AS DateTime), NULL, 1192, 8, NULL, N'#ffc107', CAST(N'2019-10-04 08:35:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2095, CAST(N'2019-10-14 15:00:00.000' AS DateTime), CAST(N'2019-10-14 19:00:00.000' AS DateTime), NULL, 1192, 8, NULL, N'#ffc107', CAST(N'2019-10-04 08:36:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2096, CAST(N'2019-10-15 15:00:00.000' AS DateTime), CAST(N'2019-10-15 19:00:00.000' AS DateTime), NULL, 1192, 8, NULL, N'#ffc107', CAST(N'2019-10-04 08:36:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2097, CAST(N'2019-10-16 15:00:00.000' AS DateTime), CAST(N'2019-10-16 19:00:00.000' AS DateTime), NULL, 1192, 8, NULL, N'#ffc107', CAST(N'2019-10-04 08:36:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2098, CAST(N'2019-10-17 15:00:00.000' AS DateTime), CAST(N'2019-10-17 19:00:00.000' AS DateTime), NULL, 1192, 8, NULL, N'#ffc107', CAST(N'2019-10-04 08:36:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2099, CAST(N'2019-10-18 15:00:00.000' AS DateTime), CAST(N'2019-10-18 19:00:00.000' AS DateTime), NULL, 1192, 8, NULL, N'#ffc107', CAST(N'2019-10-04 08:36:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2100, CAST(N'2019-10-22 15:00:00.000' AS DateTime), CAST(N'2019-10-22 19:00:00.000' AS DateTime), NULL, 1192, 8, NULL, N'#ffc107', CAST(N'2019-10-04 08:36:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2101, CAST(N'2019-10-23 15:00:00.000' AS DateTime), CAST(N'2019-10-23 19:00:00.000' AS DateTime), NULL, 1192, 8, NULL, N'#ffc107', CAST(N'2019-10-04 08:36:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2102, CAST(N'2019-10-24 15:00:00.000' AS DateTime), CAST(N'2019-10-24 19:00:00.000' AS DateTime), NULL, 1192, 8, NULL, N'#ffc107', CAST(N'2019-10-04 08:36:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2103, CAST(N'2019-10-25 15:00:00.000' AS DateTime), CAST(N'2019-10-25 19:00:00.000' AS DateTime), NULL, 1192, 8, NULL, N'#ffc107', CAST(N'2019-10-04 08:36:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2104, CAST(N'2019-10-28 15:00:00.000' AS DateTime), CAST(N'2019-10-28 19:00:00.000' AS DateTime), NULL, 1192, 8, NULL, N'#ffc107', CAST(N'2019-10-04 08:37:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2105, CAST(N'2019-10-24 15:00:00.000' AS DateTime), CAST(N'2019-10-24 19:00:00.000' AS DateTime), NULL, 1195, 8, NULL, N'#ffc107', CAST(N'2019-10-04 08:37:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2106, CAST(N'2019-10-21 15:00:00.000' AS DateTime), CAST(N'2019-10-21 19:00:00.000' AS DateTime), NULL, 1195, 8, NULL, N'#ffc107', CAST(N'2019-10-04 08:38:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2107, CAST(N'2019-10-15 08:00:00.000' AS DateTime), CAST(N'2019-10-15 13:00:00.000' AS DateTime), NULL, 1133, 29, NULL, N'#28a745', CAST(N'2019-10-04 08:39:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2108, CAST(N'2019-10-17 08:00:00.000' AS DateTime), CAST(N'2019-10-17 13:00:00.000' AS DateTime), NULL, 1133, 29, NULL, N'#28a745', CAST(N'2019-10-04 08:39:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2109, CAST(N'2019-10-24 08:00:00.000' AS DateTime), CAST(N'2019-10-24 13:00:00.000' AS DateTime), NULL, 1133, 29, NULL, N'#28a745', CAST(N'2019-10-04 08:39:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2110, CAST(N'2019-10-05 08:00:00.000' AS DateTime), CAST(N'2019-10-05 13:00:00.000' AS DateTime), NULL, 1126, 29, NULL, N'#28a745', CAST(N'2019-10-04 08:40:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2111, CAST(N'2019-10-19 08:00:00.000' AS DateTime), CAST(N'2019-10-19 13:00:00.000' AS DateTime), NULL, 1126, 29, NULL, N'#28a745', CAST(N'2019-10-04 08:40:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2112, CAST(N'2019-10-25 08:00:00.000' AS DateTime), CAST(N'2019-10-25 13:00:00.000' AS DateTime), NULL, 1126, 29, NULL, N'#28a745', CAST(N'2019-10-04 08:40:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2113, CAST(N'2019-10-26 08:00:00.000' AS DateTime), CAST(N'2019-10-26 13:00:00.000' AS DateTime), NULL, 1126, 29, NULL, N'#28a745', CAST(N'2019-10-04 08:40:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2114, CAST(N'2019-10-28 08:00:00.000' AS DateTime), CAST(N'2019-10-28 13:00:00.000' AS DateTime), NULL, 1126, 29, NULL, N'#28a745', CAST(N'2019-10-04 08:40:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2115, CAST(N'2019-10-03 08:00:00.000' AS DateTime), CAST(N'2019-10-03 13:00:00.000' AS DateTime), NULL, 1133, 29, NULL, N'#28a745', CAST(N'2019-10-04 08:41:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2116, CAST(N'2019-10-04 07:00:00.000' AS DateTime), CAST(N'2019-10-04 13:00:00.000' AS DateTime), NULL, 1223, 29, NULL, N'#28a745', CAST(N'2019-10-04 08:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2117, CAST(N'2019-10-11 07:00:00.000' AS DateTime), CAST(N'2019-10-11 13:00:00.000' AS DateTime), NULL, 1223, 29, NULL, N'#28a745', CAST(N'2019-10-04 08:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2118, CAST(N'2019-10-12 07:00:00.000' AS DateTime), CAST(N'2019-10-12 13:00:00.000' AS DateTime), NULL, 1223, 29, NULL, N'#28a745', CAST(N'2019-10-04 08:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2119, CAST(N'2019-10-21 07:00:00.000' AS DateTime), CAST(N'2019-10-21 13:00:00.000' AS DateTime), NULL, 1223, 29, NULL, N'#28a745', CAST(N'2019-10-04 08:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2120, CAST(N'2019-10-07 07:00:00.000' AS DateTime), CAST(N'2019-10-07 13:00:00.000' AS DateTime), NULL, 1130, 29, NULL, N'#28a745', CAST(N'2019-10-04 08:58:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2121, CAST(N'2019-10-07 15:00:00.000' AS DateTime), CAST(N'2019-10-07 19:00:00.000' AS DateTime), NULL, 1130, 29, NULL, N'#ffc107', CAST(N'2019-10-04 08:59:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2122, CAST(N'2019-10-09 15:00:00.000' AS DateTime), CAST(N'2019-10-09 19:00:00.000' AS DateTime), NULL, 1130, 29, NULL, N'#ffc107', CAST(N'2019-10-04 08:59:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2123, CAST(N'2019-10-10 15:00:00.000' AS DateTime), CAST(N'2019-10-10 19:00:00.000' AS DateTime), NULL, 1130, 29, NULL, N'#ffc107', CAST(N'2019-10-04 08:59:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2124, CAST(N'2019-10-11 15:00:00.000' AS DateTime), CAST(N'2019-10-11 19:00:00.000' AS DateTime), NULL, 1130, 29, NULL, N'#ffc107', CAST(N'2019-10-04 08:59:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2125, CAST(N'2019-10-14 15:00:00.000' AS DateTime), CAST(N'2019-10-14 19:00:00.000' AS DateTime), NULL, 1130, 29, NULL, N'#ffc107', CAST(N'2019-10-04 08:59:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2126, CAST(N'2019-10-15 15:00:00.000' AS DateTime), CAST(N'2019-10-15 19:00:00.000' AS DateTime), NULL, 1130, 29, NULL, N'#ffc107', CAST(N'2019-10-04 08:59:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2127, CAST(N'2019-10-17 15:00:00.000' AS DateTime), CAST(N'2019-10-17 19:00:00.000' AS DateTime), NULL, 1130, 29, NULL, N'#ffc107', CAST(N'2019-10-04 08:59:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2128, CAST(N'2019-10-18 15:00:00.000' AS DateTime), CAST(N'2019-10-18 19:00:00.000' AS DateTime), NULL, 1130, 29, NULL, N'#ffc107', CAST(N'2019-10-04 08:59:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2129, CAST(N'2019-10-24 15:00:00.000' AS DateTime), CAST(N'2019-10-24 19:00:00.000' AS DateTime), NULL, 1130, 29, NULL, N'#ffc107', CAST(N'2019-10-04 09:00:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2130, CAST(N'2019-10-29 15:00:00.000' AS DateTime), CAST(N'2019-10-29 19:00:00.000' AS DateTime), NULL, 1130, 29, NULL, N'#ffc107', CAST(N'2019-10-04 09:00:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2131, CAST(N'2019-10-30 15:00:00.000' AS DateTime), CAST(N'2019-10-30 19:00:00.000' AS DateTime), NULL, 1130, 29, NULL, N'#ffc107', CAST(N'2019-10-04 09:00:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2132, CAST(N'2019-10-31 15:00:00.000' AS DateTime), CAST(N'2019-10-31 19:00:00.000' AS DateTime), NULL, 1130, 29, NULL, N'#ffc107', CAST(N'2019-10-04 09:00:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2133, CAST(N'2019-10-23 15:00:00.000' AS DateTime), CAST(N'2019-10-23 19:00:00.000' AS DateTime), NULL, 1223, 29, NULL, N'#ffc107', CAST(N'2019-10-04 09:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2134, CAST(N'2019-10-11 15:00:00.000' AS DateTime), CAST(N'2019-10-11 19:00:00.000' AS DateTime), NULL, 1133, 29, NULL, N'#ffc107', CAST(N'2019-10-04 09:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2135, CAST(N'2019-10-22 15:00:00.000' AS DateTime), CAST(N'2019-10-22 19:00:00.000' AS DateTime), NULL, 1133, 29, NULL, N'#ffc107', CAST(N'2019-10-04 09:02:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2136, CAST(N'2019-10-28 15:00:00.000' AS DateTime), CAST(N'2019-10-28 19:00:00.000' AS DateTime), NULL, 1133, 29, NULL, N'#ffc107', CAST(N'2019-10-04 09:02:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2137, CAST(N'2019-10-25 15:00:00.000' AS DateTime), CAST(N'2019-10-25 19:00:00.000' AS DateTime), NULL, 1126, 29, NULL, N'#ffc107', CAST(N'2019-10-04 09:02:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2138, CAST(N'2019-10-05 15:00:00.000' AS DateTime), CAST(N'2019-10-05 19:00:00.000' AS DateTime), NULL, 1125, 29, NULL, N'#ffc107', CAST(N'2019-10-04 09:06:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2139, CAST(N'2019-10-26 15:00:00.000' AS DateTime), CAST(N'2019-10-26 19:00:00.000' AS DateTime), NULL, 1125, 29, NULL, N'#ffc107', CAST(N'2019-10-04 09:06:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2140, CAST(N'2019-10-04 02:00:00.000' AS DateTime), CAST(N'2019-10-04 08:00:00.000' AS DateTime), NULL, 1217, 3, NULL, N'#dc3545', CAST(N'2019-10-04 09:13:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2141, CAST(N'2019-10-05 02:00:00.000' AS DateTime), CAST(N'2019-10-05 08:00:00.000' AS DateTime), NULL, 1217, 3, NULL, N'#dc3545', CAST(N'2019-10-04 09:13:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2142, CAST(N'2019-10-04 19:00:00.000' AS DateTime), CAST(N'2019-10-04 19:00:00.000' AS DateTime), NULL, 1207, 3, NULL, N'#dc3545', CAST(N'2019-10-04 09:16:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2143, CAST(N'2019-10-04 19:00:00.000' AS DateTime), CAST(N'2019-10-04 23:00:00.000' AS DateTime), NULL, 1217, 3, NULL, N'#dc3545', CAST(N'2019-10-04 09:18:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2144, CAST(N'2019-10-05 19:00:00.000' AS DateTime), CAST(N'2019-10-05 23:00:00.000' AS DateTime), NULL, 1217, 3, NULL, N'#dc3545', CAST(N'2019-10-04 09:18:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2145, CAST(N'2019-10-07 19:00:00.000' AS DateTime), CAST(N'2019-10-07 23:00:00.000' AS DateTime), NULL, 1217, 3, NULL, N'#dc3545', CAST(N'2019-10-04 09:18:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2146, CAST(N'2019-10-08 19:00:00.000' AS DateTime), CAST(N'2019-10-08 23:00:00.000' AS DateTime), NULL, 1217, 3, NULL, N'#dc3545', CAST(N'2019-10-04 09:18:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2147, CAST(N'2019-10-09 19:00:00.000' AS DateTime), CAST(N'2019-10-09 23:00:00.000' AS DateTime), NULL, 1217, 3, NULL, N'#dc3545', CAST(N'2019-10-04 09:18:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2148, CAST(N'2019-10-10 19:00:00.000' AS DateTime), CAST(N'2019-10-10 23:00:00.000' AS DateTime), NULL, 1217, 3, NULL, N'#dc3545', CAST(N'2019-10-04 09:18:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2149, CAST(N'2019-10-11 19:00:00.000' AS DateTime), CAST(N'2019-10-11 23:00:00.000' AS DateTime), NULL, 1217, 3, NULL, N'#dc3545', CAST(N'2019-10-04 09:18:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2150, CAST(N'2019-10-12 19:00:00.000' AS DateTime), CAST(N'2019-10-12 23:00:00.000' AS DateTime), NULL, 1217, 3, NULL, N'#dc3545', CAST(N'2019-10-04 09:18:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2151, CAST(N'2019-10-14 19:00:00.000' AS DateTime), CAST(N'2019-10-14 23:00:00.000' AS DateTime), NULL, 1217, 3, NULL, N'#dc3545', CAST(N'2019-10-04 09:19:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2152, CAST(N'2019-10-15 19:00:00.000' AS DateTime), CAST(N'2019-10-15 23:00:00.000' AS DateTime), NULL, 1217, 3, NULL, N'#dc3545', CAST(N'2019-10-04 09:19:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2153, CAST(N'2019-10-17 19:00:00.000' AS DateTime), CAST(N'2019-10-17 23:00:00.000' AS DateTime), NULL, 1217, 3, NULL, N'#dc3545', CAST(N'2019-10-04 09:19:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2154, CAST(N'2019-10-18 19:00:00.000' AS DateTime), CAST(N'2019-10-18 23:00:00.000' AS DateTime), NULL, 1217, 3, NULL, N'#dc3545', CAST(N'2019-10-04 09:19:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2155, CAST(N'2019-10-28 19:00:00.000' AS DateTime), CAST(N'2019-10-28 23:00:00.000' AS DateTime), NULL, 1217, 3, NULL, N'#dc3545', CAST(N'2019-10-04 09:20:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2156, CAST(N'2019-10-29 19:00:00.000' AS DateTime), CAST(N'2019-10-29 23:00:00.000' AS DateTime), NULL, 1217, 3, NULL, N'#dc3545', CAST(N'2019-10-04 09:20:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2157, CAST(N'2019-10-30 19:00:00.000' AS DateTime), CAST(N'2019-10-30 23:00:00.000' AS DateTime), NULL, 1217, 3, NULL, N'#dc3545', CAST(N'2019-10-04 09:20:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2158, CAST(N'2019-10-31 19:00:00.000' AS DateTime), CAST(N'2019-10-31 23:00:00.000' AS DateTime), NULL, 1217, 3, NULL, N'#dc3545', CAST(N'2019-10-04 09:20:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2159, CAST(N'2019-10-21 19:00:00.000' AS DateTime), CAST(N'2019-10-21 23:00:00.000' AS DateTime), NULL, 1218, 3, NULL, N'#dc3545', CAST(N'2019-10-04 09:20:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2160, CAST(N'2019-10-22 19:00:00.000' AS DateTime), CAST(N'2019-10-22 23:00:00.000' AS DateTime), NULL, 1218, 3, NULL, N'#dc3545', CAST(N'2019-10-04 09:20:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2161, CAST(N'2019-10-23 19:00:00.000' AS DateTime), CAST(N'2019-10-23 23:00:00.000' AS DateTime), NULL, 1218, 3, NULL, N'#dc3545', CAST(N'2019-10-04 09:20:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2162, CAST(N'2019-10-24 19:00:00.000' AS DateTime), CAST(N'2019-10-24 23:00:00.000' AS DateTime), NULL, 1218, 3, NULL, N'#dc3545', CAST(N'2019-10-04 09:20:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2163, CAST(N'2019-10-25 19:00:00.000' AS DateTime), CAST(N'2019-10-25 23:00:00.000' AS DateTime), NULL, 1218, 3, NULL, N'#dc3545', CAST(N'2019-10-04 09:20:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2164, CAST(N'2019-10-26 19:00:00.000' AS DateTime), CAST(N'2019-10-26 23:00:00.000' AS DateTime), NULL, 1218, 3, NULL, N'#dc3545', CAST(N'2019-10-04 09:20:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2165, CAST(N'2019-10-16 08:00:00.000' AS DateTime), CAST(N'2019-10-16 13:00:00.000' AS DateTime), NULL, 1092, 10, NULL, N'#28a745', CAST(N'2019-10-04 09:24:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2166, CAST(N'2019-10-21 08:00:00.000' AS DateTime), CAST(N'2019-10-21 13:00:00.000' AS DateTime), NULL, 1092, 10, NULL, N'#28a745', CAST(N'2019-10-04 09:25:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2167, CAST(N'2019-10-22 08:00:00.000' AS DateTime), CAST(N'2019-10-22 13:00:00.000' AS DateTime), NULL, 1092, 10, NULL, N'#28a745', CAST(N'2019-10-04 09:25:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2168, CAST(N'2019-10-23 08:00:00.000' AS DateTime), CAST(N'2019-10-23 13:00:00.000' AS DateTime), NULL, 1092, 10, NULL, N'#28a745', CAST(N'2019-10-04 09:25:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2169, CAST(N'2019-10-24 08:00:00.000' AS DateTime), CAST(N'2019-10-24 13:00:00.000' AS DateTime), NULL, 1092, 10, NULL, N'#28a745', CAST(N'2019-10-04 09:25:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2170, CAST(N'2019-10-30 08:00:00.000' AS DateTime), CAST(N'2019-10-30 13:00:00.000' AS DateTime), NULL, 1092, 10, NULL, N'#28a745', CAST(N'2019-10-04 09:25:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2171, CAST(N'2019-10-04 08:00:00.000' AS DateTime), CAST(N'2019-10-04 13:00:00.000' AS DateTime), NULL, 1088, 10, NULL, N'#28a745', CAST(N'2019-10-04 09:25:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2172, CAST(N'2019-10-18 08:00:00.000' AS DateTime), CAST(N'2019-10-18 13:00:00.000' AS DateTime), NULL, 1088, 10, NULL, N'#28a745', CAST(N'2019-10-04 09:26:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2173, CAST(N'2019-10-15 08:00:00.000' AS DateTime), CAST(N'2019-10-15 13:00:00.000' AS DateTime), NULL, 1087, 10, NULL, N'#28a745', CAST(N'2019-10-04 09:27:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2174, CAST(N'2019-10-25 08:00:00.000' AS DateTime), CAST(N'2019-10-25 13:00:00.000' AS DateTime), NULL, 1088, 10, NULL, N'#28a745', CAST(N'2019-10-04 09:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2175, CAST(N'2019-10-17 08:00:00.000' AS DateTime), CAST(N'2019-10-17 13:00:00.000' AS DateTime), NULL, 1088, 10, NULL, N'#28a745', CAST(N'2019-10-04 09:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2176, CAST(N'2019-10-28 08:00:00.000' AS DateTime), CAST(N'2019-10-28 13:00:00.000' AS DateTime), NULL, 1088, 10, NULL, N'#28a745', CAST(N'2019-10-04 09:29:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2177, CAST(N'2019-10-29 08:00:00.000' AS DateTime), CAST(N'2019-10-29 13:00:00.000' AS DateTime), NULL, 1088, 10, NULL, N'#28a745', CAST(N'2019-10-04 09:29:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2178, CAST(N'2019-10-30 08:00:00.000' AS DateTime), CAST(N'2019-10-30 13:00:00.000' AS DateTime), NULL, 1088, 10, NULL, N'#28a745', CAST(N'2019-10-04 09:29:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2179, CAST(N'2019-10-31 08:00:00.000' AS DateTime), CAST(N'2019-10-31 13:00:00.000' AS DateTime), NULL, 1088, 10, NULL, N'#28a745', CAST(N'2019-10-04 09:29:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2180, CAST(N'2019-10-28 08:00:00.000' AS DateTime), CAST(N'2019-10-28 13:00:00.000' AS DateTime), NULL, 1092, 10, NULL, N'#28a745', CAST(N'2019-10-04 09:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2181, CAST(N'2019-10-29 08:00:00.000' AS DateTime), CAST(N'2019-10-29 13:00:00.000' AS DateTime), NULL, 1092, 10, NULL, N'#28a745', CAST(N'2019-10-04 09:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2182, CAST(N'2019-10-31 08:00:00.000' AS DateTime), CAST(N'2019-10-31 13:00:00.000' AS DateTime), NULL, 1092, 10, NULL, N'#28a745', CAST(N'2019-10-04 09:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2183, CAST(N'2019-10-16 14:00:00.000' AS DateTime), CAST(N'2019-10-16 16:00:00.000' AS DateTime), NULL, 1088, 10, NULL, N'#ffc107', CAST(N'2019-10-04 09:32:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2184, CAST(N'2019-10-23 14:00:00.000' AS DateTime), CAST(N'2019-10-23 16:00:00.000' AS DateTime), NULL, 1088, 10, NULL, N'#ffc107', CAST(N'2019-10-04 09:32:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2185, CAST(N'2019-10-30 14:00:00.000' AS DateTime), CAST(N'2019-10-30 16:00:00.000' AS DateTime), NULL, 1088, 10, NULL, N'#ffc107', CAST(N'2019-10-04 09:32:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2186, CAST(N'2019-10-09 16:00:00.000' AS DateTime), CAST(N'2019-10-09 19:00:00.000' AS DateTime), NULL, 1091, 10, NULL, N'#ffc107', CAST(N'2019-10-04 09:33:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2187, CAST(N'2019-10-11 16:00:00.000' AS DateTime), CAST(N'2019-10-11 19:00:00.000' AS DateTime), NULL, 1091, 10, NULL, N'#ffc107', CAST(N'2019-10-04 09:33:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2188, CAST(N'2019-10-15 16:00:00.000' AS DateTime), CAST(N'2019-10-15 19:00:00.000' AS DateTime), NULL, 1091, 10, NULL, N'#ffc107', CAST(N'2019-10-04 09:33:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2189, CAST(N'2019-10-16 16:00:00.000' AS DateTime), CAST(N'2019-10-16 19:00:00.000' AS DateTime), NULL, 1091, 10, NULL, N'#ffc107', CAST(N'2019-10-04 09:33:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2190, CAST(N'2019-10-18 16:00:00.000' AS DateTime), CAST(N'2019-10-18 19:00:00.000' AS DateTime), NULL, 1091, 10, NULL, N'#ffc107', CAST(N'2019-10-04 09:33:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2191, CAST(N'2019-10-22 16:00:00.000' AS DateTime), CAST(N'2019-10-22 19:00:00.000' AS DateTime), NULL, 1091, 10, NULL, N'#ffc107', CAST(N'2019-10-04 09:33:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2192, CAST(N'2019-10-23 16:00:00.000' AS DateTime), CAST(N'2019-10-23 19:00:00.000' AS DateTime), NULL, 1091, 10, NULL, N'#ffc107', CAST(N'2019-10-04 09:33:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2193, CAST(N'2019-10-25 16:00:00.000' AS DateTime), CAST(N'2019-10-25 19:00:00.000' AS DateTime), NULL, 1091, 10, NULL, N'#ffc107', CAST(N'2019-10-04 09:34:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2194, CAST(N'2019-10-29 16:00:00.000' AS DateTime), CAST(N'2019-10-29 19:00:00.000' AS DateTime), NULL, 1091, 10, NULL, N'#ffc107', CAST(N'2019-10-04 09:34:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2195, CAST(N'2019-10-30 16:00:00.000' AS DateTime), CAST(N'2019-10-30 19:00:00.000' AS DateTime), NULL, 1091, 10, NULL, N'#ffc107', CAST(N'2019-10-04 09:34:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2196, CAST(N'2019-10-03 16:00:00.000' AS DateTime), CAST(N'2019-10-03 19:00:00.000' AS DateTime), NULL, 1087, 10, NULL, N'#ffc107', CAST(N'2019-10-04 09:35:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2197, CAST(N'2019-10-07 16:00:00.000' AS DateTime), CAST(N'2019-10-07 19:00:00.000' AS DateTime), NULL, 1087, 10, NULL, N'#ffc107', CAST(N'2019-10-04 09:35:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2198, CAST(N'2019-10-10 16:00:00.000' AS DateTime), CAST(N'2019-10-10 19:00:00.000' AS DateTime), NULL, 1087, 10, NULL, N'#ffc107', CAST(N'2019-10-04 09:35:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2199, CAST(N'2019-10-14 16:00:00.000' AS DateTime), CAST(N'2019-10-14 19:00:00.000' AS DateTime), NULL, 1087, 10, NULL, N'#ffc107', CAST(N'2019-10-04 09:35:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2200, CAST(N'2019-10-17 16:00:00.000' AS DateTime), CAST(N'2019-10-17 19:00:00.000' AS DateTime), NULL, 1087, 10, NULL, N'#ffc107', CAST(N'2019-10-04 09:35:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2201, CAST(N'2019-10-04 16:00:00.000' AS DateTime), CAST(N'2019-10-04 19:00:00.000' AS DateTime), NULL, 1091, 10, NULL, N'#ffc107', CAST(N'2019-10-04 09:40:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2202, CAST(N'2019-10-18 16:00:00.000' AS DateTime), CAST(N'2019-10-18 19:00:00.000' AS DateTime), NULL, 1092, 10, NULL, N'#ffc107', CAST(N'2019-10-04 09:40:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2203, CAST(N'2019-10-04 11:30:00.000' AS DateTime), CAST(N'2019-10-04 13:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#28a745', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2204, CAST(N'2019-10-05 11:30:00.000' AS DateTime), CAST(N'2019-10-05 13:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#28a745', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2205, CAST(N'2019-10-06 11:30:00.000' AS DateTime), CAST(N'2019-10-06 13:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#28a745', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2206, CAST(N'2019-10-07 11:30:00.000' AS DateTime), CAST(N'2019-10-07 13:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#28a745', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2207, CAST(N'2019-10-08 11:30:00.000' AS DateTime), CAST(N'2019-10-08 13:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#28a745', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2208, CAST(N'2019-10-09 11:30:00.000' AS DateTime), CAST(N'2019-10-09 13:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#28a745', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2209, CAST(N'2019-10-10 11:30:00.000' AS DateTime), CAST(N'2019-10-10 13:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#28a745', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2210, CAST(N'2019-10-11 11:30:00.000' AS DateTime), CAST(N'2019-10-11 13:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#28a745', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2211, CAST(N'2019-10-12 11:30:00.000' AS DateTime), CAST(N'2019-10-12 13:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#28a745', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2212, CAST(N'2019-10-13 11:30:00.000' AS DateTime), CAST(N'2019-10-13 13:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#28a745', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2213, CAST(N'2019-10-14 11:30:00.000' AS DateTime), CAST(N'2019-10-14 13:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#28a745', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2214, CAST(N'2019-10-15 11:30:00.000' AS DateTime), CAST(N'2019-10-15 13:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#28a745', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2215, CAST(N'2019-10-16 11:30:00.000' AS DateTime), CAST(N'2019-10-16 13:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#28a745', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2216, CAST(N'2019-10-17 11:30:00.000' AS DateTime), CAST(N'2019-10-17 13:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#28a745', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2217, CAST(N'2019-10-18 11:30:00.000' AS DateTime), CAST(N'2019-10-18 13:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#28a745', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2218, CAST(N'2019-10-19 11:30:00.000' AS DateTime), CAST(N'2019-10-19 13:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#28a745', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2219, CAST(N'2019-10-20 11:30:00.000' AS DateTime), CAST(N'2019-10-20 13:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#28a745', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2220, CAST(N'2019-10-21 11:30:00.000' AS DateTime), CAST(N'2019-10-21 13:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#28a745', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2221, CAST(N'2019-10-22 11:30:00.000' AS DateTime), CAST(N'2019-10-22 13:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#28a745', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2222, CAST(N'2019-10-23 11:30:00.000' AS DateTime), CAST(N'2019-10-23 13:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#28a745', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2223, CAST(N'2019-10-24 11:30:00.000' AS DateTime), CAST(N'2019-10-24 13:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#28a745', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2224, CAST(N'2019-10-25 11:30:00.000' AS DateTime), CAST(N'2019-10-25 13:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#28a745', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2225, CAST(N'2019-10-26 11:30:00.000' AS DateTime), CAST(N'2019-10-26 13:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#28a745', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2226, CAST(N'2019-10-27 11:30:00.000' AS DateTime), CAST(N'2019-10-27 13:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#28a745', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2227, CAST(N'2019-10-28 11:30:00.000' AS DateTime), CAST(N'2019-10-28 13:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#28a745', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2228, CAST(N'2019-10-29 11:30:00.000' AS DateTime), CAST(N'2019-10-29 13:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#28a745', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2229, CAST(N'2019-10-30 11:30:00.000' AS DateTime), CAST(N'2019-10-30 13:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#28a745', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2230, CAST(N'2019-10-31 11:30:00.000' AS DateTime), CAST(N'2019-10-31 13:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#28a745', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2231, CAST(N'2019-10-04 18:30:00.000' AS DateTime), CAST(N'2019-10-04 19:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#ffc107', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2232, CAST(N'2019-10-05 18:30:00.000' AS DateTime), CAST(N'2019-10-05 19:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#ffc107', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2233, CAST(N'2019-10-06 18:30:00.000' AS DateTime), CAST(N'2019-10-06 19:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#ffc107', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2234, CAST(N'2019-10-07 18:30:00.000' AS DateTime), CAST(N'2019-10-07 19:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#ffc107', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2235, CAST(N'2019-10-08 18:30:00.000' AS DateTime), CAST(N'2019-10-08 19:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#ffc107', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2236, CAST(N'2019-10-09 18:30:00.000' AS DateTime), CAST(N'2019-10-09 19:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#ffc107', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2237, CAST(N'2019-10-10 18:30:00.000' AS DateTime), CAST(N'2019-10-10 19:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#ffc107', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2238, CAST(N'2019-10-11 18:30:00.000' AS DateTime), CAST(N'2019-10-11 19:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#ffc107', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2239, CAST(N'2019-10-12 18:30:00.000' AS DateTime), CAST(N'2019-10-12 19:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#ffc107', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2240, CAST(N'2019-10-13 18:30:00.000' AS DateTime), CAST(N'2019-10-13 19:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#ffc107', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2241, CAST(N'2019-10-14 18:30:00.000' AS DateTime), CAST(N'2019-10-14 19:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#ffc107', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2242, CAST(N'2019-10-15 18:30:00.000' AS DateTime), CAST(N'2019-10-15 19:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#ffc107', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2243, CAST(N'2019-10-16 18:30:00.000' AS DateTime), CAST(N'2019-10-16 19:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#ffc107', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2244, CAST(N'2019-10-17 18:30:00.000' AS DateTime), CAST(N'2019-10-17 19:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#ffc107', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2245, CAST(N'2019-10-18 18:30:00.000' AS DateTime), CAST(N'2019-10-18 19:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#ffc107', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2246, CAST(N'2019-10-19 18:30:00.000' AS DateTime), CAST(N'2019-10-19 19:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#ffc107', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2247, CAST(N'2019-10-20 18:30:00.000' AS DateTime), CAST(N'2019-10-20 19:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#ffc107', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2248, CAST(N'2019-10-21 18:30:00.000' AS DateTime), CAST(N'2019-10-21 19:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#ffc107', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2249, CAST(N'2019-10-22 18:30:00.000' AS DateTime), CAST(N'2019-10-22 19:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#ffc107', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2250, CAST(N'2019-10-23 18:30:00.000' AS DateTime), CAST(N'2019-10-23 19:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#ffc107', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2251, CAST(N'2019-10-24 18:30:00.000' AS DateTime), CAST(N'2019-10-24 19:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#ffc107', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2252, CAST(N'2019-10-25 18:30:00.000' AS DateTime), CAST(N'2019-10-25 19:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#ffc107', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2253, CAST(N'2019-10-26 18:30:00.000' AS DateTime), CAST(N'2019-10-26 19:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#ffc107', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2254, CAST(N'2019-10-27 18:30:00.000' AS DateTime), CAST(N'2019-10-27 19:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#ffc107', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2255, CAST(N'2019-10-28 18:30:00.000' AS DateTime), CAST(N'2019-10-28 19:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#ffc107', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2256, CAST(N'2019-10-29 18:30:00.000' AS DateTime), CAST(N'2019-10-29 19:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#ffc107', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2257, CAST(N'2019-10-30 18:30:00.000' AS DateTime), CAST(N'2019-10-30 19:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#ffc107', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2258, CAST(N'2019-10-31 18:30:00.000' AS DateTime), CAST(N'2019-10-31 19:30:00.000' AS DateTime), NULL, 1122, 40, NULL, N'#ffc107', CAST(N'2019-10-04 09:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2259, CAST(N'2019-10-04 16:30:00.000' AS DateTime), CAST(N'2019-10-04 19:00:00.000' AS DateTime), NULL, 1144, 23, NULL, N'#ffc107', CAST(N'2019-10-04 09:45:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2260, CAST(N'2019-10-05 16:30:00.000' AS DateTime), CAST(N'2019-10-05 19:00:00.000' AS DateTime), NULL, 1144, 23, NULL, N'#ffc107', CAST(N'2019-10-04 09:45:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2261, CAST(N'2019-10-06 16:30:00.000' AS DateTime), CAST(N'2019-10-06 19:00:00.000' AS DateTime), NULL, 1144, 23, NULL, N'#ffc107', CAST(N'2019-10-04 09:45:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2262, CAST(N'2019-10-07 16:30:00.000' AS DateTime), CAST(N'2019-10-07 19:00:00.000' AS DateTime), NULL, 1144, 23, NULL, N'#ffc107', CAST(N'2019-10-04 09:45:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2263, CAST(N'2019-10-08 16:30:00.000' AS DateTime), CAST(N'2019-10-08 19:00:00.000' AS DateTime), NULL, 1144, 23, NULL, N'#ffc107', CAST(N'2019-10-04 09:45:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2264, CAST(N'2019-10-09 16:30:00.000' AS DateTime), CAST(N'2019-10-09 19:00:00.000' AS DateTime), NULL, 1144, 23, NULL, N'#ffc107', CAST(N'2019-10-04 09:45:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2265, CAST(N'2019-10-10 16:30:00.000' AS DateTime), CAST(N'2019-10-10 19:00:00.000' AS DateTime), NULL, 1144, 23, NULL, N'#ffc107', CAST(N'2019-10-04 09:45:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2266, CAST(N'2019-10-11 16:30:00.000' AS DateTime), CAST(N'2019-10-11 19:00:00.000' AS DateTime), NULL, 1144, 23, NULL, N'#ffc107', CAST(N'2019-10-04 09:45:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2267, CAST(N'2019-10-12 16:30:00.000' AS DateTime), CAST(N'2019-10-12 19:00:00.000' AS DateTime), NULL, 1144, 23, NULL, N'#ffc107', CAST(N'2019-10-04 09:45:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2268, CAST(N'2019-10-13 16:30:00.000' AS DateTime), CAST(N'2019-10-13 19:00:00.000' AS DateTime), NULL, 1144, 23, NULL, N'#ffc107', CAST(N'2019-10-04 09:45:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2269, CAST(N'2019-10-14 16:30:00.000' AS DateTime), CAST(N'2019-10-14 19:00:00.000' AS DateTime), NULL, 1144, 23, NULL, N'#ffc107', CAST(N'2019-10-04 09:45:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2270, CAST(N'2019-10-15 16:30:00.000' AS DateTime), CAST(N'2019-10-15 19:00:00.000' AS DateTime), NULL, 1144, 23, NULL, N'#ffc107', CAST(N'2019-10-04 09:45:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2271, CAST(N'2019-10-16 16:30:00.000' AS DateTime), CAST(N'2019-10-16 19:00:00.000' AS DateTime), NULL, 1144, 23, NULL, N'#ffc107', CAST(N'2019-10-04 09:45:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2272, CAST(N'2019-10-17 16:30:00.000' AS DateTime), CAST(N'2019-10-17 19:00:00.000' AS DateTime), NULL, 1144, 23, NULL, N'#ffc107', CAST(N'2019-10-04 09:45:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2273, CAST(N'2019-10-18 16:30:00.000' AS DateTime), CAST(N'2019-10-18 19:00:00.000' AS DateTime), NULL, 1144, 23, NULL, N'#ffc107', CAST(N'2019-10-04 09:45:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2274, CAST(N'2019-10-19 16:30:00.000' AS DateTime), CAST(N'2019-10-19 19:00:00.000' AS DateTime), NULL, 1144, 23, NULL, N'#ffc107', CAST(N'2019-10-04 09:45:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2275, CAST(N'2019-10-20 16:30:00.000' AS DateTime), CAST(N'2019-10-20 19:00:00.000' AS DateTime), NULL, 1144, 23, NULL, N'#ffc107', CAST(N'2019-10-04 09:45:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2276, CAST(N'2019-10-21 16:30:00.000' AS DateTime), CAST(N'2019-10-21 19:00:00.000' AS DateTime), NULL, 1144, 23, NULL, N'#ffc107', CAST(N'2019-10-04 09:45:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2277, CAST(N'2019-10-22 16:30:00.000' AS DateTime), CAST(N'2019-10-22 19:00:00.000' AS DateTime), NULL, 1144, 23, NULL, N'#ffc107', CAST(N'2019-10-04 09:45:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2278, CAST(N'2019-10-23 16:30:00.000' AS DateTime), CAST(N'2019-10-23 19:00:00.000' AS DateTime), NULL, 1144, 23, NULL, N'#ffc107', CAST(N'2019-10-04 09:45:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2279, CAST(N'2019-10-24 16:30:00.000' AS DateTime), CAST(N'2019-10-24 19:00:00.000' AS DateTime), NULL, 1144, 23, NULL, N'#ffc107', CAST(N'2019-10-04 09:45:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2280, CAST(N'2019-10-25 16:30:00.000' AS DateTime), CAST(N'2019-10-25 19:00:00.000' AS DateTime), NULL, 1144, 23, NULL, N'#ffc107', CAST(N'2019-10-04 09:45:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2281, CAST(N'2019-10-26 16:30:00.000' AS DateTime), CAST(N'2019-10-26 19:00:00.000' AS DateTime), NULL, 1144, 23, NULL, N'#ffc107', CAST(N'2019-10-04 09:45:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2282, CAST(N'2019-10-27 16:30:00.000' AS DateTime), CAST(N'2019-10-27 19:00:00.000' AS DateTime), NULL, 1144, 23, NULL, N'#ffc107', CAST(N'2019-10-04 09:45:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2283, CAST(N'2019-10-28 16:30:00.000' AS DateTime), CAST(N'2019-10-28 19:00:00.000' AS DateTime), NULL, 1144, 23, NULL, N'#ffc107', CAST(N'2019-10-04 09:45:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2284, CAST(N'2019-10-29 16:30:00.000' AS DateTime), CAST(N'2019-10-29 19:00:00.000' AS DateTime), NULL, 1144, 23, NULL, N'#ffc107', CAST(N'2019-10-04 09:45:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2285, CAST(N'2019-10-30 16:30:00.000' AS DateTime), CAST(N'2019-10-30 19:00:00.000' AS DateTime), NULL, 1144, 23, NULL, N'#ffc107', CAST(N'2019-10-04 09:45:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2286, CAST(N'2019-10-31 16:30:00.000' AS DateTime), CAST(N'2019-10-31 19:00:00.000' AS DateTime), NULL, 1144, 23, NULL, N'#ffc107', CAST(N'2019-10-04 09:45:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2287, CAST(N'2019-10-04 16:30:00.000' AS DateTime), CAST(N'2019-10-04 19:00:00.000' AS DateTime), NULL, 1168, 16, NULL, N'#ffc107', CAST(N'2019-10-04 09:51:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2288, CAST(N'2019-10-05 16:30:00.000' AS DateTime), CAST(N'2019-10-05 19:00:00.000' AS DateTime), NULL, 1168, 16, NULL, N'#ffc107', CAST(N'2019-10-04 09:51:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2289, CAST(N'2019-10-06 16:30:00.000' AS DateTime), CAST(N'2019-10-06 19:00:00.000' AS DateTime), NULL, 1168, 16, NULL, N'#ffc107', CAST(N'2019-10-04 09:51:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2290, CAST(N'2019-10-07 16:30:00.000' AS DateTime), CAST(N'2019-10-07 19:00:00.000' AS DateTime), NULL, 1168, 16, NULL, N'#ffc107', CAST(N'2019-10-04 09:51:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2291, CAST(N'2019-10-08 16:30:00.000' AS DateTime), CAST(N'2019-10-08 19:00:00.000' AS DateTime), NULL, 1168, 16, NULL, N'#ffc107', CAST(N'2019-10-04 09:51:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2292, CAST(N'2019-10-09 16:30:00.000' AS DateTime), CAST(N'2019-10-09 19:00:00.000' AS DateTime), NULL, 1168, 16, NULL, N'#ffc107', CAST(N'2019-10-04 09:51:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2293, CAST(N'2019-10-10 16:30:00.000' AS DateTime), CAST(N'2019-10-10 19:00:00.000' AS DateTime), NULL, 1168, 16, NULL, N'#ffc107', CAST(N'2019-10-04 09:51:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2294, CAST(N'2019-10-11 16:30:00.000' AS DateTime), CAST(N'2019-10-11 19:00:00.000' AS DateTime), NULL, 1168, 16, NULL, N'#ffc107', CAST(N'2019-10-04 09:51:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2295, CAST(N'2019-10-12 16:30:00.000' AS DateTime), CAST(N'2019-10-12 19:00:00.000' AS DateTime), NULL, 1168, 16, NULL, N'#ffc107', CAST(N'2019-10-04 09:51:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2296, CAST(N'2019-10-13 16:30:00.000' AS DateTime), CAST(N'2019-10-13 19:00:00.000' AS DateTime), NULL, 1168, 16, NULL, N'#ffc107', CAST(N'2019-10-04 09:51:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2297, CAST(N'2019-10-14 16:30:00.000' AS DateTime), CAST(N'2019-10-14 19:00:00.000' AS DateTime), NULL, 1168, 16, NULL, N'#ffc107', CAST(N'2019-10-04 09:51:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2298, CAST(N'2019-10-15 16:30:00.000' AS DateTime), CAST(N'2019-10-15 19:00:00.000' AS DateTime), NULL, 1168, 16, NULL, N'#ffc107', CAST(N'2019-10-04 09:51:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2299, CAST(N'2019-10-16 16:30:00.000' AS DateTime), CAST(N'2019-10-16 19:00:00.000' AS DateTime), NULL, 1168, 16, NULL, N'#ffc107', CAST(N'2019-10-04 09:51:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2300, CAST(N'2019-10-17 16:30:00.000' AS DateTime), CAST(N'2019-10-17 19:00:00.000' AS DateTime), NULL, 1168, 16, NULL, N'#ffc107', CAST(N'2019-10-04 09:51:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2301, CAST(N'2019-10-18 16:30:00.000' AS DateTime), CAST(N'2019-10-18 19:00:00.000' AS DateTime), NULL, 1168, 16, NULL, N'#ffc107', CAST(N'2019-10-04 09:51:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2302, CAST(N'2019-10-19 16:30:00.000' AS DateTime), CAST(N'2019-10-19 19:00:00.000' AS DateTime), NULL, 1168, 16, NULL, N'#ffc107', CAST(N'2019-10-04 09:51:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2303, CAST(N'2019-10-20 16:30:00.000' AS DateTime), CAST(N'2019-10-20 19:00:00.000' AS DateTime), NULL, 1168, 16, NULL, N'#ffc107', CAST(N'2019-10-04 09:51:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2304, CAST(N'2019-10-21 16:30:00.000' AS DateTime), CAST(N'2019-10-21 19:00:00.000' AS DateTime), NULL, 1168, 16, NULL, N'#ffc107', CAST(N'2019-10-04 09:51:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2305, CAST(N'2019-10-22 16:30:00.000' AS DateTime), CAST(N'2019-10-22 19:00:00.000' AS DateTime), NULL, 1168, 16, NULL, N'#ffc107', CAST(N'2019-10-04 09:51:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2306, CAST(N'2019-10-23 16:30:00.000' AS DateTime), CAST(N'2019-10-23 19:00:00.000' AS DateTime), NULL, 1168, 16, NULL, N'#ffc107', CAST(N'2019-10-04 09:51:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2307, CAST(N'2019-10-24 16:30:00.000' AS DateTime), CAST(N'2019-10-24 19:00:00.000' AS DateTime), NULL, 1168, 16, NULL, N'#ffc107', CAST(N'2019-10-04 09:51:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2308, CAST(N'2019-10-25 16:30:00.000' AS DateTime), CAST(N'2019-10-25 19:00:00.000' AS DateTime), NULL, 1168, 16, NULL, N'#ffc107', CAST(N'2019-10-04 09:51:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2309, CAST(N'2019-10-26 16:30:00.000' AS DateTime), CAST(N'2019-10-26 19:00:00.000' AS DateTime), NULL, 1168, 16, NULL, N'#ffc107', CAST(N'2019-10-04 09:51:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2310, CAST(N'2019-10-27 16:30:00.000' AS DateTime), CAST(N'2019-10-27 19:00:00.000' AS DateTime), NULL, 1168, 16, NULL, N'#ffc107', CAST(N'2019-10-04 09:51:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2311, CAST(N'2019-10-28 16:30:00.000' AS DateTime), CAST(N'2019-10-28 19:00:00.000' AS DateTime), NULL, 1168, 16, NULL, N'#ffc107', CAST(N'2019-10-04 09:51:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2312, CAST(N'2019-10-29 16:30:00.000' AS DateTime), CAST(N'2019-10-29 19:00:00.000' AS DateTime), NULL, 1168, 16, NULL, N'#ffc107', CAST(N'2019-10-04 09:51:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2313, CAST(N'2019-10-30 16:30:00.000' AS DateTime), CAST(N'2019-10-30 19:00:00.000' AS DateTime), NULL, 1168, 16, NULL, N'#ffc107', CAST(N'2019-10-04 09:51:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2314, CAST(N'2019-10-31 16:30:00.000' AS DateTime), CAST(N'2019-10-31 19:00:00.000' AS DateTime), NULL, 1168, 16, NULL, N'#ffc107', CAST(N'2019-10-04 09:51:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2315, CAST(N'2019-10-04 12:30:00.000' AS DateTime), CAST(N'2019-10-04 16:00:00.000' AS DateTime), NULL, 1072, 13, NULL, N'#28a745', CAST(N'2019-10-04 09:54:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2316, CAST(N'2019-10-05 12:30:00.000' AS DateTime), CAST(N'2019-10-05 16:00:00.000' AS DateTime), NULL, 1072, 13, NULL, N'#28a745', CAST(N'2019-10-04 09:54:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2317, CAST(N'2019-10-06 12:30:00.000' AS DateTime), CAST(N'2019-10-06 16:00:00.000' AS DateTime), NULL, 1072, 13, NULL, N'#28a745', CAST(N'2019-10-04 09:54:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2318, CAST(N'2019-10-07 12:30:00.000' AS DateTime), CAST(N'2019-10-07 16:00:00.000' AS DateTime), NULL, 1072, 13, NULL, N'#28a745', CAST(N'2019-10-04 09:54:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2319, CAST(N'2019-10-08 12:30:00.000' AS DateTime), CAST(N'2019-10-08 16:00:00.000' AS DateTime), NULL, 1072, 13, NULL, N'#28a745', CAST(N'2019-10-04 09:54:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2320, CAST(N'2019-10-09 12:30:00.000' AS DateTime), CAST(N'2019-10-09 16:00:00.000' AS DateTime), NULL, 1072, 13, NULL, N'#28a745', CAST(N'2019-10-04 09:54:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2321, CAST(N'2019-10-10 12:30:00.000' AS DateTime), CAST(N'2019-10-10 16:00:00.000' AS DateTime), NULL, 1072, 13, NULL, N'#28a745', CAST(N'2019-10-04 09:54:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2322, CAST(N'2019-10-11 12:30:00.000' AS DateTime), CAST(N'2019-10-11 16:00:00.000' AS DateTime), NULL, 1072, 13, NULL, N'#28a745', CAST(N'2019-10-04 09:54:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2323, CAST(N'2019-10-12 12:30:00.000' AS DateTime), CAST(N'2019-10-12 16:00:00.000' AS DateTime), NULL, 1072, 13, NULL, N'#28a745', CAST(N'2019-10-04 09:54:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2324, CAST(N'2019-10-13 12:30:00.000' AS DateTime), CAST(N'2019-10-13 16:00:00.000' AS DateTime), NULL, 1072, 13, NULL, N'#28a745', CAST(N'2019-10-04 09:54:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2325, CAST(N'2019-10-14 12:30:00.000' AS DateTime), CAST(N'2019-10-14 16:00:00.000' AS DateTime), NULL, 1072, 13, NULL, N'#28a745', CAST(N'2019-10-04 09:54:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2326, CAST(N'2019-10-15 12:30:00.000' AS DateTime), CAST(N'2019-10-15 16:00:00.000' AS DateTime), NULL, 1072, 13, NULL, N'#28a745', CAST(N'2019-10-04 09:54:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2327, CAST(N'2019-10-16 12:30:00.000' AS DateTime), CAST(N'2019-10-16 16:00:00.000' AS DateTime), NULL, 1072, 13, NULL, N'#28a745', CAST(N'2019-10-04 09:54:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2328, CAST(N'2019-10-17 12:30:00.000' AS DateTime), CAST(N'2019-10-17 16:00:00.000' AS DateTime), NULL, 1072, 13, NULL, N'#28a745', CAST(N'2019-10-04 09:54:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2329, CAST(N'2019-10-18 12:30:00.000' AS DateTime), CAST(N'2019-10-18 16:00:00.000' AS DateTime), NULL, 1072, 13, NULL, N'#28a745', CAST(N'2019-10-04 09:54:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2330, CAST(N'2019-10-19 12:30:00.000' AS DateTime), CAST(N'2019-10-19 16:00:00.000' AS DateTime), NULL, 1072, 13, NULL, N'#28a745', CAST(N'2019-10-04 09:54:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2331, CAST(N'2019-10-20 12:30:00.000' AS DateTime), CAST(N'2019-10-20 16:00:00.000' AS DateTime), NULL, 1072, 13, NULL, N'#28a745', CAST(N'2019-10-04 09:54:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2332, CAST(N'2019-10-21 12:30:00.000' AS DateTime), CAST(N'2019-10-21 16:00:00.000' AS DateTime), NULL, 1072, 13, NULL, N'#28a745', CAST(N'2019-10-04 09:54:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2333, CAST(N'2019-10-22 12:30:00.000' AS DateTime), CAST(N'2019-10-22 16:00:00.000' AS DateTime), NULL, 1072, 13, NULL, N'#28a745', CAST(N'2019-10-04 09:54:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2334, CAST(N'2019-10-23 12:30:00.000' AS DateTime), CAST(N'2019-10-23 16:00:00.000' AS DateTime), NULL, 1072, 13, NULL, N'#28a745', CAST(N'2019-10-04 09:54:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2335, CAST(N'2019-10-24 12:30:00.000' AS DateTime), CAST(N'2019-10-24 16:00:00.000' AS DateTime), NULL, 1072, 13, NULL, N'#28a745', CAST(N'2019-10-04 09:54:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2336, CAST(N'2019-10-25 12:30:00.000' AS DateTime), CAST(N'2019-10-25 16:00:00.000' AS DateTime), NULL, 1072, 13, NULL, N'#28a745', CAST(N'2019-10-04 09:54:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2337, CAST(N'2019-10-26 12:30:00.000' AS DateTime), CAST(N'2019-10-26 16:00:00.000' AS DateTime), NULL, 1072, 13, NULL, N'#28a745', CAST(N'2019-10-04 09:54:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2338, CAST(N'2019-10-27 12:30:00.000' AS DateTime), CAST(N'2019-10-27 16:00:00.000' AS DateTime), NULL, 1072, 13, NULL, N'#28a745', CAST(N'2019-10-04 09:54:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2339, CAST(N'2019-10-28 12:30:00.000' AS DateTime), CAST(N'2019-10-28 16:00:00.000' AS DateTime), NULL, 1072, 13, NULL, N'#28a745', CAST(N'2019-10-04 09:54:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2340, CAST(N'2019-10-29 12:30:00.000' AS DateTime), CAST(N'2019-10-29 16:00:00.000' AS DateTime), NULL, 1072, 13, NULL, N'#28a745', CAST(N'2019-10-04 09:54:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2341, CAST(N'2019-10-30 12:30:00.000' AS DateTime), CAST(N'2019-10-30 16:00:00.000' AS DateTime), NULL, 1072, 13, NULL, N'#28a745', CAST(N'2019-10-04 09:54:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2342, CAST(N'2019-10-31 12:30:00.000' AS DateTime), CAST(N'2019-10-31 16:00:00.000' AS DateTime), NULL, 1072, 13, NULL, N'#28a745', CAST(N'2019-10-04 09:54:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2343, CAST(N'2019-10-08 09:00:00.000' AS DateTime), CAST(N'2019-10-08 13:00:00.000' AS DateTime), NULL, 1161, 20, NULL, N'#28a745', CAST(N'2019-10-04 10:00:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2344, CAST(N'2019-10-07 09:00:00.000' AS DateTime), CAST(N'2019-10-07 13:00:00.000' AS DateTime), NULL, 1161, 20, NULL, N'#28a745', CAST(N'2019-10-04 10:00:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2345, CAST(N'2019-10-14 09:00:00.000' AS DateTime), CAST(N'2019-10-14 13:00:00.000' AS DateTime), NULL, 1161, 20, NULL, N'#28a745', CAST(N'2019-10-04 10:00:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2346, CAST(N'2019-10-21 09:00:00.000' AS DateTime), CAST(N'2019-10-21 13:00:00.000' AS DateTime), NULL, 1161, 20, NULL, N'#28a745', CAST(N'2019-10-04 10:00:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2347, CAST(N'2019-10-28 09:00:00.000' AS DateTime), CAST(N'2019-10-28 13:00:00.000' AS DateTime), NULL, 1161, 20, NULL, N'#28a745', CAST(N'2019-10-04 10:00:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2348, CAST(N'2019-10-10 09:00:00.000' AS DateTime), CAST(N'2019-10-10 13:00:00.000' AS DateTime), NULL, 1161, 20, NULL, N'#28a745', CAST(N'2019-10-04 10:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2349, CAST(N'2019-10-17 09:00:00.000' AS DateTime), CAST(N'2019-10-17 13:00:00.000' AS DateTime), NULL, 1161, 20, NULL, N'#28a745', CAST(N'2019-10-04 10:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2350, CAST(N'2019-10-24 09:00:00.000' AS DateTime), CAST(N'2019-10-24 13:00:00.000' AS DateTime), NULL, 1161, 20, NULL, N'#28a745', CAST(N'2019-10-04 10:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2351, CAST(N'2019-10-31 09:00:00.000' AS DateTime), CAST(N'2019-10-31 13:00:00.000' AS DateTime), NULL, 1161, 20, NULL, N'#28a745', CAST(N'2019-10-04 10:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2352, CAST(N'2019-10-15 16:00:00.000' AS DateTime), CAST(N'2019-10-15 19:00:00.000' AS DateTime), NULL, 1161, 20, NULL, N'#ffc107', CAST(N'2019-10-04 10:02:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2353, CAST(N'2019-10-22 16:00:00.000' AS DateTime), CAST(N'2019-10-22 19:00:00.000' AS DateTime), NULL, 1161, 20, NULL, N'#ffc107', CAST(N'2019-10-04 10:02:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2354, CAST(N'2019-10-29 16:00:00.000' AS DateTime), CAST(N'2019-10-29 19:00:00.000' AS DateTime), NULL, 1161, 20, NULL, N'#ffc107', CAST(N'2019-10-04 10:02:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2355, CAST(N'2019-10-04 16:00:00.000' AS DateTime), CAST(N'2019-10-04 19:00:00.000' AS DateTime), NULL, 1161, 20, NULL, N'#ffc107', CAST(N'2019-10-04 10:02:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2356, CAST(N'2019-10-11 16:00:00.000' AS DateTime), CAST(N'2019-10-11 19:00:00.000' AS DateTime), NULL, 1161, 20, NULL, N'#ffc107', CAST(N'2019-10-04 10:02:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2357, CAST(N'2019-10-18 16:00:00.000' AS DateTime), CAST(N'2019-10-18 19:00:00.000' AS DateTime), NULL, 1161, 20, NULL, N'#ffc107', CAST(N'2019-10-04 10:03:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2358, CAST(N'2019-10-25 16:00:00.000' AS DateTime), CAST(N'2019-10-25 19:00:00.000' AS DateTime), NULL, 1161, 20, NULL, N'#ffc107', CAST(N'2019-10-04 10:03:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2359, CAST(N'2019-10-09 16:00:00.000' AS DateTime), CAST(N'2019-10-09 19:00:00.000' AS DateTime), NULL, 1162, 20, NULL, N'#ffc107', CAST(N'2019-10-04 10:03:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2360, CAST(N'2019-10-16 16:00:00.000' AS DateTime), CAST(N'2019-10-16 19:00:00.000' AS DateTime), NULL, 1162, 20, NULL, N'#ffc107', CAST(N'2019-10-04 10:03:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2361, CAST(N'2019-10-23 16:00:00.000' AS DateTime), CAST(N'2019-10-23 19:00:00.000' AS DateTime), NULL, 1162, 20, NULL, N'#ffc107', CAST(N'2019-10-04 10:03:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2362, CAST(N'2019-10-30 16:00:00.000' AS DateTime), CAST(N'2019-10-30 19:00:00.000' AS DateTime), NULL, 1162, 20, NULL, N'#ffc107', CAST(N'2019-10-04 10:03:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2363, CAST(N'2019-10-04 09:00:00.000' AS DateTime), CAST(N'2019-10-04 13:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#28a745', CAST(N'2019-10-04 10:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2364, CAST(N'2019-10-05 09:00:00.000' AS DateTime), CAST(N'2019-10-05 13:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#28a745', CAST(N'2019-10-04 10:28:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2365, CAST(N'2019-10-06 09:00:00.000' AS DateTime), CAST(N'2019-10-06 13:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#28a745', CAST(N'2019-10-04 10:28:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2366, CAST(N'2019-10-07 09:00:00.000' AS DateTime), CAST(N'2019-10-07 13:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#28a745', CAST(N'2019-10-04 10:28:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2367, CAST(N'2019-10-08 09:00:00.000' AS DateTime), CAST(N'2019-10-08 13:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#28a745', CAST(N'2019-10-04 10:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2368, CAST(N'2019-10-09 09:00:00.000' AS DateTime), CAST(N'2019-10-09 13:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#28a745', CAST(N'2019-10-04 10:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2369, CAST(N'2019-10-10 09:00:00.000' AS DateTime), CAST(N'2019-10-10 13:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#28a745', CAST(N'2019-10-04 10:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2370, CAST(N'2019-10-11 09:00:00.000' AS DateTime), CAST(N'2019-10-11 13:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#28a745', CAST(N'2019-10-04 10:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2371, CAST(N'2019-10-12 09:00:00.000' AS DateTime), CAST(N'2019-10-12 13:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#28a745', CAST(N'2019-10-04 10:28:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2372, CAST(N'2019-10-13 09:00:00.000' AS DateTime), CAST(N'2019-10-13 13:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#28a745', CAST(N'2019-10-04 10:28:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2373, CAST(N'2019-10-14 09:00:00.000' AS DateTime), CAST(N'2019-10-14 13:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#28a745', CAST(N'2019-10-04 10:28:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2374, CAST(N'2019-10-15 09:00:00.000' AS DateTime), CAST(N'2019-10-15 13:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#28a745', CAST(N'2019-10-04 10:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2375, CAST(N'2019-10-16 09:00:00.000' AS DateTime), CAST(N'2019-10-16 13:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#28a745', CAST(N'2019-10-04 10:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2376, CAST(N'2019-10-17 09:00:00.000' AS DateTime), CAST(N'2019-10-17 13:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#28a745', CAST(N'2019-10-04 10:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2377, CAST(N'2019-10-18 09:00:00.000' AS DateTime), CAST(N'2019-10-18 13:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#28a745', CAST(N'2019-10-04 10:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2378, CAST(N'2019-10-19 09:00:00.000' AS DateTime), CAST(N'2019-10-19 13:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#28a745', CAST(N'2019-10-04 10:28:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2379, CAST(N'2019-10-20 09:00:00.000' AS DateTime), CAST(N'2019-10-20 13:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#28a745', CAST(N'2019-10-04 10:28:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2380, CAST(N'2019-10-21 09:00:00.000' AS DateTime), CAST(N'2019-10-21 13:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#28a745', CAST(N'2019-10-04 10:28:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2381, CAST(N'2019-10-22 09:00:00.000' AS DateTime), CAST(N'2019-10-22 13:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#28a745', CAST(N'2019-10-04 10:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2382, CAST(N'2019-10-23 09:00:00.000' AS DateTime), CAST(N'2019-10-23 13:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#28a745', CAST(N'2019-10-04 10:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2383, CAST(N'2019-10-24 09:00:00.000' AS DateTime), CAST(N'2019-10-24 13:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#28a745', CAST(N'2019-10-04 10:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2384, CAST(N'2019-10-25 09:00:00.000' AS DateTime), CAST(N'2019-10-25 13:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#28a745', CAST(N'2019-10-04 10:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2385, CAST(N'2019-10-26 09:00:00.000' AS DateTime), CAST(N'2019-10-26 13:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#28a745', CAST(N'2019-10-04 10:28:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2386, CAST(N'2019-10-27 09:00:00.000' AS DateTime), CAST(N'2019-10-27 13:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#28a745', CAST(N'2019-10-04 10:28:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2387, CAST(N'2019-10-28 09:00:00.000' AS DateTime), CAST(N'2019-10-28 13:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#28a745', CAST(N'2019-10-04 10:28:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2388, CAST(N'2019-10-29 09:00:00.000' AS DateTime), CAST(N'2019-10-29 13:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#28a745', CAST(N'2019-10-04 10:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2389, CAST(N'2019-10-30 09:00:00.000' AS DateTime), CAST(N'2019-10-30 13:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#28a745', CAST(N'2019-10-04 10:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2390, CAST(N'2019-10-31 09:00:00.000' AS DateTime), CAST(N'2019-10-31 13:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#28a745', CAST(N'2019-10-04 10:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2391, CAST(N'2019-10-04 15:00:00.000' AS DateTime), CAST(N'2019-10-04 19:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#ffc107', CAST(N'2019-10-04 10:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2392, CAST(N'2019-10-05 15:00:00.000' AS DateTime), CAST(N'2019-10-05 19:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#ffc107', CAST(N'2019-10-04 10:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2393, CAST(N'2019-10-06 15:00:00.000' AS DateTime), CAST(N'2019-10-06 19:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#ffc107', CAST(N'2019-10-04 10:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2394, CAST(N'2019-10-07 15:00:00.000' AS DateTime), CAST(N'2019-10-07 19:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#ffc107', CAST(N'2019-10-04 10:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2395, CAST(N'2019-10-08 15:00:00.000' AS DateTime), CAST(N'2019-10-08 19:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#ffc107', CAST(N'2019-10-04 10:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2396, CAST(N'2019-10-09 15:00:00.000' AS DateTime), CAST(N'2019-10-09 19:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#ffc107', CAST(N'2019-10-04 10:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2397, CAST(N'2019-10-10 15:00:00.000' AS DateTime), CAST(N'2019-10-10 19:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#ffc107', CAST(N'2019-10-04 10:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2398, CAST(N'2019-10-11 15:00:00.000' AS DateTime), CAST(N'2019-10-11 19:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#ffc107', CAST(N'2019-10-04 10:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2399, CAST(N'2019-10-12 15:00:00.000' AS DateTime), CAST(N'2019-10-12 19:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#ffc107', CAST(N'2019-10-04 10:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2400, CAST(N'2019-10-13 15:00:00.000' AS DateTime), CAST(N'2019-10-13 19:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#ffc107', CAST(N'2019-10-04 10:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2401, CAST(N'2019-10-14 15:00:00.000' AS DateTime), CAST(N'2019-10-14 19:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#ffc107', CAST(N'2019-10-04 10:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2402, CAST(N'2019-10-15 15:00:00.000' AS DateTime), CAST(N'2019-10-15 19:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#ffc107', CAST(N'2019-10-04 10:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2403, CAST(N'2019-10-16 15:00:00.000' AS DateTime), CAST(N'2019-10-16 19:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#ffc107', CAST(N'2019-10-04 10:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2404, CAST(N'2019-10-17 15:00:00.000' AS DateTime), CAST(N'2019-10-17 19:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#ffc107', CAST(N'2019-10-04 10:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2405, CAST(N'2019-10-18 15:00:00.000' AS DateTime), CAST(N'2019-10-18 19:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#ffc107', CAST(N'2019-10-04 10:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2406, CAST(N'2019-10-19 15:00:00.000' AS DateTime), CAST(N'2019-10-19 19:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#ffc107', CAST(N'2019-10-04 10:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2407, CAST(N'2019-10-20 15:00:00.000' AS DateTime), CAST(N'2019-10-20 19:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#ffc107', CAST(N'2019-10-04 10:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2408, CAST(N'2019-10-21 15:00:00.000' AS DateTime), CAST(N'2019-10-21 19:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#ffc107', CAST(N'2019-10-04 10:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2409, CAST(N'2019-10-22 15:00:00.000' AS DateTime), CAST(N'2019-10-22 19:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#ffc107', CAST(N'2019-10-04 10:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2410, CAST(N'2019-10-23 15:00:00.000' AS DateTime), CAST(N'2019-10-23 19:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#ffc107', CAST(N'2019-10-04 10:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2411, CAST(N'2019-10-24 15:00:00.000' AS DateTime), CAST(N'2019-10-24 19:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#ffc107', CAST(N'2019-10-04 10:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2412, CAST(N'2019-10-25 15:00:00.000' AS DateTime), CAST(N'2019-10-25 19:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#ffc107', CAST(N'2019-10-04 10:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2413, CAST(N'2019-10-26 15:00:00.000' AS DateTime), CAST(N'2019-10-26 19:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#ffc107', CAST(N'2019-10-04 10:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2414, CAST(N'2019-10-27 15:00:00.000' AS DateTime), CAST(N'2019-10-27 19:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#ffc107', CAST(N'2019-10-04 10:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2415, CAST(N'2019-10-28 15:00:00.000' AS DateTime), CAST(N'2019-10-28 19:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#ffc107', CAST(N'2019-10-04 10:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2416, CAST(N'2019-10-29 15:00:00.000' AS DateTime), CAST(N'2019-10-29 19:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#ffc107', CAST(N'2019-10-04 10:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2417, CAST(N'2019-10-30 15:00:00.000' AS DateTime), CAST(N'2019-10-30 19:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#ffc107', CAST(N'2019-10-04 10:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2418, CAST(N'2019-10-31 15:00:00.000' AS DateTime), CAST(N'2019-10-31 19:00:00.000' AS DateTime), NULL, 1147, 22, NULL, N'#ffc107', CAST(N'2019-10-04 10:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2419, CAST(N'2019-10-04 08:00:00.000' AS DateTime), CAST(N'2019-10-04 13:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#28a745', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2420, CAST(N'2019-10-05 08:00:00.000' AS DateTime), CAST(N'2019-10-05 13:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#28a745', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2421, CAST(N'2019-10-06 08:00:00.000' AS DateTime), CAST(N'2019-10-06 13:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#28a745', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2422, CAST(N'2019-10-07 08:00:00.000' AS DateTime), CAST(N'2019-10-07 13:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#28a745', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2423, CAST(N'2019-10-08 08:00:00.000' AS DateTime), CAST(N'2019-10-08 13:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#28a745', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2424, CAST(N'2019-10-09 08:00:00.000' AS DateTime), CAST(N'2019-10-09 13:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#28a745', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2425, CAST(N'2019-10-10 08:00:00.000' AS DateTime), CAST(N'2019-10-10 13:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#28a745', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2426, CAST(N'2019-10-11 08:00:00.000' AS DateTime), CAST(N'2019-10-11 13:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#28a745', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2427, CAST(N'2019-10-12 08:00:00.000' AS DateTime), CAST(N'2019-10-12 13:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#28a745', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2428, CAST(N'2019-10-13 08:00:00.000' AS DateTime), CAST(N'2019-10-13 13:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#28a745', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2429, CAST(N'2019-10-14 08:00:00.000' AS DateTime), CAST(N'2019-10-14 13:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#28a745', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2430, CAST(N'2019-10-15 08:00:00.000' AS DateTime), CAST(N'2019-10-15 13:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#28a745', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2431, CAST(N'2019-10-16 08:00:00.000' AS DateTime), CAST(N'2019-10-16 13:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#28a745', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2432, CAST(N'2019-10-17 08:00:00.000' AS DateTime), CAST(N'2019-10-17 13:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#28a745', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2433, CAST(N'2019-10-18 08:00:00.000' AS DateTime), CAST(N'2019-10-18 13:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#28a745', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2434, CAST(N'2019-10-19 08:00:00.000' AS DateTime), CAST(N'2019-10-19 13:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#28a745', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2435, CAST(N'2019-10-20 08:00:00.000' AS DateTime), CAST(N'2019-10-20 13:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#28a745', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2436, CAST(N'2019-10-21 08:00:00.000' AS DateTime), CAST(N'2019-10-21 13:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#28a745', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2437, CAST(N'2019-10-22 08:00:00.000' AS DateTime), CAST(N'2019-10-22 13:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#28a745', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2438, CAST(N'2019-10-23 08:00:00.000' AS DateTime), CAST(N'2019-10-23 13:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#28a745', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2439, CAST(N'2019-10-24 08:00:00.000' AS DateTime), CAST(N'2019-10-24 13:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#28a745', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2440, CAST(N'2019-10-25 08:00:00.000' AS DateTime), CAST(N'2019-10-25 13:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#28a745', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2441, CAST(N'2019-10-26 08:00:00.000' AS DateTime), CAST(N'2019-10-26 13:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#28a745', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2442, CAST(N'2019-10-27 08:00:00.000' AS DateTime), CAST(N'2019-10-27 13:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#28a745', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2443, CAST(N'2019-10-28 08:00:00.000' AS DateTime), CAST(N'2019-10-28 13:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#28a745', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2444, CAST(N'2019-10-29 08:00:00.000' AS DateTime), CAST(N'2019-10-29 13:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#28a745', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2445, CAST(N'2019-10-30 08:00:00.000' AS DateTime), CAST(N'2019-10-30 13:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#28a745', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2446, CAST(N'2019-10-31 08:00:00.000' AS DateTime), CAST(N'2019-10-31 13:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#28a745', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2447, CAST(N'2019-10-04 15:00:00.000' AS DateTime), CAST(N'2019-10-04 19:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#ffc107', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2448, CAST(N'2019-10-05 15:00:00.000' AS DateTime), CAST(N'2019-10-05 19:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#ffc107', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2449, CAST(N'2019-10-06 15:00:00.000' AS DateTime), CAST(N'2019-10-06 19:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#ffc107', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2450, CAST(N'2019-10-07 15:00:00.000' AS DateTime), CAST(N'2019-10-07 19:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#ffc107', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2451, CAST(N'2019-10-08 15:00:00.000' AS DateTime), CAST(N'2019-10-08 19:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#ffc107', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2452, CAST(N'2019-10-09 15:00:00.000' AS DateTime), CAST(N'2019-10-09 19:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#ffc107', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2453, CAST(N'2019-10-10 15:00:00.000' AS DateTime), CAST(N'2019-10-10 19:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#ffc107', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2454, CAST(N'2019-10-11 15:00:00.000' AS DateTime), CAST(N'2019-10-11 19:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#ffc107', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2455, CAST(N'2019-10-12 15:00:00.000' AS DateTime), CAST(N'2019-10-12 19:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#ffc107', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2456, CAST(N'2019-10-13 15:00:00.000' AS DateTime), CAST(N'2019-10-13 19:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#ffc107', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2457, CAST(N'2019-10-14 15:00:00.000' AS DateTime), CAST(N'2019-10-14 19:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#ffc107', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2458, CAST(N'2019-10-15 15:00:00.000' AS DateTime), CAST(N'2019-10-15 19:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#ffc107', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2459, CAST(N'2019-10-16 15:00:00.000' AS DateTime), CAST(N'2019-10-16 19:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#ffc107', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2460, CAST(N'2019-10-17 15:00:00.000' AS DateTime), CAST(N'2019-10-17 19:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#ffc107', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2461, CAST(N'2019-10-18 15:00:00.000' AS DateTime), CAST(N'2019-10-18 19:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#ffc107', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2462, CAST(N'2019-10-19 15:00:00.000' AS DateTime), CAST(N'2019-10-19 19:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#ffc107', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2463, CAST(N'2019-10-20 15:00:00.000' AS DateTime), CAST(N'2019-10-20 19:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#ffc107', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2464, CAST(N'2019-10-21 15:00:00.000' AS DateTime), CAST(N'2019-10-21 19:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#ffc107', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2465, CAST(N'2019-10-22 15:00:00.000' AS DateTime), CAST(N'2019-10-22 19:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#ffc107', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2466, CAST(N'2019-10-23 15:00:00.000' AS DateTime), CAST(N'2019-10-23 19:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#ffc107', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2467, CAST(N'2019-10-24 15:00:00.000' AS DateTime), CAST(N'2019-10-24 19:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#ffc107', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2468, CAST(N'2019-10-25 15:00:00.000' AS DateTime), CAST(N'2019-10-25 19:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#ffc107', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2469, CAST(N'2019-10-26 15:00:00.000' AS DateTime), CAST(N'2019-10-26 19:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#ffc107', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2470, CAST(N'2019-10-27 15:00:00.000' AS DateTime), CAST(N'2019-10-27 19:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#ffc107', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2471, CAST(N'2019-10-28 15:00:00.000' AS DateTime), CAST(N'2019-10-28 19:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#ffc107', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2472, CAST(N'2019-10-29 15:00:00.000' AS DateTime), CAST(N'2019-10-29 19:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#ffc107', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2473, CAST(N'2019-10-30 15:00:00.000' AS DateTime), CAST(N'2019-10-30 19:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#ffc107', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2474, CAST(N'2019-10-31 15:00:00.000' AS DateTime), CAST(N'2019-10-31 19:00:00.000' AS DateTime), NULL, 1224, 44, NULL, N'#ffc107', CAST(N'2019-10-04 10:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2475, CAST(N'2019-10-04 09:00:00.000' AS DateTime), CAST(N'2019-10-04 13:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#28a745', CAST(N'2019-10-04 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2476, CAST(N'2019-10-05 09:00:00.000' AS DateTime), CAST(N'2019-10-05 13:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#28a745', CAST(N'2019-10-04 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2477, CAST(N'2019-10-07 09:00:00.000' AS DateTime), CAST(N'2019-10-07 13:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#28a745', CAST(N'2019-10-04 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2478, CAST(N'2019-10-08 09:00:00.000' AS DateTime), CAST(N'2019-10-08 13:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#28a745', CAST(N'2019-10-04 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2479, CAST(N'2019-10-09 09:00:00.000' AS DateTime), CAST(N'2019-10-09 13:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#28a745', CAST(N'2019-10-04 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2480, CAST(N'2019-10-12 09:00:00.000' AS DateTime), CAST(N'2019-10-12 13:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#28a745', CAST(N'2019-10-04 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2481, CAST(N'2019-10-14 09:00:00.000' AS DateTime), CAST(N'2019-10-14 13:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#28a745', CAST(N'2019-10-04 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2482, CAST(N'2019-10-16 09:00:00.000' AS DateTime), CAST(N'2019-10-16 13:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#28a745', CAST(N'2019-10-04 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2483, CAST(N'2019-10-19 09:00:00.000' AS DateTime), CAST(N'2019-10-19 13:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#28a745', CAST(N'2019-10-04 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2484, CAST(N'2019-10-21 09:00:00.000' AS DateTime), CAST(N'2019-10-21 13:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#28a745', CAST(N'2019-10-04 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2485, CAST(N'2019-10-23 09:00:00.000' AS DateTime), CAST(N'2019-10-23 13:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#28a745', CAST(N'2019-10-04 11:01:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2486, CAST(N'2019-10-25 09:00:00.000' AS DateTime), CAST(N'2019-10-25 13:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#28a745', CAST(N'2019-10-04 11:02:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2487, CAST(N'2019-10-26 09:00:00.000' AS DateTime), CAST(N'2019-10-26 13:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#28a745', CAST(N'2019-10-04 11:02:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2488, CAST(N'2019-10-28 09:00:00.000' AS DateTime), CAST(N'2019-10-28 13:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#28a745', CAST(N'2019-10-04 11:02:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2489, CAST(N'2019-10-30 09:00:00.000' AS DateTime), CAST(N'2019-10-30 13:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#28a745', CAST(N'2019-10-04 11:02:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2490, CAST(N'2019-10-10 09:00:00.000' AS DateTime), CAST(N'2019-10-10 13:00:00.000' AS DateTime), NULL, 1114, 36, NULL, N'#28a745', CAST(N'2019-10-04 11:03:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2491, CAST(N'2019-10-15 09:00:00.000' AS DateTime), CAST(N'2019-10-15 13:00:00.000' AS DateTime), NULL, 1114, 36, NULL, N'#28a745', CAST(N'2019-10-04 11:03:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2492, CAST(N'2019-10-22 09:00:00.000' AS DateTime), CAST(N'2019-10-22 13:00:00.000' AS DateTime), NULL, 1114, 36, NULL, N'#28a745', CAST(N'2019-10-04 11:03:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2493, CAST(N'2019-10-24 09:00:00.000' AS DateTime), CAST(N'2019-10-24 13:00:00.000' AS DateTime), NULL, 1114, 36, NULL, N'#28a745', CAST(N'2019-10-04 11:03:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2494, CAST(N'2019-10-29 09:00:00.000' AS DateTime), CAST(N'2019-10-29 13:00:00.000' AS DateTime), NULL, 1114, 36, NULL, N'#28a745', CAST(N'2019-10-04 11:03:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2495, CAST(N'2019-10-18 09:00:00.000' AS DateTime), CAST(N'2019-10-18 13:00:00.000' AS DateTime), NULL, 1108, 36, NULL, N'#28a745', CAST(N'2019-10-04 11:03:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2496, CAST(N'2019-10-11 09:00:00.000' AS DateTime), CAST(N'2019-10-11 13:00:00.000' AS DateTime), NULL, 1116, 36, NULL, N'#28a745', CAST(N'2019-10-04 11:04:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2497, CAST(N'2019-10-31 09:00:00.000' AS DateTime), CAST(N'2019-10-31 13:00:00.000' AS DateTime), NULL, 1110, 36, NULL, N'#28a745', CAST(N'2019-10-04 11:04:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2498, CAST(N'2019-10-04 16:00:00.000' AS DateTime), CAST(N'2019-10-04 19:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#ffc107', CAST(N'2019-10-04 11:05:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2499, CAST(N'2019-10-05 16:00:00.000' AS DateTime), CAST(N'2019-10-05 19:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#ffc107', CAST(N'2019-10-04 11:05:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2500, CAST(N'2019-10-07 16:00:00.000' AS DateTime), CAST(N'2019-10-07 19:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#ffc107', CAST(N'2019-10-04 11:05:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2501, CAST(N'2019-10-08 16:00:00.000' AS DateTime), CAST(N'2019-10-08 19:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#ffc107', CAST(N'2019-10-04 11:05:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2502, CAST(N'2019-10-09 16:00:00.000' AS DateTime), CAST(N'2019-10-09 19:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#ffc107', CAST(N'2019-10-04 11:05:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2503, CAST(N'2019-10-10 16:00:00.000' AS DateTime), CAST(N'2019-10-10 19:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#ffc107', CAST(N'2019-10-04 11:05:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2504, CAST(N'2019-10-11 16:00:00.000' AS DateTime), CAST(N'2019-10-11 19:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#ffc107', CAST(N'2019-10-04 11:05:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2505, CAST(N'2019-10-12 16:00:00.000' AS DateTime), CAST(N'2019-10-12 19:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#ffc107', CAST(N'2019-10-04 11:05:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2506, CAST(N'2019-10-15 16:00:00.000' AS DateTime), CAST(N'2019-10-15 19:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#ffc107', CAST(N'2019-10-04 11:06:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2507, CAST(N'2019-10-19 16:00:00.000' AS DateTime), CAST(N'2019-10-19 19:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#ffc107', CAST(N'2019-10-04 11:06:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2508, CAST(N'2019-10-22 16:00:00.000' AS DateTime), CAST(N'2019-10-22 19:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#ffc107', CAST(N'2019-10-04 11:06:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2509, CAST(N'2019-10-24 16:00:00.000' AS DateTime), CAST(N'2019-10-24 19:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#ffc107', CAST(N'2019-10-04 11:06:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2510, CAST(N'2019-10-25 16:00:00.000' AS DateTime), CAST(N'2019-10-25 19:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#ffc107', CAST(N'2019-10-04 11:06:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2511, CAST(N'2019-10-26 16:00:00.000' AS DateTime), CAST(N'2019-10-26 19:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#ffc107', CAST(N'2019-10-04 11:06:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2512, CAST(N'2019-10-29 16:00:00.000' AS DateTime), CAST(N'2019-10-29 19:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#ffc107', CAST(N'2019-10-04 11:06:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2513, CAST(N'2019-10-31 16:00:00.000' AS DateTime), CAST(N'2019-10-31 19:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#ffc107', CAST(N'2019-10-04 11:06:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2514, CAST(N'2019-10-16 16:00:00.000' AS DateTime), CAST(N'2019-10-16 19:00:00.000' AS DateTime), NULL, 1110, 36, NULL, N'#ffc107', CAST(N'2019-10-04 11:07:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2515, CAST(N'2019-10-23 16:00:00.000' AS DateTime), CAST(N'2019-10-23 19:00:00.000' AS DateTime), NULL, 1110, 36, NULL, N'#ffc107', CAST(N'2019-10-04 11:07:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2516, CAST(N'2019-10-28 16:00:00.000' AS DateTime), CAST(N'2019-10-28 19:00:00.000' AS DateTime), NULL, 1110, 36, NULL, N'#ffc107', CAST(N'2019-10-04 11:07:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2517, CAST(N'2019-10-30 16:00:00.000' AS DateTime), CAST(N'2019-10-30 19:00:00.000' AS DateTime), NULL, 1110, 36, NULL, N'#ffc107', CAST(N'2019-10-04 11:07:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2518, CAST(N'2019-10-17 16:00:00.000' AS DateTime), CAST(N'2019-10-17 19:00:00.000' AS DateTime), NULL, 1110, 36, NULL, N'#ffc107', CAST(N'2019-10-04 11:08:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2519, CAST(N'2019-10-14 16:00:00.000' AS DateTime), CAST(N'2019-10-14 19:00:00.000' AS DateTime), NULL, 1116, 36, NULL, N'#ffc107', CAST(N'2019-10-04 11:08:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2520, CAST(N'2019-10-21 16:00:00.000' AS DateTime), CAST(N'2019-10-21 19:00:00.000' AS DateTime), NULL, 1116, 36, NULL, N'#ffc107', CAST(N'2019-10-04 11:08:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2521, CAST(N'2019-10-10 19:00:00.000' AS DateTime), CAST(N'2019-10-10 23:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#dc3545', CAST(N'2019-10-04 11:13:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2522, CAST(N'2019-10-11 19:00:00.000' AS DateTime), CAST(N'2019-10-11 23:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#dc3545', CAST(N'2019-10-04 11:13:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2523, CAST(N'2019-10-21 19:00:00.000' AS DateTime), CAST(N'2019-10-21 23:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#dc3545', CAST(N'2019-10-04 11:13:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2524, CAST(N'2019-10-22 19:00:00.000' AS DateTime), CAST(N'2019-10-22 23:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#dc3545', CAST(N'2019-10-04 11:13:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2525, CAST(N'2019-10-23 19:00:00.000' AS DateTime), CAST(N'2019-10-23 23:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#dc3545', CAST(N'2019-10-04 11:13:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2526, CAST(N'2019-10-24 19:00:00.000' AS DateTime), CAST(N'2019-10-24 23:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#dc3545', CAST(N'2019-10-04 11:13:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2527, CAST(N'2019-10-28 19:00:00.000' AS DateTime), CAST(N'2019-10-28 23:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#dc3545', CAST(N'2019-10-04 11:13:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2528, CAST(N'2019-10-29 19:00:00.000' AS DateTime), CAST(N'2019-10-29 23:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#dc3545', CAST(N'2019-10-04 11:13:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2529, CAST(N'2019-10-30 19:00:00.000' AS DateTime), CAST(N'2019-10-30 23:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#dc3545', CAST(N'2019-10-04 11:13:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2530, CAST(N'2019-10-31 19:00:00.000' AS DateTime), CAST(N'2019-10-31 23:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#dc3545', CAST(N'2019-10-04 11:13:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2531, CAST(N'2019-10-14 19:00:00.000' AS DateTime), CAST(N'2019-10-14 23:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#dc3545', CAST(N'2019-10-04 11:14:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2532, CAST(N'2019-10-15 19:00:00.000' AS DateTime), CAST(N'2019-10-15 23:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#dc3545', CAST(N'2019-10-04 11:14:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2533, CAST(N'2019-10-16 19:00:00.000' AS DateTime), CAST(N'2019-10-16 23:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#dc3545', CAST(N'2019-10-04 11:14:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2534, CAST(N'2019-10-17 19:00:00.000' AS DateTime), CAST(N'2019-10-17 23:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#dc3545', CAST(N'2019-10-04 11:14:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2535, CAST(N'2019-10-18 19:00:00.000' AS DateTime), CAST(N'2019-10-18 23:00:00.000' AS DateTime), NULL, 1115, 36, NULL, N'#dc3545', CAST(N'2019-10-04 11:14:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2536, CAST(N'2019-10-04 16:00:00.000' AS DateTime), CAST(N'2019-10-04 19:00:00.000' AS DateTime), NULL, 1078, 33, NULL, N'#ffc107', CAST(N'2019-10-04 11:19:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2537, CAST(N'2019-10-05 16:00:00.000' AS DateTime), CAST(N'2019-10-05 19:00:00.000' AS DateTime), NULL, 1078, 33, NULL, N'#ffc107', CAST(N'2019-10-04 11:19:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2538, CAST(N'2019-10-07 16:00:00.000' AS DateTime), CAST(N'2019-10-07 19:00:00.000' AS DateTime), NULL, 1078, 33, NULL, N'#ffc107', CAST(N'2019-10-04 11:19:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2539, CAST(N'2019-10-09 16:00:00.000' AS DateTime), CAST(N'2019-10-09 19:00:00.000' AS DateTime), NULL, 1078, 33, NULL, N'#ffc107', CAST(N'2019-10-04 11:19:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2540, CAST(N'2019-10-10 16:00:00.000' AS DateTime), CAST(N'2019-10-10 19:00:00.000' AS DateTime), NULL, 1078, 33, NULL, N'#ffc107', CAST(N'2019-10-04 11:19:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2541, CAST(N'2019-10-11 16:00:00.000' AS DateTime), CAST(N'2019-10-11 19:00:00.000' AS DateTime), NULL, 1078, 33, NULL, N'#ffc107', CAST(N'2019-10-04 11:19:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2542, CAST(N'2019-10-28 16:00:00.000' AS DateTime), CAST(N'2019-10-28 19:00:00.000' AS DateTime), NULL, 1078, 33, NULL, N'#ffc107', CAST(N'2019-10-04 11:20:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2543, CAST(N'2019-10-29 16:00:00.000' AS DateTime), CAST(N'2019-10-29 19:00:00.000' AS DateTime), NULL, 1078, 33, NULL, N'#ffc107', CAST(N'2019-10-04 11:20:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2544, CAST(N'2019-10-30 16:00:00.000' AS DateTime), CAST(N'2019-10-30 19:00:00.000' AS DateTime), NULL, 1078, 33, NULL, N'#ffc107', CAST(N'2019-10-04 11:20:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2545, CAST(N'2019-10-31 16:00:00.000' AS DateTime), CAST(N'2019-10-31 19:00:00.000' AS DateTime), NULL, 1078, 33, NULL, N'#ffc107', CAST(N'2019-10-04 11:20:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2546, CAST(N'2019-10-14 16:00:00.000' AS DateTime), CAST(N'2019-10-14 19:00:00.000' AS DateTime), NULL, 1076, 33, NULL, N'#ffc107', CAST(N'2019-10-04 11:20:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2547, CAST(N'2019-10-15 16:00:00.000' AS DateTime), CAST(N'2019-10-15 19:00:00.000' AS DateTime), NULL, 1076, 33, NULL, N'#ffc107', CAST(N'2019-10-04 11:20:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2548, CAST(N'2019-10-16 16:00:00.000' AS DateTime), CAST(N'2019-10-16 19:00:00.000' AS DateTime), NULL, 1076, 33, NULL, N'#ffc107', CAST(N'2019-10-04 11:20:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2549, CAST(N'2019-10-17 16:00:00.000' AS DateTime), CAST(N'2019-10-17 19:00:00.000' AS DateTime), NULL, 1076, 33, NULL, N'#ffc107', CAST(N'2019-10-04 11:20:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2550, CAST(N'2019-10-18 16:00:00.000' AS DateTime), CAST(N'2019-10-18 19:00:00.000' AS DateTime), NULL, 1076, 33, NULL, N'#ffc107', CAST(N'2019-10-04 11:20:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2551, CAST(N'2019-10-21 16:00:00.000' AS DateTime), CAST(N'2019-10-21 19:00:00.000' AS DateTime), NULL, 1076, 33, NULL, N'#ffc107', CAST(N'2019-10-04 11:20:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2552, CAST(N'2019-10-22 16:00:00.000' AS DateTime), CAST(N'2019-10-22 19:00:00.000' AS DateTime), NULL, 1076, 33, NULL, N'#ffc107', CAST(N'2019-10-04 11:20:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2553, CAST(N'2019-10-23 16:00:00.000' AS DateTime), CAST(N'2019-10-23 19:00:00.000' AS DateTime), NULL, 1076, 33, NULL, N'#ffc107', CAST(N'2019-10-04 11:20:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2554, CAST(N'2019-10-24 16:00:00.000' AS DateTime), CAST(N'2019-10-24 19:00:00.000' AS DateTime), NULL, 1076, 33, NULL, N'#ffc107', CAST(N'2019-10-04 11:20:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2555, CAST(N'2019-10-25 16:00:00.000' AS DateTime), CAST(N'2019-10-25 19:00:00.000' AS DateTime), NULL, 1076, 33, NULL, N'#ffc107', CAST(N'2019-10-04 11:20:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2556, CAST(N'2019-10-18 15:00:00.000' AS DateTime), CAST(N'2019-10-18 19:00:00.000' AS DateTime), NULL, 1215, 1, NULL, N'#ffc107', CAST(N'2019-10-04 11:21:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2557, CAST(N'2019-10-19 09:00:00.000' AS DateTime), CAST(N'2019-10-19 13:00:00.000' AS DateTime), NULL, 1215, 1, NULL, N'#28a745', CAST(N'2019-10-04 11:21:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2558, CAST(N'2019-10-05 09:00:00.000' AS DateTime), CAST(N'2019-10-05 13:00:00.000' AS DateTime), NULL, 1056, 43, NULL, N'#28a745', CAST(N'2019-10-04 11:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2559, CAST(N'2019-10-07 09:00:00.000' AS DateTime), CAST(N'2019-10-07 13:00:00.000' AS DateTime), NULL, 1056, 43, NULL, N'#28a745', CAST(N'2019-10-04 11:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2560, CAST(N'2019-10-09 09:00:00.000' AS DateTime), CAST(N'2019-10-09 13:00:00.000' AS DateTime), NULL, 1056, 43, NULL, N'#28a745', CAST(N'2019-10-04 11:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2561, CAST(N'2019-10-11 09:00:00.000' AS DateTime), CAST(N'2019-10-11 13:00:00.000' AS DateTime), NULL, 1056, 43, NULL, N'#28a745', CAST(N'2019-10-04 11:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2562, CAST(N'2019-10-12 09:00:00.000' AS DateTime), CAST(N'2019-10-12 13:00:00.000' AS DateTime), NULL, 1056, 43, NULL, N'#28a745', CAST(N'2019-10-04 11:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2563, CAST(N'2019-10-17 09:00:00.000' AS DateTime), CAST(N'2019-10-17 13:00:00.000' AS DateTime), NULL, 1056, 43, NULL, N'#28a745', CAST(N'2019-10-04 11:31:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2564, CAST(N'2019-10-27 09:00:00.000' AS DateTime), CAST(N'2019-10-27 13:00:00.000' AS DateTime), NULL, 1056, 43, NULL, N'#28a745', CAST(N'2019-10-04 11:32:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2565, CAST(N'2019-10-28 09:00:00.000' AS DateTime), CAST(N'2019-10-28 13:00:00.000' AS DateTime), NULL, 1056, 43, NULL, N'#28a745', CAST(N'2019-10-04 11:32:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2566, CAST(N'2019-10-29 09:00:00.000' AS DateTime), CAST(N'2019-10-29 13:00:00.000' AS DateTime), NULL, 1056, 43, NULL, N'#28a745', CAST(N'2019-10-04 11:32:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2567, CAST(N'2019-10-31 09:00:00.000' AS DateTime), CAST(N'2019-10-31 13:00:00.000' AS DateTime), NULL, 1056, 43, NULL, N'#28a745', CAST(N'2019-10-04 11:32:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2568, CAST(N'2019-10-18 09:00:00.000' AS DateTime), CAST(N'2019-10-18 13:00:00.000' AS DateTime), NULL, 1057, 43, NULL, N'#28a745', CAST(N'2019-10-04 11:40:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2569, CAST(N'2019-10-21 09:00:00.000' AS DateTime), CAST(N'2019-10-21 13:00:00.000' AS DateTime), NULL, 1057, 43, NULL, N'#28a745', CAST(N'2019-10-04 11:41:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2570, CAST(N'2019-10-23 09:00:00.000' AS DateTime), CAST(N'2019-10-23 13:00:00.000' AS DateTime), NULL, 1057, 43, NULL, N'#28a745', CAST(N'2019-10-04 11:41:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2571, CAST(N'2019-10-25 09:00:00.000' AS DateTime), CAST(N'2019-10-25 13:00:00.000' AS DateTime), NULL, 1057, 43, NULL, N'#28a745', CAST(N'2019-10-04 11:41:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2572, CAST(N'2019-10-30 09:00:00.000' AS DateTime), CAST(N'2019-10-30 13:00:00.000' AS DateTime), NULL, 1057, 43, NULL, N'#28a745', CAST(N'2019-10-04 11:41:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2573, CAST(N'2019-10-10 09:00:00.000' AS DateTime), CAST(N'2019-10-10 13:00:00.000' AS DateTime), NULL, 1063, 43, NULL, N'#28a745', CAST(N'2019-10-04 11:41:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2574, CAST(N'2019-10-15 09:00:00.000' AS DateTime), CAST(N'2019-10-15 13:00:00.000' AS DateTime), NULL, 1058, 43, NULL, N'#28a745', CAST(N'2019-10-04 11:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2575, CAST(N'2019-10-16 09:00:00.000' AS DateTime), CAST(N'2019-10-16 13:00:00.000' AS DateTime), NULL, 1058, 43, NULL, N'#28a745', CAST(N'2019-10-04 11:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2576, CAST(N'2019-10-22 09:00:00.000' AS DateTime), CAST(N'2019-10-22 13:00:00.000' AS DateTime), NULL, 1058, 43, NULL, N'#28a745', CAST(N'2019-10-04 11:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2577, CAST(N'2019-10-24 09:00:00.000' AS DateTime), CAST(N'2019-10-24 13:00:00.000' AS DateTime), NULL, 1058, 43, NULL, N'#28a745', CAST(N'2019-10-04 11:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2578, CAST(N'2019-10-26 09:00:00.000' AS DateTime), CAST(N'2019-10-26 13:00:00.000' AS DateTime), NULL, 1058, 43, NULL, N'#28a745', CAST(N'2019-10-04 11:42:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2579, CAST(N'2019-10-13 09:00:00.000' AS DateTime), CAST(N'2019-10-13 13:00:00.000' AS DateTime), NULL, 1059, 43, NULL, N'#28a745', CAST(N'2019-10-04 11:43:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2580, CAST(N'2019-10-14 09:00:00.000' AS DateTime), CAST(N'2019-10-14 13:00:00.000' AS DateTime), NULL, 1059, 43, NULL, N'#28a745', CAST(N'2019-10-04 11:43:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2581, CAST(N'2019-10-19 09:00:00.000' AS DateTime), CAST(N'2019-10-19 13:00:00.000' AS DateTime), NULL, 1059, 43, NULL, N'#28a745', CAST(N'2019-10-04 11:43:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2582, CAST(N'2019-10-09 16:00:00.000' AS DateTime), CAST(N'2019-10-09 19:00:00.000' AS DateTime), NULL, 1059, 43, NULL, N'#ffc107', CAST(N'2019-10-04 11:44:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2583, CAST(N'2019-10-10 16:00:00.000' AS DateTime), CAST(N'2019-10-10 19:00:00.000' AS DateTime), NULL, 1059, 43, NULL, N'#ffc107', CAST(N'2019-10-04 11:44:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2584, CAST(N'2019-10-11 16:00:00.000' AS DateTime), CAST(N'2019-10-11 19:00:00.000' AS DateTime), NULL, 1059, 43, NULL, N'#ffc107', CAST(N'2019-10-04 11:44:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2585, CAST(N'2019-10-13 16:00:00.000' AS DateTime), CAST(N'2019-10-13 19:00:00.000' AS DateTime), NULL, 1059, 43, NULL, N'#ffc107', CAST(N'2019-10-04 11:45:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2586, CAST(N'2019-10-15 16:00:00.000' AS DateTime), CAST(N'2019-10-15 19:00:00.000' AS DateTime), NULL, 1059, 43, NULL, N'#ffc107', CAST(N'2019-10-04 11:45:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2587, CAST(N'2019-10-23 16:00:00.000' AS DateTime), CAST(N'2019-10-23 19:00:00.000' AS DateTime), NULL, 1059, 43, NULL, N'#ffc107', CAST(N'2019-10-04 11:45:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2588, CAST(N'2019-10-30 16:00:00.000' AS DateTime), CAST(N'2019-10-30 19:00:00.000' AS DateTime), NULL, 1059, 43, NULL, N'#ffc107', CAST(N'2019-10-04 11:45:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2589, CAST(N'2019-10-07 16:00:00.000' AS DateTime), CAST(N'2019-10-07 19:00:00.000' AS DateTime), NULL, 1058, 43, NULL, N'#ffc107', CAST(N'2019-10-04 11:50:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2590, CAST(N'2019-10-14 16:00:00.000' AS DateTime), CAST(N'2019-10-14 19:00:00.000' AS DateTime), NULL, 1058, 43, NULL, N'#ffc107', CAST(N'2019-10-04 11:50:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2591, CAST(N'2019-10-18 16:00:00.000' AS DateTime), CAST(N'2019-10-18 19:00:00.000' AS DateTime), NULL, 1058, 43, NULL, N'#ffc107', CAST(N'2019-10-04 11:50:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2592, CAST(N'2019-10-28 16:00:00.000' AS DateTime), CAST(N'2019-10-28 19:00:00.000' AS DateTime), NULL, 1058, 43, NULL, N'#ffc107', CAST(N'2019-10-04 11:50:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2593, CAST(N'2019-10-16 16:00:00.000' AS DateTime), CAST(N'2019-10-16 19:00:00.000' AS DateTime), NULL, 1056, 43, NULL, N'#ffc107', CAST(N'2019-10-04 11:51:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2594, CAST(N'2019-10-21 16:00:00.000' AS DateTime), CAST(N'2019-10-21 19:00:00.000' AS DateTime), NULL, 1056, 43, NULL, N'#ffc107', CAST(N'2019-10-04 11:51:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2595, CAST(N'2019-10-24 16:00:00.000' AS DateTime), CAST(N'2019-10-24 19:00:00.000' AS DateTime), NULL, 1056, 43, NULL, N'#ffc107', CAST(N'2019-10-04 11:51:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2596, CAST(N'2019-10-27 16:00:00.000' AS DateTime), CAST(N'2019-10-27 19:00:00.000' AS DateTime), NULL, 1056, 43, NULL, N'#ffc107', CAST(N'2019-10-04 11:52:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2597, CAST(N'2019-10-22 16:00:00.000' AS DateTime), CAST(N'2019-10-22 19:00:00.000' AS DateTime), NULL, 1057, 43, NULL, N'#ffc107', CAST(N'2019-10-04 11:53:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2598, CAST(N'2019-10-25 16:00:00.000' AS DateTime), CAST(N'2019-10-25 19:00:00.000' AS DateTime), NULL, 1057, 43, NULL, N'#ffc107', CAST(N'2019-10-04 11:53:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2599, CAST(N'2019-10-31 16:00:00.000' AS DateTime), CAST(N'2019-10-31 19:00:00.000' AS DateTime), NULL, 1057, 43, NULL, N'#ffc107', CAST(N'2019-10-04 11:53:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2600, CAST(N'2019-10-17 16:00:00.000' AS DateTime), CAST(N'2019-10-17 19:00:00.000' AS DateTime), NULL, 1063, 43, NULL, N'#ffc107', CAST(N'2019-10-04 11:53:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2601, CAST(N'2019-10-29 16:00:00.000' AS DateTime), CAST(N'2019-10-29 19:00:00.000' AS DateTime), NULL, 1063, 43, NULL, N'#ffc107', CAST(N'2019-10-04 11:54:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2602, CAST(N'2019-10-14 19:00:00.000' AS DateTime), CAST(N'2019-10-14 23:00:00.000' AS DateTime), NULL, 1058, 43, NULL, N'#dc3545', CAST(N'2019-10-04 11:55:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2603, CAST(N'2019-10-16 19:00:00.000' AS DateTime), CAST(N'2019-10-16 23:00:00.000' AS DateTime), NULL, 1058, 43, NULL, N'#dc3545', CAST(N'2019-10-04 11:55:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2604, CAST(N'2019-10-28 19:00:00.000' AS DateTime), CAST(N'2019-10-28 23:00:00.000' AS DateTime), NULL, 1058, 43, NULL, N'#dc3545', CAST(N'2019-10-04 11:55:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2605, CAST(N'2019-10-09 19:00:00.000' AS DateTime), CAST(N'2019-10-09 23:00:00.000' AS DateTime), NULL, 1059, 43, NULL, N'#dc3545', CAST(N'2019-10-04 11:55:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2606, CAST(N'2019-10-11 19:00:00.000' AS DateTime), CAST(N'2019-10-11 23:00:00.000' AS DateTime), NULL, 1059, 43, NULL, N'#dc3545', CAST(N'2019-10-04 11:55:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2607, CAST(N'2019-10-23 19:00:00.000' AS DateTime), CAST(N'2019-10-23 23:00:00.000' AS DateTime), NULL, 1059, 43, NULL, N'#dc3545', CAST(N'2019-10-04 11:56:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2608, CAST(N'2019-10-30 19:00:00.000' AS DateTime), CAST(N'2019-10-30 23:00:00.000' AS DateTime), NULL, 1059, 43, NULL, N'#dc3545', CAST(N'2019-10-04 11:56:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2609, CAST(N'2019-10-21 19:00:00.000' AS DateTime), CAST(N'2019-10-21 23:00:00.000' AS DateTime), NULL, 1057, 43, NULL, N'#dc3545', CAST(N'2019-10-04 11:56:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2610, CAST(N'2019-10-18 19:00:00.000' AS DateTime), CAST(N'2019-10-18 23:00:00.000' AS DateTime), NULL, 1063, 43, NULL, N'#dc3545', CAST(N'2019-10-04 11:57:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2611, CAST(N'2019-10-04 10:00:00.000' AS DateTime), CAST(N'2019-10-04 13:00:00.000' AS DateTime), NULL, 1137, 27, NULL, N'#dc3545', CAST(N'2019-10-04 12:04:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2612, CAST(N'2019-10-05 10:00:00.000' AS DateTime), CAST(N'2019-10-05 13:00:00.000' AS DateTime), NULL, 1137, 27, NULL, N'#dc3545', CAST(N'2019-10-04 12:04:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2613, CAST(N'2019-10-04 10:00:00.000' AS DateTime), CAST(N'2019-10-04 13:00:00.000' AS DateTime), NULL, 1137, 27, NULL, N'#28a745', CAST(N'2019-10-04 12:04:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2614, CAST(N'2019-10-05 10:00:00.000' AS DateTime), CAST(N'2019-10-05 13:00:00.000' AS DateTime), NULL, 1137, 27, NULL, N'#28a745', CAST(N'2019-10-04 12:04:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2615, CAST(N'2019-10-10 10:00:00.000' AS DateTime), CAST(N'2019-10-10 13:00:00.000' AS DateTime), NULL, 1137, 27, NULL, N'#28a745', CAST(N'2019-10-04 12:04:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2616, CAST(N'2019-10-11 10:00:00.000' AS DateTime), CAST(N'2019-10-11 13:00:00.000' AS DateTime), NULL, 1137, 27, NULL, N'#28a745', CAST(N'2019-10-04 12:04:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2617, CAST(N'2019-10-12 10:00:00.000' AS DateTime), CAST(N'2019-10-12 13:00:00.000' AS DateTime), NULL, 1137, 27, NULL, N'#28a745', CAST(N'2019-10-04 12:04:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2618, CAST(N'2019-10-17 10:00:00.000' AS DateTime), CAST(N'2019-10-17 13:00:00.000' AS DateTime), NULL, 1137, 27, NULL, N'#28a745', CAST(N'2019-10-04 12:04:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2619, CAST(N'2019-10-18 10:00:00.000' AS DateTime), CAST(N'2019-10-18 13:00:00.000' AS DateTime), NULL, 1137, 27, NULL, N'#28a745', CAST(N'2019-10-04 12:04:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2620, CAST(N'2019-10-19 10:00:00.000' AS DateTime), CAST(N'2019-10-19 13:00:00.000' AS DateTime), NULL, 1137, 27, NULL, N'#28a745', CAST(N'2019-10-04 12:04:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2621, CAST(N'2019-10-24 10:00:00.000' AS DateTime), CAST(N'2019-10-24 13:00:00.000' AS DateTime), NULL, 1137, 27, NULL, N'#28a745', CAST(N'2019-10-04 12:04:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2622, CAST(N'2019-10-25 10:00:00.000' AS DateTime), CAST(N'2019-10-25 13:00:00.000' AS DateTime), NULL, 1137, 27, NULL, N'#28a745', CAST(N'2019-10-04 12:04:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2623, CAST(N'2019-10-26 10:00:00.000' AS DateTime), CAST(N'2019-10-26 13:00:00.000' AS DateTime), NULL, 1137, 27, NULL, N'#28a745', CAST(N'2019-10-04 12:04:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2624, CAST(N'2019-10-31 10:00:00.000' AS DateTime), CAST(N'2019-10-31 13:00:00.000' AS DateTime), NULL, 1137, 27, NULL, N'#28a745', CAST(N'2019-10-04 12:04:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2625, CAST(N'2019-10-07 10:00:00.000' AS DateTime), CAST(N'2019-10-07 13:00:00.000' AS DateTime), NULL, 1137, 27, NULL, N'#28a745', CAST(N'2019-10-04 12:05:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2626, CAST(N'2019-10-14 10:00:00.000' AS DateTime), CAST(N'2019-10-14 13:00:00.000' AS DateTime), NULL, 1137, 27, NULL, N'#28a745', CAST(N'2019-10-04 12:05:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2627, CAST(N'2019-10-21 10:00:00.000' AS DateTime), CAST(N'2019-10-21 13:00:00.000' AS DateTime), NULL, 1137, 27, NULL, N'#28a745', CAST(N'2019-10-04 12:05:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2628, CAST(N'2019-10-28 10:00:00.000' AS DateTime), CAST(N'2019-10-28 13:00:00.000' AS DateTime), NULL, 1137, 27, NULL, N'#28a745', CAST(N'2019-10-04 12:05:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2629, CAST(N'2019-10-04 10:00:00.000' AS DateTime), CAST(N'2019-10-04 13:00:00.000' AS DateTime), NULL, 1121, 31, NULL, N'#28a745', CAST(N'2019-10-04 12:06:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2630, CAST(N'2019-10-09 10:00:00.000' AS DateTime), CAST(N'2019-10-09 13:00:00.000' AS DateTime), NULL, 1121, 31, NULL, N'#28a745', CAST(N'2019-10-04 12:06:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2631, CAST(N'2019-10-11 10:00:00.000' AS DateTime), CAST(N'2019-10-11 13:00:00.000' AS DateTime), NULL, 1121, 31, NULL, N'#28a745', CAST(N'2019-10-04 12:06:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2632, CAST(N'2019-10-16 10:00:00.000' AS DateTime), CAST(N'2019-10-16 13:00:00.000' AS DateTime), NULL, 1121, 31, NULL, N'#28a745', CAST(N'2019-10-04 12:06:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2633, CAST(N'2019-10-23 10:00:00.000' AS DateTime), CAST(N'2019-10-23 13:00:00.000' AS DateTime), NULL, 1121, 31, NULL, N'#28a745', CAST(N'2019-10-04 12:06:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2634, CAST(N'2019-10-30 10:00:00.000' AS DateTime), CAST(N'2019-10-30 13:00:00.000' AS DateTime), NULL, 1121, 31, NULL, N'#28a745', CAST(N'2019-10-04 12:06:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2635, CAST(N'2019-10-25 10:00:00.000' AS DateTime), CAST(N'2019-10-25 13:00:00.000' AS DateTime), NULL, 1121, 31, NULL, N'#28a745', CAST(N'2019-10-04 12:06:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2636, CAST(N'2019-10-18 10:00:00.000' AS DateTime), CAST(N'2019-10-18 13:00:00.000' AS DateTime), NULL, 1121, 31, NULL, N'#28a745', CAST(N'2019-10-04 12:06:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2637, CAST(N'2019-10-11 10:00:00.000' AS DateTime), CAST(N'2019-10-11 13:00:00.000' AS DateTime), NULL, 1121, 31, NULL, N'#28a745', CAST(N'2019-10-04 12:06:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2638, CAST(N'2019-10-03 16:00:00.000' AS DateTime), CAST(N'2019-10-03 19:00:00.000' AS DateTime), NULL, 1121, 31, NULL, N'#ffc107', CAST(N'2019-10-04 12:07:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2639, CAST(N'2019-10-07 16:00:00.000' AS DateTime), CAST(N'2019-10-07 19:00:00.000' AS DateTime), NULL, 1121, 31, NULL, N'#ffc107', CAST(N'2019-10-04 12:07:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2640, CAST(N'2019-10-14 16:00:00.000' AS DateTime), CAST(N'2019-10-14 19:00:00.000' AS DateTime), NULL, 1121, 31, NULL, N'#ffc107', CAST(N'2019-10-04 12:07:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2641, CAST(N'2019-10-15 16:00:00.000' AS DateTime), CAST(N'2019-10-15 19:00:00.000' AS DateTime), NULL, 1121, 31, NULL, N'#ffc107', CAST(N'2019-10-04 12:07:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2642, CAST(N'2019-10-21 16:00:00.000' AS DateTime), CAST(N'2019-10-21 19:00:00.000' AS DateTime), NULL, 1121, 31, NULL, N'#ffc107', CAST(N'2019-10-04 12:07:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2643, CAST(N'2019-10-22 16:00:00.000' AS DateTime), CAST(N'2019-10-22 19:00:00.000' AS DateTime), NULL, 1121, 31, NULL, N'#ffc107', CAST(N'2019-10-04 12:07:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2644, CAST(N'2019-10-28 16:00:00.000' AS DateTime), CAST(N'2019-10-28 19:00:00.000' AS DateTime), NULL, 1121, 31, NULL, N'#ffc107', CAST(N'2019-10-04 12:07:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2645, CAST(N'2019-10-29 16:00:00.000' AS DateTime), CAST(N'2019-10-29 19:00:00.000' AS DateTime), NULL, 1121, 31, NULL, N'#ffc107', CAST(N'2019-10-04 12:07:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2646, CAST(N'2019-10-10 16:00:00.000' AS DateTime), CAST(N'2019-10-10 19:00:00.000' AS DateTime), NULL, 1121, 31, NULL, N'#ffc107', CAST(N'2019-10-04 12:08:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2647, CAST(N'2019-10-17 16:00:00.000' AS DateTime), CAST(N'2019-10-17 19:00:00.000' AS DateTime), NULL, 1121, 31, NULL, N'#ffc107', CAST(N'2019-10-04 12:08:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2648, CAST(N'2019-10-24 16:00:00.000' AS DateTime), CAST(N'2019-10-24 19:00:00.000' AS DateTime), NULL, 1121, 31, NULL, N'#ffc107', CAST(N'2019-10-04 12:08:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2649, CAST(N'2019-10-31 16:00:00.000' AS DateTime), CAST(N'2019-10-31 19:00:00.000' AS DateTime), NULL, 1121, 31, NULL, N'#ffc107', CAST(N'2019-10-04 12:08:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2650, CAST(N'2019-10-15 08:00:00.000' AS DateTime), CAST(N'2019-10-15 13:00:00.000' AS DateTime), NULL, 1070, 9, NULL, N'#28a745', CAST(N'2019-10-04 12:12:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2651, CAST(N'2019-10-16 08:00:00.000' AS DateTime), CAST(N'2019-10-16 13:00:00.000' AS DateTime), NULL, 1070, 9, NULL, N'#28a745', CAST(N'2019-10-04 12:12:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2652, CAST(N'2019-10-17 08:00:00.000' AS DateTime), CAST(N'2019-10-17 13:00:00.000' AS DateTime), NULL, 1070, 9, NULL, N'#28a745', CAST(N'2019-10-04 12:12:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2653, CAST(N'2019-10-19 08:00:00.000' AS DateTime), CAST(N'2019-10-19 13:00:00.000' AS DateTime), NULL, 1070, 9, NULL, N'#28a745', CAST(N'2019-10-04 12:13:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2654, CAST(N'2019-10-21 08:00:00.000' AS DateTime), CAST(N'2019-10-21 13:00:00.000' AS DateTime), NULL, 1070, 9, NULL, N'#28a745', CAST(N'2019-10-04 12:13:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2655, CAST(N'2019-10-22 08:00:00.000' AS DateTime), CAST(N'2019-10-22 13:00:00.000' AS DateTime), NULL, 1070, 9, NULL, N'#28a745', CAST(N'2019-10-04 12:13:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2656, CAST(N'2019-10-07 08:00:00.000' AS DateTime), CAST(N'2019-10-07 13:00:00.000' AS DateTime), NULL, 1068, 9, NULL, N'#28a745', CAST(N'2019-10-04 12:13:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2657, CAST(N'2019-10-11 08:00:00.000' AS DateTime), CAST(N'2019-10-11 13:00:00.000' AS DateTime), NULL, 1068, 9, NULL, N'#28a745', CAST(N'2019-10-04 12:13:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2658, CAST(N'2019-10-23 08:00:00.000' AS DateTime), CAST(N'2019-10-23 13:00:00.000' AS DateTime), NULL, 1068, 9, NULL, N'#28a745', CAST(N'2019-10-04 12:14:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2659, CAST(N'2019-10-10 08:00:00.000' AS DateTime), CAST(N'2019-10-10 13:00:00.000' AS DateTime), NULL, 1069, 9, NULL, N'#28a745', CAST(N'2019-10-04 12:14:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2660, CAST(N'2019-10-29 08:00:00.000' AS DateTime), CAST(N'2019-10-29 13:00:00.000' AS DateTime), NULL, 1069, 9, NULL, N'#28a745', CAST(N'2019-10-04 12:14:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2661, CAST(N'2019-10-28 08:00:00.000' AS DateTime), CAST(N'2019-10-28 13:00:00.000' AS DateTime), NULL, 1070, 9, NULL, N'#28a745', CAST(N'2019-10-04 12:15:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2662, CAST(N'2019-10-30 08:00:00.000' AS DateTime), CAST(N'2019-10-30 13:00:00.000' AS DateTime), NULL, 1070, 9, NULL, N'#28a745', CAST(N'2019-10-04 12:15:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2663, CAST(N'2019-10-10 16:00:00.000' AS DateTime), CAST(N'2019-10-10 19:00:00.000' AS DateTime), NULL, 1070, 9, NULL, N'#ffc107', CAST(N'2019-10-04 12:20:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2664, CAST(N'2019-10-11 16:00:00.000' AS DateTime), CAST(N'2019-10-11 19:00:00.000' AS DateTime), NULL, 1070, 9, NULL, N'#ffc107', CAST(N'2019-10-04 12:20:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2665, CAST(N'2019-10-12 16:00:00.000' AS DateTime), CAST(N'2019-10-12 19:00:00.000' AS DateTime), NULL, 1070, 9, NULL, N'#ffc107', CAST(N'2019-10-04 12:21:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2666, CAST(N'2019-10-23 16:00:00.000' AS DateTime), CAST(N'2019-10-23 19:00:00.000' AS DateTime), NULL, 1070, 9, NULL, N'#ffc107', CAST(N'2019-10-04 12:21:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2667, CAST(N'2019-10-24 16:00:00.000' AS DateTime), CAST(N'2019-10-24 19:00:00.000' AS DateTime), NULL, 1070, 9, NULL, N'#ffc107', CAST(N'2019-10-04 12:21:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2668, CAST(N'2019-10-09 16:00:00.000' AS DateTime), CAST(N'2019-10-09 19:00:00.000' AS DateTime), NULL, 1068, 9, NULL, N'#ffc107', CAST(N'2019-10-04 12:21:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2669, CAST(N'2019-10-14 16:00:00.000' AS DateTime), CAST(N'2019-10-14 19:00:00.000' AS DateTime), NULL, 1068, 9, NULL, N'#ffc107', CAST(N'2019-10-04 12:21:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2670, CAST(N'2019-10-15 16:00:00.000' AS DateTime), CAST(N'2019-10-15 19:00:00.000' AS DateTime), NULL, 1068, 9, NULL, N'#ffc107', CAST(N'2019-10-04 12:21:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2671, CAST(N'2019-10-22 16:00:00.000' AS DateTime), CAST(N'2019-10-22 19:00:00.000' AS DateTime), NULL, 1068, 9, NULL, N'#ffc107', CAST(N'2019-10-04 12:22:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2672, CAST(N'2019-10-25 16:00:00.000' AS DateTime), CAST(N'2019-10-25 19:00:00.000' AS DateTime), NULL, 1068, 9, NULL, N'#ffc107', CAST(N'2019-10-04 12:22:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2673, CAST(N'2019-10-29 16:00:00.000' AS DateTime), CAST(N'2019-10-29 19:00:00.000' AS DateTime), NULL, 1068, 9, NULL, N'#ffc107', CAST(N'2019-10-04 12:22:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2674, CAST(N'2019-10-17 16:00:00.000' AS DateTime), CAST(N'2019-10-17 19:00:00.000' AS DateTime), NULL, 1069, 9, NULL, N'#ffc107', CAST(N'2019-10-04 12:23:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2675, CAST(N'2019-10-19 16:00:00.000' AS DateTime), CAST(N'2019-10-19 19:00:00.000' AS DateTime), NULL, 1069, 9, NULL, N'#ffc107', CAST(N'2019-10-04 12:23:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2676, CAST(N'2019-10-18 16:00:00.000' AS DateTime), CAST(N'2019-10-18 19:00:00.000' AS DateTime), NULL, 1070, 9, NULL, N'#ffc107', CAST(N'2019-10-04 12:24:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2677, CAST(N'2019-10-31 16:00:00.000' AS DateTime), CAST(N'2019-10-31 19:00:00.000' AS DateTime), NULL, 1070, 9, NULL, N'#ffc107', CAST(N'2019-10-04 12:25:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2678, CAST(N'2019-10-11 19:00:00.000' AS DateTime), CAST(N'2019-10-11 23:00:00.000' AS DateTime), NULL, 1070, 9, NULL, N'#ffc107', CAST(N'2019-10-04 12:28:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2679, CAST(N'2019-10-12 19:00:00.000' AS DateTime), CAST(N'2019-10-12 23:00:00.000' AS DateTime), NULL, 1070, 9, NULL, N'#ffc107', CAST(N'2019-10-04 12:28:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2680, CAST(N'2019-10-11 19:00:00.000' AS DateTime), CAST(N'2019-10-11 23:00:00.000' AS DateTime), NULL, 1070, 9, NULL, N'#dc3545', CAST(N'2019-10-04 12:29:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2681, CAST(N'2019-10-12 19:00:00.000' AS DateTime), CAST(N'2019-10-12 23:00:00.000' AS DateTime), NULL, 1070, 9, NULL, N'#dc3545', CAST(N'2019-10-04 12:29:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2682, CAST(N'2019-10-24 19:00:00.000' AS DateTime), CAST(N'2019-10-24 23:00:00.000' AS DateTime), NULL, 1070, 9, NULL, N'#dc3545', CAST(N'2019-10-04 12:29:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2683, CAST(N'2019-10-02 19:00:00.000' AS DateTime), CAST(N'2019-10-02 23:00:00.000' AS DateTime), NULL, 1069, 9, NULL, N'#dc3545', CAST(N'2019-10-04 12:30:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2684, CAST(N'2019-10-09 19:00:00.000' AS DateTime), CAST(N'2019-10-09 23:00:00.000' AS DateTime), NULL, 1069, 9, NULL, N'#dc3545', CAST(N'2019-10-04 12:30:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2685, CAST(N'2019-10-16 19:00:00.000' AS DateTime), CAST(N'2019-10-16 23:00:00.000' AS DateTime), NULL, 1069, 9, NULL, N'#dc3545', CAST(N'2019-10-04 12:30:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2686, CAST(N'2019-10-19 19:00:00.000' AS DateTime), CAST(N'2019-10-19 23:00:00.000' AS DateTime), NULL, 1069, 9, NULL, N'#dc3545', CAST(N'2019-10-04 12:30:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2687, CAST(N'2019-10-30 19:00:00.000' AS DateTime), CAST(N'2019-10-30 23:00:00.000' AS DateTime), NULL, 1069, 9, NULL, N'#dc3545', CAST(N'2019-10-04 12:30:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2688, CAST(N'2019-10-29 19:00:00.000' AS DateTime), CAST(N'2019-10-29 23:00:00.000' AS DateTime), NULL, 1069, 9, NULL, N'#dc3545', CAST(N'2019-10-04 12:30:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2689, CAST(N'2019-10-11 19:00:00.000' AS DateTime), CAST(N'2019-10-11 23:00:00.000' AS DateTime), NULL, 1070, 9, NULL, N'#ffc107', CAST(N'2019-10-04 12:31:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2690, CAST(N'2019-10-11 19:00:00.000' AS DateTime), CAST(N'2019-10-11 23:00:00.000' AS DateTime), NULL, 1070, 9, NULL, N'#dc3545', CAST(N'2019-10-04 12:32:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2691, CAST(N'2019-10-11 16:00:00.000' AS DateTime), CAST(N'2019-10-11 19:00:00.000' AS DateTime), NULL, 1070, 9, NULL, N'#dc3545', CAST(N'2019-10-04 12:33:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2692, CAST(N'2019-10-11 16:00:00.000' AS DateTime), CAST(N'2019-10-11 19:00:00.000' AS DateTime), NULL, 1070, 9, NULL, N'#ffc107', CAST(N'2019-10-04 12:33:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (2693, CAST(N'2019-10-11 19:00:00.000' AS DateTime), CAST(N'2019-10-11 23:00:00.000' AS DateTime), NULL, 1070, 9, NULL, N'#dc3545', CAST(N'2019-10-04 12:34:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3678, CAST(N'2019-10-01 07:00:00.000' AS DateTime), CAST(N'2019-10-01 14:00:00.000' AS DateTime), NULL, 1231, 2, NULL, N'#28a745', CAST(N'2019-10-10 11:44:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3679, CAST(N'2019-10-03 07:00:00.000' AS DateTime), CAST(N'2019-10-03 14:00:00.000' AS DateTime), NULL, 1231, 2, NULL, N'#28a745', CAST(N'2019-10-10 11:44:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3680, CAST(N'2019-10-17 07:00:00.000' AS DateTime), CAST(N'2019-10-17 14:00:00.000' AS DateTime), NULL, 1231, 2, NULL, N'#28a745', CAST(N'2019-10-10 11:45:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3681, CAST(N'2019-10-31 07:00:00.000' AS DateTime), CAST(N'2019-10-31 14:00:00.000' AS DateTime), NULL, 1231, 2, NULL, N'#28a745', CAST(N'2019-10-10 11:45:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3682, CAST(N'2019-10-02 07:00:00.000' AS DateTime), CAST(N'2019-10-02 14:00:00.000' AS DateTime), NULL, 1230, 2, NULL, N'#28a745', CAST(N'2019-10-10 11:46:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3683, CAST(N'2019-10-04 07:00:00.000' AS DateTime), CAST(N'2019-10-04 14:00:00.000' AS DateTime), NULL, 1230, 2, NULL, N'#28a745', CAST(N'2019-10-10 11:46:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3684, CAST(N'2019-10-12 07:00:00.000' AS DateTime), CAST(N'2019-10-12 14:00:00.000' AS DateTime), NULL, 1230, 2, NULL, N'#28a745', CAST(N'2019-10-10 11:47:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3685, CAST(N'2019-10-18 07:00:00.000' AS DateTime), CAST(N'2019-10-18 14:00:00.000' AS DateTime), NULL, 1230, 2, NULL, N'#28a745', CAST(N'2019-10-10 11:47:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3686, CAST(N'2019-10-19 07:00:00.000' AS DateTime), CAST(N'2019-10-19 14:00:00.000' AS DateTime), NULL, 1230, 2, NULL, N'#28a745', CAST(N'2019-10-10 11:47:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3687, CAST(N'2019-10-24 07:00:00.000' AS DateTime), CAST(N'2019-10-24 14:00:00.000' AS DateTime), NULL, 1230, 2, NULL, N'#28a745', CAST(N'2019-10-10 11:47:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3688, CAST(N'2019-10-26 07:00:00.000' AS DateTime), CAST(N'2019-10-26 14:00:00.000' AS DateTime), NULL, 1230, 2, NULL, N'#28a745', CAST(N'2019-10-10 11:47:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3689, CAST(N'2019-10-08 07:00:00.000' AS DateTime), CAST(N'2019-10-08 14:00:00.000' AS DateTime), NULL, 1229, 2, NULL, N'#28a745', CAST(N'2019-10-10 11:51:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3690, CAST(N'2019-10-11 07:00:00.000' AS DateTime), CAST(N'2019-10-11 14:00:00.000' AS DateTime), NULL, 1227, 2, NULL, N'#28a745', CAST(N'2019-10-10 11:52:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3691, CAST(N'2019-10-15 07:00:00.000' AS DateTime), CAST(N'2019-10-15 14:00:00.000' AS DateTime), NULL, 1227, 2, NULL, N'#28a745', CAST(N'2019-10-10 11:52:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3692, CAST(N'2019-10-30 07:00:00.000' AS DateTime), CAST(N'2019-10-30 14:00:00.000' AS DateTime), NULL, 1227, 2, NULL, N'#28a745', CAST(N'2019-10-10 11:52:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3693, CAST(N'2019-10-14 07:00:00.000' AS DateTime), CAST(N'2019-10-14 14:00:00.000' AS DateTime), NULL, 1235, 2, NULL, N'#28a745', CAST(N'2019-10-10 11:54:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3694, CAST(N'2019-10-14 10:30:00.000' AS DateTime), CAST(N'2019-10-14 13:00:00.000' AS DateTime), NULL, 1085, 6, NULL, N'#28a745', CAST(N'2019-10-10 12:08:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3695, CAST(N'2019-10-21 10:30:00.000' AS DateTime), CAST(N'2019-10-21 13:00:00.000' AS DateTime), NULL, 1085, 6, NULL, N'#28a745', CAST(N'2019-10-10 12:08:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3696, CAST(N'2019-10-28 10:30:00.000' AS DateTime), CAST(N'2019-10-28 13:00:00.000' AS DateTime), NULL, 1085, 6, NULL, N'#28a745', CAST(N'2019-10-10 12:08:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3697, CAST(N'2019-10-01 17:30:00.000' AS DateTime), CAST(N'2019-10-01 19:00:00.000' AS DateTime), NULL, 1085, 6, NULL, N'#ffc107', CAST(N'2019-10-10 12:09:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3698, CAST(N'2019-10-02 17:30:00.000' AS DateTime), CAST(N'2019-10-02 19:00:00.000' AS DateTime), NULL, 1085, 6, NULL, N'#ffc107', CAST(N'2019-10-10 12:09:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3699, CAST(N'2019-10-15 17:30:00.000' AS DateTime), CAST(N'2019-10-15 19:00:00.000' AS DateTime), NULL, 1085, 6, NULL, N'#ffc107', CAST(N'2019-10-10 12:09:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3700, CAST(N'2019-10-16 17:30:00.000' AS DateTime), CAST(N'2019-10-16 19:00:00.000' AS DateTime), NULL, 1085, 6, NULL, N'#ffc107', CAST(N'2019-10-10 12:09:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3701, CAST(N'2019-10-22 17:30:00.000' AS DateTime), CAST(N'2019-10-22 19:00:00.000' AS DateTime), NULL, 1085, 6, NULL, N'#ffc107', CAST(N'2019-10-10 12:09:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3702, CAST(N'2019-10-23 17:30:00.000' AS DateTime), CAST(N'2019-10-23 19:00:00.000' AS DateTime), NULL, 1085, 6, NULL, N'#ffc107', CAST(N'2019-10-10 12:09:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3703, CAST(N'2019-10-29 17:30:00.000' AS DateTime), CAST(N'2019-10-29 19:00:00.000' AS DateTime), NULL, 1085, 6, NULL, N'#ffc107', CAST(N'2019-10-10 12:09:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3704, CAST(N'2019-10-30 17:30:00.000' AS DateTime), CAST(N'2019-10-30 19:00:00.000' AS DateTime), NULL, 1085, 6, NULL, N'#ffc107', CAST(N'2019-10-10 12:09:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3705, CAST(N'2019-10-24 17:30:00.000' AS DateTime), CAST(N'2019-10-24 19:00:00.000' AS DateTime), NULL, 1085, 6, NULL, N'#ffc107', CAST(N'2019-10-10 12:09:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3706, CAST(N'2019-10-17 17:30:00.000' AS DateTime), CAST(N'2019-10-17 19:00:00.000' AS DateTime), NULL, 1085, 6, NULL, N'#ffc107', CAST(N'2019-10-10 12:09:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3707, CAST(N'2019-10-10 15:30:00.000' AS DateTime), CAST(N'2019-10-10 19:00:00.000' AS DateTime), NULL, 1084, 6, NULL, N'#ffc107', CAST(N'2019-10-10 12:10:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3708, CAST(N'2019-10-04 16:30:00.000' AS DateTime), CAST(N'2019-10-04 19:00:00.000' AS DateTime), NULL, 1182, 11, NULL, N'#ffc107', CAST(N'2019-10-10 12:16:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3709, CAST(N'2019-10-28 16:30:00.000' AS DateTime), CAST(N'2019-10-28 19:00:00.000' AS DateTime), NULL, 1182, 11, NULL, N'#ffc107', CAST(N'2019-10-10 12:17:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3710, CAST(N'2019-10-23 16:30:00.000' AS DateTime), CAST(N'2019-10-23 19:00:00.000' AS DateTime), NULL, 1182, 11, NULL, N'#ffc107', CAST(N'2019-10-10 12:17:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3711, CAST(N'2019-10-30 16:30:00.000' AS DateTime), CAST(N'2019-10-30 19:00:00.000' AS DateTime), NULL, 1182, 11, NULL, N'#ffc107', CAST(N'2019-10-10 12:17:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3712, CAST(N'2019-10-17 16:30:00.000' AS DateTime), CAST(N'2019-10-17 19:00:00.000' AS DateTime), NULL, 1182, 11, NULL, N'#ffc107', CAST(N'2019-10-10 12:17:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3713, CAST(N'2019-10-12 09:00:00.000' AS DateTime), CAST(N'2019-10-12 13:00:00.000' AS DateTime), NULL, 1182, 11, NULL, N'#28a745', CAST(N'2019-10-10 12:17:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3714, CAST(N'2019-10-15 09:00:00.000' AS DateTime), CAST(N'2019-10-15 13:00:00.000' AS DateTime), NULL, 1182, 11, NULL, N'#28a745', CAST(N'2019-10-10 12:18:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3715, CAST(N'2019-10-01 16:00:00.000' AS DateTime), CAST(N'2019-10-01 19:00:00.000' AS DateTime), NULL, 1163, 19, NULL, N'#ffc107', CAST(N'2019-10-10 12:21:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3716, CAST(N'2019-10-03 16:00:00.000' AS DateTime), CAST(N'2019-10-03 19:00:00.000' AS DateTime), NULL, 1163, 19, NULL, N'#ffc107', CAST(N'2019-10-10 12:21:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3717, CAST(N'2019-10-18 16:00:00.000' AS DateTime), CAST(N'2019-10-18 19:00:00.000' AS DateTime), NULL, 1163, 19, NULL, N'#ffc107', CAST(N'2019-10-10 12:21:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3718, CAST(N'2019-10-14 16:00:00.000' AS DateTime), CAST(N'2019-10-14 19:00:00.000' AS DateTime), NULL, 1163, 19, NULL, N'#ffc107', CAST(N'2019-10-10 12:22:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3719, CAST(N'2019-10-30 16:00:00.000' AS DateTime), CAST(N'2019-10-30 19:00:00.000' AS DateTime), NULL, 1163, 19, NULL, N'#ffc107', CAST(N'2019-10-10 12:22:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3720, CAST(N'2019-10-02 16:00:00.000' AS DateTime), CAST(N'2019-10-02 19:00:00.000' AS DateTime), NULL, 1164, 19, NULL, N'#ffc107', CAST(N'2019-10-10 12:22:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3721, CAST(N'2019-10-04 16:00:00.000' AS DateTime), CAST(N'2019-10-04 19:00:00.000' AS DateTime), NULL, 1164, 19, NULL, N'#ffc107', CAST(N'2019-10-10 12:22:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3722, CAST(N'2019-10-09 16:00:00.000' AS DateTime), CAST(N'2019-10-09 19:00:00.000' AS DateTime), NULL, 1164, 19, NULL, N'#ffc107', CAST(N'2019-10-10 12:22:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3723, CAST(N'2019-10-10 16:00:00.000' AS DateTime), CAST(N'2019-10-10 19:00:00.000' AS DateTime), NULL, 1164, 19, NULL, N'#ffc107', CAST(N'2019-10-10 12:22:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3724, CAST(N'2019-10-11 16:00:00.000' AS DateTime), CAST(N'2019-10-11 19:00:00.000' AS DateTime), NULL, 1164, 19, NULL, N'#ffc107', CAST(N'2019-10-10 12:22:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3725, CAST(N'2019-10-15 16:00:00.000' AS DateTime), CAST(N'2019-10-15 19:00:00.000' AS DateTime), NULL, 1164, 19, NULL, N'#ffc107', CAST(N'2019-10-10 12:22:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3726, CAST(N'2019-10-16 16:00:00.000' AS DateTime), CAST(N'2019-10-16 19:00:00.000' AS DateTime), NULL, 1164, 19, NULL, N'#ffc107', CAST(N'2019-10-10 12:22:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3727, CAST(N'2019-10-17 16:00:00.000' AS DateTime), CAST(N'2019-10-17 19:00:00.000' AS DateTime), NULL, 1164, 19, NULL, N'#ffc107', CAST(N'2019-10-10 12:22:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3728, CAST(N'2019-10-22 16:00:00.000' AS DateTime), CAST(N'2019-10-22 19:00:00.000' AS DateTime), NULL, 1164, 19, NULL, N'#ffc107', CAST(N'2019-10-10 12:23:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3729, CAST(N'2019-10-23 16:00:00.000' AS DateTime), CAST(N'2019-10-23 19:00:00.000' AS DateTime), NULL, 1164, 19, NULL, N'#ffc107', CAST(N'2019-10-10 12:23:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3730, CAST(N'2019-10-28 16:00:00.000' AS DateTime), CAST(N'2019-10-28 19:00:00.000' AS DateTime), NULL, 1164, 19, NULL, N'#ffc107', CAST(N'2019-10-10 12:23:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3731, CAST(N'2019-10-29 16:00:00.000' AS DateTime), CAST(N'2019-10-29 19:00:00.000' AS DateTime), NULL, 1164, 19, NULL, N'#ffc107', CAST(N'2019-10-10 12:23:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3732, CAST(N'2019-10-10 08:00:00.000' AS DateTime), CAST(N'2019-10-10 13:00:00.000' AS DateTime), NULL, 1163, 19, NULL, N'#28a745', CAST(N'2019-10-10 12:24:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3733, CAST(N'2019-10-21 08:00:00.000' AS DateTime), CAST(N'2019-10-21 13:00:00.000' AS DateTime), NULL, 1163, 19, NULL, N'#28a745', CAST(N'2019-10-10 12:24:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3734, CAST(N'2019-10-05 08:00:00.000' AS DateTime), CAST(N'2019-10-05 13:00:00.000' AS DateTime), NULL, 1165, 19, NULL, N'#28a745', CAST(N'2019-10-10 12:24:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3735, CAST(N'2019-10-12 08:00:00.000' AS DateTime), CAST(N'2019-10-12 13:00:00.000' AS DateTime), NULL, 1165, 19, NULL, N'#28a745', CAST(N'2019-10-10 12:24:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3736, CAST(N'2019-10-19 08:00:00.000' AS DateTime), CAST(N'2019-10-19 13:00:00.000' AS DateTime), NULL, 1165, 19, NULL, N'#28a745', CAST(N'2019-10-10 12:25:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3737, CAST(N'2019-10-26 08:00:00.000' AS DateTime), CAST(N'2019-10-26 13:00:00.000' AS DateTime), NULL, 1165, 19, NULL, N'#28a745', CAST(N'2019-10-10 12:25:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3738, CAST(N'2019-10-25 16:00:00.000' AS DateTime), CAST(N'2019-10-25 19:00:00.000' AS DateTime), NULL, 1164, 19, NULL, N'#ffc107', CAST(N'2019-10-10 12:26:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3739, CAST(N'2019-10-24 16:00:00.000' AS DateTime), CAST(N'2019-10-24 19:00:00.000' AS DateTime), NULL, 1163, 19, NULL, N'#ffc107', CAST(N'2019-10-10 12:26:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3740, CAST(N'2019-10-09 19:00:00.000' AS DateTime), CAST(N'2019-10-09 23:00:00.000' AS DateTime), NULL, 1164, 19, NULL, N'#dc3545', CAST(N'2019-10-10 12:30:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3741, CAST(N'2019-10-10 19:00:00.000' AS DateTime), CAST(N'2019-10-10 23:00:00.000' AS DateTime), NULL, 1164, 19, NULL, N'#dc3545', CAST(N'2019-10-10 12:30:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3742, CAST(N'2019-10-11 19:00:00.000' AS DateTime), CAST(N'2019-10-11 23:00:00.000' AS DateTime), NULL, 1164, 19, NULL, N'#dc3545', CAST(N'2019-10-10 12:30:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3743, CAST(N'2019-10-14 19:00:00.000' AS DateTime), CAST(N'2019-10-14 23:00:00.000' AS DateTime), NULL, 1164, 19, NULL, N'#dc3545', CAST(N'2019-10-10 12:30:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3744, CAST(N'2019-10-15 19:00:00.000' AS DateTime), CAST(N'2019-10-15 23:00:00.000' AS DateTime), NULL, 1164, 19, NULL, N'#dc3545', CAST(N'2019-10-10 12:30:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3745, CAST(N'2019-10-16 19:00:00.000' AS DateTime), CAST(N'2019-10-16 23:00:00.000' AS DateTime), NULL, 1164, 19, NULL, N'#dc3545', CAST(N'2019-10-10 12:30:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3746, CAST(N'2019-10-17 19:00:00.000' AS DateTime), CAST(N'2019-10-17 23:00:00.000' AS DateTime), NULL, 1164, 19, NULL, N'#dc3545', CAST(N'2019-10-10 12:30:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3747, CAST(N'2019-10-18 19:00:00.000' AS DateTime), CAST(N'2019-10-18 23:00:00.000' AS DateTime), NULL, 1164, 19, NULL, N'#dc3545', CAST(N'2019-10-10 12:30:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3748, CAST(N'2019-10-21 19:00:00.000' AS DateTime), CAST(N'2019-10-21 23:00:00.000' AS DateTime), NULL, 1164, 19, NULL, N'#dc3545', CAST(N'2019-10-10 12:30:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3749, CAST(N'2019-10-22 19:00:00.000' AS DateTime), CAST(N'2019-10-22 23:00:00.000' AS DateTime), NULL, 1164, 19, NULL, N'#dc3545', CAST(N'2019-10-10 12:30:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3750, CAST(N'2019-10-23 19:00:00.000' AS DateTime), CAST(N'2019-10-23 23:00:00.000' AS DateTime), NULL, 1164, 19, NULL, N'#dc3545', CAST(N'2019-10-10 12:30:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3751, CAST(N'2019-10-24 19:00:00.000' AS DateTime), CAST(N'2019-10-24 23:00:00.000' AS DateTime), NULL, 1164, 19, NULL, N'#dc3545', CAST(N'2019-10-10 12:30:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3752, CAST(N'2019-10-25 19:00:00.000' AS DateTime), CAST(N'2019-10-25 23:00:00.000' AS DateTime), NULL, 1164, 19, NULL, N'#dc3545', CAST(N'2019-10-10 12:30:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3753, CAST(N'2019-10-28 19:00:00.000' AS DateTime), CAST(N'2019-10-28 23:00:00.000' AS DateTime), NULL, 1164, 19, NULL, N'#dc3545', CAST(N'2019-10-10 12:30:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3754, CAST(N'2019-10-29 19:00:00.000' AS DateTime), CAST(N'2019-10-29 23:00:00.000' AS DateTime), NULL, 1164, 19, NULL, N'#dc3545', CAST(N'2019-10-10 12:30:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3755, CAST(N'2019-10-30 19:00:00.000' AS DateTime), CAST(N'2019-10-30 23:00:00.000' AS DateTime), NULL, 1164, 19, NULL, N'#dc3545', CAST(N'2019-10-10 12:30:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3756, CAST(N'2019-10-05 19:00:00.000' AS DateTime), CAST(N'2019-10-05 23:00:00.000' AS DateTime), NULL, 1165, 19, NULL, N'#dc3545', CAST(N'2019-10-10 12:32:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3757, CAST(N'2019-10-12 19:00:00.000' AS DateTime), CAST(N'2019-10-12 23:00:00.000' AS DateTime), NULL, 1165, 19, NULL, N'#dc3545', CAST(N'2019-10-10 12:32:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3758, CAST(N'2019-10-19 19:00:00.000' AS DateTime), CAST(N'2019-10-19 23:00:00.000' AS DateTime), NULL, 1165, 19, NULL, N'#dc3545', CAST(N'2019-10-10 12:32:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (3759, CAST(N'2019-10-26 19:00:00.000' AS DateTime), CAST(N'2019-10-26 23:00:00.000' AS DateTime), NULL, 1165, 19, NULL, N'#dc3545', CAST(N'2019-10-10 12:32:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Horario] OFF
SET IDENTITY_INSERT [dbo].[Log] ON 

INSERT [dbo].[Log] ([id_log], [idUsuario], [InicioTurno], [FinTurno]) VALUES (4, 1, CAST(N'2019-10-08 22:40:00.620' AS DateTime), CAST(N'2019-10-09 07:39:00.620' AS DateTime))
INSERT [dbo].[Log] ([id_log], [idUsuario], [InicioTurno], [FinTurno]) VALUES (5, 1, CAST(N'2019-10-09 12:44:00.750' AS DateTime), CAST(N'2019-11-04 09:57:43.703' AS DateTime))
INSERT [dbo].[Log] ([id_log], [idUsuario], [InicioTurno], [FinTurno]) VALUES (6, 10, CAST(N'2019-10-09 02:25:00.000' AS DateTime), CAST(N'2019-10-09 10:26:00.000' AS DateTime))
INSERT [dbo].[Log] ([id_log], [idUsuario], [InicioTurno], [FinTurno]) VALUES (7, 10, CAST(N'2019-10-10 10:25:24.840' AS DateTime), CAST(N'2019-10-30 12:48:07.103' AS DateTime))
INSERT [dbo].[Log] ([id_log], [idUsuario], [InicioTurno], [FinTurno]) VALUES (26, 10, CAST(N'2019-11-04 09:49:00.623' AS DateTime), CAST(N'2019-11-04 09:53:34.703' AS DateTime))
INSERT [dbo].[Log] ([id_log], [idUsuario], [InicioTurno], [FinTurno]) VALUES (27, 10, CAST(N'2019-11-04 09:53:41.810' AS DateTime), CAST(N'2019-11-04 09:54:16.310' AS DateTime))
INSERT [dbo].[Log] ([id_log], [idUsuario], [InicioTurno], [FinTurno]) VALUES (28, 10, CAST(N'2019-11-04 09:54:27.070' AS DateTime), CAST(N'2019-11-04 09:55:14.967' AS DateTime))
INSERT [dbo].[Log] ([id_log], [idUsuario], [InicioTurno], [FinTurno]) VALUES (29, 10, CAST(N'2019-11-04 09:55:20.257' AS DateTime), CAST(N'2019-11-04 09:56:45.160' AS DateTime))
INSERT [dbo].[Log] ([id_log], [idUsuario], [InicioTurno], [FinTurno]) VALUES (30, 10, CAST(N'2019-11-04 09:57:57.773' AS DateTime), CAST(N'2019-11-11 18:34:35.050' AS DateTime))
INSERT [dbo].[Log] ([id_log], [idUsuario], [InicioTurno], [FinTurno]) VALUES (31, 1, CAST(N'2019-11-04 10:07:52.957' AS DateTime), CAST(N'2019-11-04 19:16:14.380' AS DateTime))
INSERT [dbo].[Log] ([id_log], [idUsuario], [InicioTurno], [FinTurno]) VALUES (41, 1025, CAST(N'2019-11-18 09:21:57.033' AS DateTime), CAST(N'2019-11-18 09:22:34.750' AS DateTime))
SET IDENTITY_INSERT [dbo].[Log] OFF
SET IDENTITY_INSERT [dbo].[Modulos] ON 

INSERT [dbo].[Modulos] ([idModulos], [Nombre]) VALUES (1, N'HORARIOS')
INSERT [dbo].[Modulos] ([idModulos], [Nombre]) VALUES (2, N'PERSONAL')
INSERT [dbo].[Modulos] ([idModulos], [Nombre]) VALUES (3, N'USUARIOS')
INSERT [dbo].[Modulos] ([idModulos], [Nombre]) VALUES (4, N'VER')
INSERT [dbo].[Modulos] ([idModulos], [Nombre]) VALUES (5, N'PERMISOS')
INSERT [dbo].[Modulos] ([idModulos], [Nombre]) VALUES (6, N'ENFERMERIA_CONTROL')
INSERT [dbo].[Modulos] ([idModulos], [Nombre]) VALUES (7, N'ENFERMERIA_GESTION')
INSERT [dbo].[Modulos] ([idModulos], [Nombre]) VALUES (8, N'CAMPANA')
INSERT [dbo].[Modulos] ([idModulos], [Nombre]) VALUES (9, N'LIQUIDACION')
SET IDENTITY_INSERT [dbo].[Modulos] OFF
SET IDENTITY_INSERT [dbo].[ModulosPermisos] ON 

INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (9, 5, 1)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (10, 5, 2)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (25, 6, 1)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (26, 6, 2)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (27, 6, 4)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (37, 7, 4)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (55, 4, 6)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (56, 1, 1)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (57, 1, 2)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (58, 1, 3)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (59, 1, 4)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (60, 1, 5)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (61, 1, 6)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (62, 1, 7)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (63, 1, 8)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (64, 1, 9)
SET IDENTITY_INSERT [dbo].[ModulosPermisos] OFF
SET IDENTITY_INSERT [dbo].[Persona] ON 

INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1, N'71391320', N'LUIS ALFREDO', N'CHAMBILLA', N'LANCHIPA', N'M', 46, NULL, CAST(N'2019-10-07 11:32:00' AS SmallDateTime), NULL, 1, 1, 1, N'920388043')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (6, N'71391325', N'FABIOLA', N'MENDOZA', N'-', N'F', 47, NULL, NULL, NULL, 1, 3, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1043, N'22222221', N'DIEGO', N'CALISAYA', N'-', N'M', 47, NULL, NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1044, N'22222222', N'GISELLA', N'CORDOVA', N'-', N'F', 47, NULL, NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1045, N'00000001', N'JUANA ', N'CHACHAQUE', N'ROSA', N'F', 45, CAST(N'2019-10-01 09:58:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1046, N'0000002', N'MIGUEL ANGEL ', N'DEL CARPIO', N'TORRES', N'M', 45, CAST(N'2019-10-01 10:39:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1047, N'0000003', N'BERNABE', N'FORA', N'CHURA', N'M', 45, CAST(N'2019-10-01 10:40:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1048, N'00000004', N'ALMICAR LUIS', N'TINOCO', N'SALAZAR', N'M', 45, CAST(N'2019-10-01 10:41:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1049, N'00000005', N'RAMON', N'DEL CARPIO', N'TORRES', N'M', 45, CAST(N'2019-10-01 10:42:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1050, N'00000006', N'SARY SHIRLEY', N'ROJAS', N'BUSTAMANTE', N'F', 44, CAST(N'2019-10-01 10:44:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1051, N'00000007', N'MIRIAN', N'FLORES ', N'DUARTE', N'F', 44, CAST(N'2019-10-01 10:44:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1052, N'00000008', N'BERNARDO ', N'FLORES ', N'ARENAS', N'M', 44, CAST(N'2019-10-01 10:49:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1053, N'00000009', N'ALBERTO', N'CALVO', N'QUIROZ', N'M', 44, CAST(N'2019-10-01 10:50:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1054, N'00000010', N'MARIA ALEXANDRA', N'FERNANDEZ', N'DE CORDOVA ', N'F', 44, CAST(N'2019-10-01 10:51:00' AS SmallDateTime), CAST(N'2019-10-09 18:34:00' AS SmallDateTime), NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1055, N'00000011', N'JUAN JOSE', N'CARPIO', N'CORNEJO', N'M', 44, CAST(N'2019-10-01 10:51:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1056, N'00000012', N'DIANA PATRICIA', N'RONDON', N'MOSCOSO', N'F', 43, CAST(N'2019-10-01 10:52:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1057, N'00000013', N'FERNANDO', N'ROBLES', N'BRODINO', N'M', 43, CAST(N'2019-10-01 10:53:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1058, N'00000014', N'CESAR', N'LANCHIPA', N'PICOAGA', N'M', 43, CAST(N'2019-10-01 10:53:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1059, N'00000015', N'JOSE VICENTE', N'FERNANDEZ', N'URQUIZA', N'M', 43, CAST(N'2019-10-01 10:54:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1060, N'00000016', N'MANUEL RICARDO ', N'SANTOS', N'COAYLA', N'M', 43, CAST(N'2019-10-01 10:55:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1061, N'00000017', N'HENRY EFRAIUN', N'MEDINA', N'CHAMBILLA ', N'M', 43, CAST(N'2019-10-01 10:57:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1062, N'00000018', N'EDWIN FELIX', N'MEDINA', N'CHAMBILLA', N'M', 43, CAST(N'2019-10-01 10:59:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1063, N'00000019', N'CESAR CARLOS', N'INGAR', N'VALVERDE', N'M', 43, CAST(N'2019-10-01 11:00:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1064, N'00000020', N'PERCY', N'ALARCON ', N'AGUILAR', N'M', 43, CAST(N'2019-10-01 11:00:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1065, N'00000021', N'JOSE MARTIN', N'AGUILAR', N'VIGNOLA', N'M', 43, CAST(N'2019-10-01 11:01:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1066, N'00000022', N'MILVIA TATIANA', N'RAYMONDI', N'MOLLINEDO', N'F', 17, CAST(N'2019-10-01 11:02:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1067, N'00000023', N'EDWIN', N'URIBE', N'BADILLO', N'M', 9, CAST(N'2019-10-01 11:02:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1068, N'00000024', N'JOSE LUIS', N'RODRIGUEZ', N'CUADROS', N'M', 9, CAST(N'2019-10-01 11:03:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1069, N'00000025', N'DEL PILAR', N'NUÑEZ', N'ROCIO', N'F', 9, CAST(N'2019-10-01 11:03:00' AS SmallDateTime), CAST(N'2019-10-01 11:04:00' AS SmallDateTime), NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1070, N'00000026', N'YESENIA', N'FLORES', N'CAYRO', N'F', 9, CAST(N'2019-10-01 11:04:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1071, N'00000027', N'IRVIN JONATHAN ', N'CALISAYA', N'PAMPAMALLCO', N'M', 13, CAST(N'2019-10-01 11:05:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1072, N'00000028', N'CARLOS ALBERTO', N'FERNANDEZ', N'CRISOSTO', N'M', 13, CAST(N'2019-10-01 11:05:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1073, N'00000029', N'MARCIAL', N'YUPANQUI', N'FIGUEROA', N'M', 5, CAST(N'2019-10-01 11:06:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1074, N'00000030', N'FABRICIO MANUEL', N'GUEVARA', N'VELEZ', N'M', 5, CAST(N'2019-10-01 11:15:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1075, N'00000031', N'CESAR', N'ZARATE', N'CACERES', N'M', 5, CAST(N'2019-10-01 11:16:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1076, N'00000032', N'CESAR MIGUEL', N'MERCADO', N'HERRERA', N'M', 33, CAST(N'2019-10-01 11:21:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1077, N'00000033', N'JUAN CARLOS', N'BRICEÑO', N'ROSAS', N'M', 33, CAST(N'2019-10-01 11:22:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1078, N'00000034', N'LISBET', N'TORRES', N'MARIN', N'F', 33, CAST(N'2019-10-01 11:23:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1079, N'00000035', N'GABRIELA ELIZABETH', N'ALARCON', N'GARCIA', N'F', 33, CAST(N'2019-10-01 11:26:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1080, N'00000036', N'ALDO ', N'ESCALANTE', N'FLORES', N'M', 37, CAST(N'2019-10-01 11:29:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1081, N'00000037', N'ROBERTO ALEJANDRO', N'ERAS', N'MERCADO', N'M', 37, CAST(N'2019-10-01 11:32:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1082, N'00000038', N'GUSTAVO', N'BECERRA', N'ALVAREZ', N'M', 37, CAST(N'2019-10-01 11:32:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1083, N'00000039', N'NIFKIM JESUS', N'BEDOYA', N'CRUZ', N'M', 37, CAST(N'2019-10-01 11:33:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1084, N'00000040', N'ROSSANA ANGELICA', N'LOSTANAU', N'COSTA', N'F', 6, CAST(N'2019-10-01 11:35:00' AS SmallDateTime), CAST(N'2019-10-09 18:57:00' AS SmallDateTime), NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1085, N'00000041', N'CARLOS', N'VELA ', N'RIVERA', N'M', 6, CAST(N'2019-10-01 11:36:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1086, N'00000042', N'VICTOR RICARDO', N'CHARA', N'SAENZ', N'M', 6, CAST(N'2019-10-01 11:37:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1087, N'00000043', N'ANGEL FABRICIO', N'BARDALES', N'SILVA', N'M', 10, CAST(N'2019-10-01 11:48:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1088, N'00000044', N'EBELIA EDDELYN', N'MAQUEYRA', N'VELARDE', N'F', 10, CAST(N'2019-10-01 11:49:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1089, N'00000045', N'JORGE ELISEO', N'LOPEZ', N'CLAROS', N'M', 10, CAST(N'2019-10-01 11:50:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1090, N'00000046', N'PEDRO', N'LAGUNA', N'HEREDIA', N'M', 10, CAST(N'2019-10-01 11:50:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1091, N'00000047', N'MARIA DEL CARMEN', N'ZUÑIGA', N'INFANTES', N'F', 10, CAST(N'2019-10-01 11:51:00' AS SmallDateTime), CAST(N'2019-10-09 18:53:00' AS SmallDateTime), NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1092, N'00000048', N'WALTER RUGGERO', N'BARRIGA', N'MANRIQUE', N'M', 10, CAST(N'2019-10-01 11:51:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1093, N'00000049', N'ZENON ZENON', N'CERVERA', N'REYES', N'M', 10, CAST(N'2019-10-01 11:52:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1094, N'00000050', N'EDGAR ALFREDO', N'CARCASI', N'LAURA', N'M', 10, CAST(N'2019-10-01 11:54:00' AS SmallDateTime), NULL, NULL, 0, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1095, N'00000051', N'CARLOS', N'FERNANDEZ', N'QUIROZ', N'M', 10, CAST(N'2019-10-01 11:55:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1096, N'00000052', N'JUAN CARLOS', N'JAIME', N'CASTILLO', N'M', 10, CAST(N'2019-10-01 11:55:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1097, N'00000053', N'CRISTIHAN ANGEL', N'ENEQUE', N'CHOZO', N'M', 39, CAST(N'2019-10-01 11:56:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1098, N'00000054', N'FERMIN', N'SILVA', N'CAYATOPA', N'M', 39, CAST(N'2019-10-01 11:57:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1099, N'00000055', N'HECTOR DAVID', N'PALACIOS', N'HERRERA', N'M', 39, CAST(N'2019-10-01 11:57:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1100, N'00000056', N'JOSE', N'JIMENEZ', N'CARAZAS', N'M', 39, CAST(N'2019-10-01 11:57:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1101, N'00000057', N'JOSE LUIS', N'SANTIAGO', N'CASTRO', N'M', 39, CAST(N'2019-10-01 11:58:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1102, N'00000058', N'YISEL', N'NUÑEZ', N'LARIN', N'F', 39, CAST(N'2019-10-01 11:58:00' AS SmallDateTime), CAST(N'2019-10-09 10:04:00' AS SmallDateTime), NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1103, N'00000059', N'ALVARO ALONSO', N'SANCHEZ', N'CEDRON', N'M', 39, CAST(N'2019-10-01 11:59:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1104, N'00000060', N'EMERSON ESTEBAN', N'VASQUEZ', N'PAUCAR', N'M', 39, CAST(N'2019-10-01 11:59:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1105, N'00000061', N'ALFREDO', N'URCUHUARANGA', N'ALVARADO ', N'M', 39, CAST(N'2019-10-01 12:00:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1106, N'00000062', N'GIAN FRANCO ', N'CHURA', N'MAQUERA', N'M', 39, CAST(N'2019-10-01 12:00:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1107, N'00000063', N'BENJAMIN HUMBERTO', N'NUÑEZ ', N'ESPINEL ', N'M', 36, CAST(N'2019-10-01 12:15:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1108, N'00000064', N'EBMAR ERNESTO', N'ROJAS', N'VILLALOBOS', N'M', 36, CAST(N'2019-10-01 12:16:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1109, N'00000065', N'EDWIN NIKOLAI', N'ROJAS', N'LEON', N'M', 36, CAST(N'2019-10-01 12:16:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1110, N'00000066', N'FABIAN DANIEL ', N'DAVALOS ', N'HUISA', N'M', 36, CAST(N'2019-10-01 12:17:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1111, N'00000067', N'FELIZ EFRAIN', N'HOLGUIN', N'FELIX', N'M', 36, CAST(N'2019-10-01 12:18:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1112, N'00000068', N'JOSE LUIS', N'PACORA', N'HUATUCO', N'M', 36, CAST(N'2019-10-01 12:18:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1113, N'00000069', N'MANUEL NEPTALI', N'PACHERRES', N'VALVERDE', N'M', 36, CAST(N'2019-10-01 12:19:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1114, N'00000070', N'MARCO ANTONIO', N'GOMEZ', N'NEYRA', N'M', 36, CAST(N'2019-10-01 12:19:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1115, N'00000071', N'NAUDY JESUS', N'PEREZ', N'ORELLANA', N'M', 36, CAST(N'2019-10-01 12:20:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1116, N'00000072', N'WILDER RAUL', N'TELLO', N'MEJIA', N'M', 36, CAST(N'2019-10-01 14:14:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1117, N'00000073', N'MARIO  LEOPOLDO', N'ASCENZO ', N'BASTTISTINI', N'M', 34, CAST(N'2019-10-01 14:15:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1118, N'00000074', N'CLAUDIO MARTIN', N'BONOMINI', N'CATANZARO', N'M', 34, CAST(N'2019-10-01 14:16:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1119, N'00000075', N'LUIS ERNESTO', N'ESCUDERO ', N'VELANDO', N'M', 34, CAST(N'2019-10-01 14:16:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1120, N'00000076', N'MARILY', N'HUAMANTUCO', N'SANIZO ', N'F', 31, CAST(N'2019-10-01 14:17:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1121, N'00000077', N'DADY GERALDINE ', N'VALENCIA', N'NUÑEZ', N'F', 31, CAST(N'2019-10-01 14:18:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1122, N'00000078', N'EDGARD ALFREDO', N'CARCASI', N'LAURA', N'M', 40, CAST(N'2019-10-01 14:21:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1123, N'00000079', N'CARLOS', N'FERNANDEZ ', N'QUIROZ ', N'M', 40, CAST(N'2019-10-01 14:26:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1124, N'00000080', N'JUAN CARLOS ', N'JAIME', N'CASTILLO', N'M', 40, CAST(N'2019-10-01 14:27:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1125, N'00000081', N'ALBERTO ', N'CALVO', N'QUIROZ', N'M', 29, CAST(N'2019-10-01 14:37:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1126, N'00000082', N'GLENNY ANGELA ', N'OJEDA', N'TORRES ', N'F', 29, CAST(N'2019-10-01 14:38:00' AS SmallDateTime), CAST(N'2019-10-09 18:35:00' AS SmallDateTime), NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1127, N'00000083', N'BERNANDO ALEXANDER', N'FLORES', N'ARENAS', N'M', 29, CAST(N'2019-10-02 16:35:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1128, N'00000084', N'CARLOS', N'MARQUEZ', N'DE LA TORRE', N'M', 29, CAST(N'2019-10-02 16:35:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1129, N'00000085', N'VICTOR MANUEL', N'CARRILLO', N'MELENDEZ', N'M', 29, CAST(N'2019-10-02 16:36:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1130, N'00000086', N'DIANA CAROLINA', N'LAZARO ', N'DE LA TORRE', N'F', 29, CAST(N'2019-10-02 16:36:00' AS SmallDateTime), CAST(N'2019-10-09 18:35:00' AS SmallDateTime), NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1131, N'00000087', N'LUIS', N'PAREDES', N'APONTE', N'M', 29, CAST(N'2019-10-02 16:37:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1132, N'00000088', N'MIRIAM', N'FLORES', N'DUARTE', N'F', 29, CAST(N'2019-10-02 16:37:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1133, N'00000089', N'SARY SHIRLEY', N'ROJAS', N'BUSTAMANTE', N'F', 29, CAST(N'2019-10-02 16:38:00' AS SmallDateTime), CAST(N'2019-10-09 18:53:00' AS SmallDateTime), NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1134, N'00000090', N'OMAR GUSTAVO', N'JIMENES', N'FLORES', N'M', 29, CAST(N'2019-10-02 16:38:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1135, N'00000091', N'PAULO CESAR', N'VALDIVIA', N'MARIN', N'M', 29, CAST(N'2019-10-02 16:39:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1136, N'00000092', N'IVAN FERNANDO', N'CORNEJO', N'HERRERA', N'M', 27, CAST(N'2019-10-02 16:40:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1137, N'00000093', N'JIMMY', N'HERRERA', N'-', N'M', 27, CAST(N'2019-10-02 16:40:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1138, N'00000094', N'LUIS ANTONIO', N'CESPEDES', N'HERNANDEZ', N'M', 27, CAST(N'2019-10-02 16:41:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1139, N'00000095', N'SINTHYA LILIAM ', N'SAAVEDRA', N'ESCALANTE', N'F', 27, CAST(N'2019-10-02 16:41:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
GO
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1140, N'00000096', N'JUAN JOSE', N'CARPIO', N'CORNEJO', N'M', 25, CAST(N'2019-10-02 16:42:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1141, N'00000097', N'MARIA ALEXANDRA', N'FERNANDEZ', N'DE CORDOVA', N'F', 25, CAST(N'2019-10-02 16:43:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1142, N'00000098', N'SERGIO CARLOS', N'GUEVARA', N'GUISA', N'M', 24, CAST(N'2019-10-02 16:43:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1143, N'00000099', N'EDUARDO IVAN', N'CRUZ ', N'PORTUGAL', N'M', 24, CAST(N'2019-10-02 16:44:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1144, N'00000100', N'ALEJANDRO', N'CAMPOS', N'FLORES', N'M', 23, CAST(N'2019-10-02 16:45:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1145, N'00000101', N'PERCY', N'MEDINA', N'CHACON', N'M', 23, CAST(N'2019-10-02 16:45:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1146, N'00000102', N'LAURA SUSANA', N'VALVERDE', N'MOLINA', N'M', 23, CAST(N'2019-10-02 16:45:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1147, N'00000103', N'JAIME ALBERTO', N'MALCA', N'MILLA', N'M', 22, CAST(N'2019-10-02 16:46:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1148, N'00000104', N'CESAR AMADEO', N'BURGOS', N'CHAVEZ', N'M', 21, CAST(N'2019-10-02 16:47:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1149, N'00000105', N'CESAR', N'LANCHIPA', N'PICOAGA', N'M', 21, CAST(N'2019-10-02 16:47:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1150, N'00000106', N'CESAR CARLOS', N'INGAR', N'VALVERDE', N'M', 21, CAST(N'2019-10-02 16:48:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1151, N'00000107', N'DIANA PATRICIA', N'RONDON', N'MOSCOSO', N'F', 21, CAST(N'2019-10-02 16:48:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1152, N'00000108', N'EDWIN FELIX', N'MEDINA', N'CHAMBILLA', N'M', 21, CAST(N'2019-10-02 16:49:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1153, N'00000109 ', N'FERNANDO', N'ROBLES', N'BRONDINO ', N'M', 21, CAST(N'2019-10-02 16:49:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1154, N'00000110', N'HENRY EFRAIN', N'CALLIRI', N'MAMANI', N'M', 21, CAST(N'2019-10-02 16:50:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1155, N'00000111', N'JOSE MARTIN', N'AGUILAR', N'VIGNOA', N'M', 21, CAST(N'2019-10-02 16:50:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1156, N'00000112', N'JOSE VICENTE', N'FERNANDEZ', N'URQUIZA', N'M', 21, CAST(N'2019-10-02 16:51:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1157, N'00000113', N'MANUEL RICARDO', N'SANTOS', N'COAYLA', N'M', 21, CAST(N'2019-10-02 16:52:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1158, N'00000114', N'NOE', N'FLORES', N'VIZCARRA', N'M', 21, CAST(N'2019-10-02 16:52:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1159, N'00000115', N'PERCY', N'ALARCON', N'AGUILAR', N'M', 21, CAST(N'2019-10-02 16:55:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1160, N'00000116', N'ROSA', N'AVALOS', N'ROJO', N'F', 21, CAST(N'2019-10-02 16:56:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1161, N'00000117', N'JORGE', N'DEL CARPIO', N'MEDINA', N'M', 20, CAST(N'2019-10-02 16:57:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1162, N'00000118', N'WILSON RAUL', N'GUZMAN', N'OLIVERA', N'M', 20, CAST(N'2019-10-02 16:57:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1163, N'00000119', N'RONY ALEJANDRO', N'DAVILA', N'YUFRA', N'M', 19, CAST(N'2019-10-02 16:58:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1164, N'00000120', N'CAROLINA DEL ROSARIO', N'RAMOS ', N'PORTALES', N'F', 19, CAST(N'2019-10-02 16:59:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1165, N'00000121', N'CARLOS JAVIER ', N'GAMEZ', N'BERNABE', N'M', 19, CAST(N'2019-10-02 16:59:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1166, N'00000122', N'ABEL', N'CHAVEZ', N'MENDIZABAL', N'M', 19, CAST(N'2019-10-02 17:00:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1167, N'00000123', N'LEONOR NADIA', N'HERRERA', N'TICONA', N'F', 19, CAST(N'2019-10-02 17:01:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1168, N'00000124', N'PEDRO ALFONSO', N'SAKURAY', N'MONTALVO', N'M', 16, CAST(N'2019-10-02 17:02:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1169, N'00000125', N'GIANINA PATRICIA', N'ASTE', N'BERRIOS', N'F', 14, CAST(N'2019-10-02 17:03:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1170, N'00000126', N'HECTOR LUDGARDO', N'TEJADA', N'CACERES', N'M', 12, CAST(N'2019-10-02 17:20:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1171, N'00000127', N'LUIS ALFONSO', N'HUANQUI', N'TOVAR', N'M', 12, CAST(N'2019-10-02 17:21:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1172, N'00000128', N'JANETT CONSUELO', N'CABANILLAS', N'CHOQUE ', N'M', 12, CAST(N'2019-10-02 17:23:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1173, N'00000129', N'JHON LUCAS', N'PACORI', N'ACHATA', N'M', 12, CAST(N'2019-10-02 17:24:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1174, N'00000130', N'JEFF CHARLIE', N'POSTIGO ', N'PAREDES', N'M', 12, CAST(N'2019-10-02 17:24:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1175, N'00000131', N'JUAN JOSE', N'CORNEJO', N'DAVILA', N'M', 12, CAST(N'2019-10-02 17:25:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1176, N'00000132', N'JULIO CESAR', N'NEYRA ', N'PINTO', N'M', 12, CAST(N'2019-10-02 17:25:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1177, N'00000133', N'LUIS ALBERTO', N'VICENTE', N'QUISPE', N'M', 12, CAST(N'2019-10-02 17:27:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1178, N'00000134', N'NADIA DEL PILAR', N'TORRES ', N'AVALOS', N'M', 12, CAST(N'2019-10-02 17:27:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1179, N'00000135', N'WILBER', N'OCROS', N'CAVALCANTE', N'M', 12, CAST(N'2019-10-02 17:28:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1180, N'00000136', N'OSCAR DAVID ', N'ALARICO', N'ZEBALLOS', N'M', 12, CAST(N'2019-10-02 17:29:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1181, N'00000137', N'SANDRA GABRIELA', N'COHAILA', N'SILVA', N'M', 12, CAST(N'2019-10-02 17:29:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1182, N'00000138', N'CESAR', N'CONTRERAS', N'ALMENDRE', N'M', 11, CAST(N'2019-10-02 17:32:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1183, N'00000139', N'VICTOR HUGO', N'TASAYCO ', N'GOGIN', N'M', 11, CAST(N'2019-10-02 17:33:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1184, N'00000140', N'ANGEL FABRICIO', N'BARDALES', N'SILVA ', N'M', 10, CAST(N'2019-10-02 17:33:00' AS SmallDateTime), NULL, NULL, 0, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1185, N'00000141', N'EBELIA EDDELYN', N'MAQUEYRA', N'VELARDE', N'F', 10, CAST(N'2019-10-02 17:34:00' AS SmallDateTime), NULL, NULL, 0, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1186, N'00000142', N'JORGE ELISEO', N'LOPEZ', N'CLAROS', N'M', 10, CAST(N'2019-10-02 17:34:00' AS SmallDateTime), NULL, NULL, 0, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1187, N'00000143', N'PEDRO', N'LAGUNA', N'HEREDIA', N'M', 10, CAST(N'2019-10-02 17:35:00' AS SmallDateTime), NULL, NULL, 0, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1188, N'00000140', N'ELIAS DAVID', N'FIGUEREDO', N'SEGUERA', N'M', 8, CAST(N'2019-10-02 17:39:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1189, N'00000141', N'GINO RICARDO', N'LAGUNA', N'ORTEGA', N'M', 8, CAST(N'2019-10-02 17:39:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1190, N'00000142', N'GUSTAVO', N'SOTO', N'ROJAS', N'M', 8, CAST(N'2019-10-02 17:40:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1191, N'00000143', N'JOSE', N'RAMOS', N'JUAN', N'M', 8, CAST(N'2019-10-02 17:40:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1192, N'00000144', N'LARISSA STEVLANA', N'CHAVEZ', N'ZEGARRA', N'F', 8, CAST(N'2019-10-02 17:41:00' AS SmallDateTime), CAST(N'2019-10-09 18:56:00' AS SmallDateTime), NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1193, N'00000145', N'MARIA ANTONIETA', N'PARI', N'YLLACUTIPA', N'F', 8, CAST(N'2019-10-02 17:41:00' AS SmallDateTime), CAST(N'2019-10-09 18:55:00' AS SmallDateTime), NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1194, N'00000146', N'OLGA RAQUEL', N'MELENDEZ', N'VENTO', N'F', 8, CAST(N'2019-10-02 17:47:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1195, N'00000147', N'DAVID LORENZO', N'SALVATIERRA', N'GARCIA', N'F', 8, CAST(N'2019-10-02 17:49:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1196, N'00000148', N'ANA MARIA', N'CHURA', N'NUÑEZ', N'F', 8, CAST(N'2019-10-02 17:49:00' AS SmallDateTime), CAST(N'2019-10-09 18:55:00' AS SmallDateTime), NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1197, N'00000149', N'ASTRID', N'CURO', N'OVIEDO', N'F', 7, CAST(N'2019-10-03 09:10:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1198, N'00000150', N'GERSON', N'GOMEZ', N'ZAPANA', N'M', 7, CAST(N'2019-10-03 09:11:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1199, N'00000151', N'EDWING', N'LLERENA', N'MEDINA', N'M', 7, CAST(N'2019-10-03 09:12:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1200, N'00000152', N'CAROL PIERINA', N'LOAYZA', N'CORDOVA', N'F', 7, CAST(N'2019-10-03 09:13:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1201, N'00000153', N'ALBERT JOSEPH', N'LOAYZA', N'AGUILAR', N'M', 7, CAST(N'2019-10-03 09:13:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1202, N'00000154', N'PERCY', N'MALDONADO', N'GROVEJO', N'M', 7, CAST(N'2019-10-03 09:14:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1203, N'00000155', N'KARINA', N'MONTECINOS', N'GODINEZ', N'F', 7, CAST(N'2019-10-03 09:14:00' AS SmallDateTime), CAST(N'2019-10-09 18:57:00' AS SmallDateTime), NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1204, N'00000156', N'FIORELLA', N'PIZARRO', N'VARGAS', N'F', 7, CAST(N'2019-10-03 09:15:00' AS SmallDateTime), CAST(N'2019-10-09 18:57:00' AS SmallDateTime), NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1205, N'00000157', N'DONNY', N'ROJAS', N'APAZA', N'M', 7, CAST(N'2019-10-03 09:15:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1206, N'00000158', N'ORLANDO', N'VARGAS', N'ANAHUA', N'M', 7, CAST(N'2019-10-03 09:15:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1207, N'00000159', N'SARA JANNET', N'AVALOS', N'BRAVO', N'F', 3, CAST(N'2019-10-03 09:16:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1208, N'00000160', N'RAUL JESUS', N'BOHORQUEZ', N'VILLANUEVA', N'M', 3, CAST(N'2019-10-03 09:17:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1209, N'00000161', N'GULIANA SHEYLA', N'COHAILA', N'GARCIA', N'F', 3, CAST(N'2019-10-03 09:17:00' AS SmallDateTime), CAST(N'2019-10-09 18:58:00' AS SmallDateTime), NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1210, N'00000162', N'DIANA CAROLINA', N'LAZORO', N'DE LA TORRE', N'M', 3, CAST(N'2019-10-03 09:18:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1211, N'00000163', N'GLADYS MARITZA', N'MAMANI', N'ALAVE', N'F', 3, CAST(N'2019-10-03 09:18:00' AS SmallDateTime), CAST(N'2019-10-09 18:58:00' AS SmallDateTime), NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1212, N'00000164', N'EDSON FRANZ', N'QUISPE', N'ROJAS', N'M', 3, CAST(N'2019-10-03 09:19:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1213, N'00000165', N'ROBERTO FERNANDO', N'VARGAS', N'VILCA', N'M', 3, CAST(N'2019-10-03 09:19:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1214, N'00000166', N'PIERINA GUADALUPE ', N'RIVAS ', N'CARRILLO', N'F', 3, CAST(N'2019-10-03 09:20:00' AS SmallDateTime), CAST(N'2019-10-09 18:58:00' AS SmallDateTime), NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1215, N'00000167', N'TEOFILO', N'QUISPE', N'CHULLO', N'M', 1, CAST(N'2019-10-03 09:20:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1216, N'77777770', N'DENIS', N'HUAMANLAZO', N'ORDOÑES', N'F', 48, CAST(N'2019-10-03 11:32:00' AS SmallDateTime), NULL, NULL, 1, 1, 6, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1217, N'00000170', N'EDDY', N'MAYTA', N'-', N'M', 3, CAST(N'2019-10-03 15:29:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1218, N'00000171', N'JARED', N'RIVERA', N'-', N'M', 3, CAST(N'2019-10-03 15:30:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1219, N'00000169', N'MARIA', N'PARI', N'.', N'M', 48, CAST(N'2019-10-04 08:45:00' AS SmallDateTime), NULL, NULL, 0, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1220, N'00000168', N'LAZARO', N'DE LA TORRE', N'DIANA CAROLINA', N'F', 44, CAST(N'2019-10-04 08:48:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1221, N'00000179', N'MARIA', N'PARI', N'.', N'F', 44, CAST(N'2019-10-04 08:50:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1222, N'00000178', N'MARIA', N'PARI', N'.', N'M', 48, CAST(N'2019-10-04 08:53:00' AS SmallDateTime), NULL, NULL, 0, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1223, N'00000177', N'MARIA', N'PARI', N'.', N'F', 29, CAST(N'2019-10-04 08:55:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1224, N'00000176', N'VICTOR MANUEL', N'CARRILLO', N'MELENDEZ', N'M', 44, CAST(N'2019-10-04 10:51:00' AS SmallDateTime), CAST(N'2019-10-04 10:53:00' AS SmallDateTime), NULL, 1, 1, 1, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1226, N'71391302', N'prueba', N'preuva', N'prieva', N'M', 46, CAST(N'2019-10-07 16:20:00' AS SmallDateTime), NULL, NULL, 1, 1, 6, N'952003361')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1227, N'00000180', N'FIORELLA', N'PIZARRO', N'VARGAS ', N'F', 2, CAST(N'2019-10-09 09:02:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'-')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1228, N'00000181', N'JIMMY PEDRO ', N'OTAZU', N'YBAÑEZ ', N'F', 2, CAST(N'2019-10-09 09:36:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'-')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1229, N'00000182', N'GERSON', N'GOMEZ', N'ZAPANA', N'F', 2, CAST(N'2019-10-09 09:38:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'-')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1230, N'00000183', N'PERCY', N'MALDONADO', N'MOGRORIEGO', N'M', 2, CAST(N'2019-10-09 09:40:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'-')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1231, N'00000184', N'GAVIER GONZALO', N'VELASQUEZ', N'CCOA', N'M', 2, CAST(N'2019-10-09 09:42:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'-')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1232, N'00000185', N'EDDY', N'MAYTA', N'CONDORI', N'M', 2, CAST(N'2019-10-09 09:43:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'-')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1233, N'00000186', N'GLADYS MARITZA', N'MAMANI', N'ALAVE', N'F', 2, CAST(N'2019-10-09 09:43:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'-')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1234, N'00000187', N'JOSE MIGUEL', N'PAREDES', N'RAMOS', N'M', 2, CAST(N'2019-10-09 09:44:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'-')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1235, N'00000188', N'SARA JANET', N'AVALOS', N'BRAVO', N'M', 2, CAST(N'2019-10-09 09:44:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'-')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1236, N'00000189', N'JOHNNY', N'CASTAÑEDA', N'ROJAS', N'M', 39, CAST(N'2019-10-09 10:04:00' AS SmallDateTime), NULL, NULL, 1, 1, 1, N'-')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1237, N'71342548', N'ISIDRO', N'ISIDRO', N'CATACORA', N'M', 47, CAST(N'2019-10-17 18:25:00' AS SmallDateTime), NULL, NULL, 1, 1, 6, N'12121212')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1238, N'00794163', N'MERCEDES', N'ZEPITA', N'CHURA', N'F', 47, CAST(N'2019-10-25 13:03:00' AS SmallDateTime), NULL, NULL, 1, 1, 6, N'000000')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1239, N'70661278', N'SUSAN GRETA', N'ABURTO', N'QUISPE', N'F', 12, CAST(N'2019-11-11 11:28:00' AS SmallDateTime), NULL, NULL, 1, 6, 2, N'952336640')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1240, N'29737822', N'MARCOS', N'ALARCÓN', N'PORTUGAL', N'M', 49, CAST(N'2019-11-11 11:32:00' AS SmallDateTime), NULL, NULL, 1, 6, 2, N'957431004')
GO
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1241, N'44806714', N'EDIT ROSALIA', N'ANCALLA', N'MAMANI', N'F', 12, CAST(N'2019-11-11 11:35:00' AS SmallDateTime), CAST(N'2019-11-11 11:40:00' AS SmallDateTime), NULL, 1, 6, 2, N'980551693')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1242, N'00792555', N'ROSA LUZ', N'ARAUJO', N'NINA', N'F', 49, CAST(N'2019-11-11 11:40:00' AS SmallDateTime), NULL, NULL, 1, 6, 2, N'052243327')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1243, N'42365508', N'LADY ENMA', N'ASCONA', N'GAMEZ', N'F', 26, CAST(N'2019-11-11 11:48:00' AS SmallDateTime), NULL, NULL, 1, 6, 2, N'944948462')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1244, N'70600604', N'ANA YEMILE DEL ROSARIO', N'CAIMANQUE', N'GARCIA', N'F', 26, CAST(N'2019-11-11 11:50:00' AS SmallDateTime), NULL, NULL, 1, 6, 2, N'978989622')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1245, N'46996501', N'CINTYA JACKELIN', N'CALLO', N'QUENTA', N'F', 50, CAST(N'2019-11-11 11:51:00' AS SmallDateTime), NULL, NULL, 1, 6, 2, N'959805793')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1246, N'00413623', N'ANGES ARMILDA', N'CANDELA', N'NAJAR', N'F', 50, CAST(N'2019-11-11 12:23:00' AS SmallDateTime), NULL, NULL, 1, 6, 2, N'980289090')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1247, N'00469425', N'MARIA PATRICIA', N'CASTAÑOM', N'ROMERO', N'F', 49, CAST(N'2019-11-11 12:27:00' AS SmallDateTime), NULL, NULL, 1, 6, 2, N'952375445')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1248, N'04636894', N'MERCEDES ISIDORA', N'CHAMBILLA', N'HERRERA', N'F', 49, CAST(N'2019-11-11 12:44:00' AS SmallDateTime), CAST(N'2019-11-11 18:50:00' AS SmallDateTime), NULL, 1, 6, 2, N'976513611')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1249, N'46150853', N'LUIDA ROSMERY', N'CHOQUE', N'MAMANI', N'F', 12, CAST(N'2019-11-11 12:46:00' AS SmallDateTime), NULL, NULL, 1, 6, 2, N'980066676')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1250, N'04653542', N'ELSA DOMINGA', N'CONDORI', N'CRUZ', N'F', 10, CAST(N'2019-11-11 12:48:00' AS SmallDateTime), NULL, NULL, 1, 6, 2, N'953656387')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1251, N'41045260', N'KELLY MILDER', N'GUZMAN', N'HERRERA', N'F', 49, CAST(N'2019-11-11 12:53:00' AS SmallDateTime), CAST(N'2019-11-11 13:13:00' AS SmallDateTime), NULL, 1, 6, 2, N'987800970')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1252, N'40696363', N'ROSMERY', N'GIL', N'SILVESTRE', N'F', 26, CAST(N'2019-11-11 12:54:00' AS SmallDateTime), NULL, NULL, 1, 6, 2, N'994454446')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1253, N'41229992', N'LIZBETH LOURDES', N'HUERTA', N'HUMPIRI', N'F', 12, CAST(N'2019-11-11 12:55:00' AS SmallDateTime), NULL, NULL, 1, 6, 2, N'952516075')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1254, N'45554323', N'KADDYEE YENMMY', N'MARAZO', N'AGUILAR', N'F', 2, CAST(N'2019-11-11 13:01:00' AS SmallDateTime), NULL, NULL, 1, 6, 2, N'952524752')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1255, N'45922224', N'EDWIN FREDDY', N'MARON', N'CAMPOS', N'F', 2, CAST(N'2019-11-11 13:02:00' AS SmallDateTime), NULL, NULL, 1, 6, 2, N'995010097')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1256, N'00416815', N'ELSA AGUSTINA', N'NINAJA DE PACO', N'-', N'F', 49, CAST(N'2019-11-11 13:09:00' AS SmallDateTime), NULL, NULL, 1, 6, 2, N'952696828')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1257, N'42185246', N'HAYDEE OTILIA', N'OROCOLLO', N'JAMACHI', N'F', 12, CAST(N'2019-11-11 13:12:00' AS SmallDateTime), NULL, NULL, 1, 6, 2, N'952252006')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1258, N'42873196', N'YULY SANDY', N'PALMA', N'GUTIERREZ', N'F', 2, CAST(N'2019-11-11 13:24:00' AS SmallDateTime), NULL, NULL, 1, 6, 2, N'954069525')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1259, N'70318789', N'DAYANA XIOMARA', N'PARIA', N'MELENDEZ', N'F', 26, CAST(N'2019-11-11 13:25:00' AS SmallDateTime), NULL, NULL, 1, 6, 2, N'913417208')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1260, N'41486574', N'LIDIA MAGALY', N'RIVERA', N'CHOQUECOTA', N'F', 49, CAST(N'2019-11-11 13:26:00' AS SmallDateTime), NULL, NULL, 1, 6, 2, N'952861301')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1261, N'42847202', N'CINTHIA GLADYZ', N'SAMILLAN', N'MAMANI', N'F', 50, CAST(N'2019-11-11 13:28:00' AS SmallDateTime), NULL, NULL, 1, 6, 2, N'971740155')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1262, N'41411089', N'MIRIAM DAYSI', N'SANTOS ', N'CUTIPA', N'F', 26, CAST(N'2019-11-11 16:42:00' AS SmallDateTime), NULL, NULL, 1, 6, 2, N'952812040')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1263, N'42421702', N'MARIA ELENA', N'TITO ', N'COAQUIRA', N'F', 50, CAST(N'2019-11-11 16:44:00' AS SmallDateTime), NULL, NULL, 1, 6, 2, N'990136156')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1264, N'46381460', N'LUIS ALBAN', N'TURPO', N'MAMANI', N'M', 2, CAST(N'2019-11-11 16:45:00' AS SmallDateTime), NULL, NULL, 1, 6, 2, N'953651695')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1265, N'44500289', N'LINDSEY JOHANY', N'VALDIVIA', N'REYES', N'M', 2, CAST(N'2019-11-11 16:47:00' AS SmallDateTime), NULL, NULL, 1, 6, 2, N'924776345')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1266, N'46220487', N'LIESEL', N'VARGAS', N'POMA', N'F', 12, CAST(N'2019-11-11 16:52:00' AS SmallDateTime), NULL, NULL, 1, 6, 2, N'952826663')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1267, N'416847', N'GEORGINA ELIZABETH', N'VELANDO', N'SAAVEDRA', N'F', 2, CAST(N'2019-11-11 18:01:00' AS SmallDateTime), NULL, NULL, 1, 6, 2, N'991949307')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1268, N'40912054', N'LOURDES DE JESUS', N'VERA', N'MAQUERA DE BALTA', N'F', 12, CAST(N'2019-11-11 18:06:00' AS SmallDateTime), CAST(N'2019-11-11 19:31:00' AS SmallDateTime), NULL, 1, 6, 2, N'988179366')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1269, N'47249854', N'OSCAR ENRIQUE', N'VILCA', N'QUISPE', N'M', 51, CAST(N'2019-11-11 18:09:00' AS SmallDateTime), NULL, NULL, 1, 6, 2, N'991877310')
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona], [telefono]) VALUES (1270, N'43172873', N'YENNY LIDIA', N'ZEGARRA', N'ZEGARRA', N'F', 12, CAST(N'2019-11-11 18:10:00' AS SmallDateTime), NULL, NULL, 1, 6, 2, N'952867930')
SET IDENTITY_INSERT [dbo].[Persona] OFF
SET IDENTITY_INSERT [dbo].[Rol] ON 

INSERT [dbo].[Rol] ([idRol], [Nombre]) VALUES (1, N'ADMINISTRADOR')
INSERT [dbo].[Rol] ([idRol], [Nombre]) VALUES (2, N'ADMINISTRATIVO')
INSERT [dbo].[Rol] ([idRol], [Nombre]) VALUES (3, N'ASISTENTE')
INSERT [dbo].[Rol] ([idRol], [Nombre]) VALUES (4, N'ENFERMERA')
INSERT [dbo].[Rol] ([idRol], [Nombre]) VALUES (5, N'HPGESTOR')
INSERT [dbo].[Rol] ([idRol], [Nombre]) VALUES (6, N'CVGESTOR')
INSERT [dbo].[Rol] ([idRol], [Nombre]) VALUES (7, N'VGESTOR')
SET IDENTITY_INSERT [dbo].[Rol] OFF
INSERT [dbo].[sl_CODIGO] ([codigo], [form], [operacion]) VALUES (N'ANPA1016', 60, N'p')
INSERT [dbo].[sl_CODIGO] ([codigo], [form], [operacion]) VALUES (N'ANPA1037', 50, N's')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'HEMATOLOGIA', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'INFERTILIDAD', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'FARMACIA', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'RADIOLOGIA', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'MASOTERAPIA', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'OZONOTERAPIA', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'MEDICINA DE ENFERMEDADES INFECCIOSAS Y TROPICALES', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'NEUROLOGIA', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'NEFROLOGIA', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'TRAUMATOLOGIA Y ORTOPEDIA', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'MEDICINA FISICA Y REHABILITACION', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'CIRUGIA DE CABEZA Y CUELLO', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'HOSPITALIZACION', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'OTORRINOLARINGOLOGIA', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'CIRUGIA PLASTICA Y REPARADORA', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'PSICOLOGIA', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'REUMATOLOGIA', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'NEUMOLOGIA', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'MEDICINA INTERNA', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'OFTALMOLOGIA', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'DERMATOLOGIA', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'PODOLOGIA', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'ANATOMIA PATOLOGICA', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'CIRUGIA GENERAL', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'ODONTOLOGIA', 70, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'CIRUGIA ONCOLOGICA', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'NUTRICION', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'GINECOLOGIA - OBSTETRICA', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'LABORATORIO CLINICO', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'INMUNOLOGIA Y ALERGIA', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'ANESTESIOLOGIA', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'MAMOGRAFIA', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'PEDIATRIA', 70, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'ENDOCRINOLOGIA', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'MEDICINA GENERAL', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'CIRUGIA DE TÓRAX Y CARDIOVASCULAR', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'UROLOGIA', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'CAFETERIA', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'SOP', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'PSIQUIATRIA', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'GASTROENTEROLOGIA', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'NEUROCIRUGIA', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'DENSITROMETRIA OSEA', 65, N'p', N'q')
INSERT [dbo].[sl_ESPECIALIDAD] ([nombre], [form], [operacion], [razonsocial]) VALUES (N'CARDIOLOGIA', 65, N'p', N'q')
SET IDENTITY_INSERT [dbo].[sl_PAQUETE] ON 

INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (2, N'PAVA1022', N'PEDIATRIA', CAST(28.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (3, N'PAVA1022', N'NUTRICION', CAST(28.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (4, N'PAVA1022', N'ODONTOLOGIA', CAST(5.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (5, N'PAVA1022', N'LABORATORIO CLINICO', CAST(40.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (6, N'PAVA1023', N'PEDIATRIA', CAST(28.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (7, N'PAVA1023', N'NUTRICION', CAST(28.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (8, N'PAVA1023', N'ODONTOLOGIA', CAST(5.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (9, N'PAVA1023', N'LABORATORIO CLINICO', CAST(104.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (10, N'PAVA1021', N'PEDIATRIA', CAST(28.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (11, N'PAVA1021', N'NUTRICION', CAST(28.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (12, N'PAVA1021', N'ODONTOLOGIA', CAST(5.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (13, N'PAVA1021', N'LABORATORIO CLINICO', CAST(196.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (14, N'PAVA1025', N'MEDICINA GENERAL', CAST(28.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (15, N'PAVA1025', N'ODONTOLOGIA', CAST(5.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (16, N'PAVA1025', N'LABORATORIO CLINICO', CAST(67.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (17, N'PAVA1025', N'RADIOLOGIA', CAST(77.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (18, N'PAVA1025', N'EMERGENCIA', CAST(36.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (19, N'PAVA1025', N'GINECOLOGIA - OBSTETRICA', CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (20, N'PAVA1025', N'ANATOMIA PATOLOGICA', CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (21, N'PAVA 1017', N'MEDICINA GENERAL', CAST(28.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (22, N'PAVA 1017', N'ODONTOLOGIA', CAST(5.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (23, N'PAVA 1017', N'LABORATORIO CLINICO', CAST(92.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (24, N'PAVA 1017', N'RADIOLOGIA', CAST(77.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (25, N'PAVA 1017', N'EMERGENCIA', CAST(36.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (26, N'PAVA 1017', N'GINECOLOGIA - OBSTETRICA', CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (27, N'PAVA 1017', N'ANATOMIA PATOLOGICA', CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (28, N'PAVA1019', N'MEDICINA GENERAL', CAST(28.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (29, N'PAVA1019', N'ODONTOLOGIA', CAST(5.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (30, N'PAVA1019', N'LABORATORIO CLINICO', CAST(137.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (31, N'PAVA1019', N'RADIOLOGIA', CAST(77.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (32, N'PAVA1019', N'EMERGENCIA', CAST(36.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (33, N'PAVA1019', N'GINECOLOGIA - OBSTETRICA', CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (34, N'PAVA1019', N'ANATOMIA PATOLOGICA', CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (36, N'PAVA1024', N'MEDICINA GENERAL', CAST(28.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (37, N'PAVA1024', N'ODONTOLOGIA', CAST(5.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (38, N'PAVA1024', N'LABORATORIO CLINICO', CAST(67.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (39, N'PAVA1024', N'RADIOLOGIA', CAST(77.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (40, N'PAVA1024', N'EMERGENCIA', CAST(36.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (41, N'PAVA1024', N'GINECOLOGIA - OBSTETRICA', CAST(48.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (42, N'PAVA1024', N'ANATOMIA PATOLOGICA', CAST(12.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (43, N'PAVA1018', N'MEDICINA GENERAL', CAST(28.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (44, N'PAVA1018', N'ODONTOLOGIA', CAST(5.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (45, N'PAVA1018', N'LABORATORIO CLINICO', CAST(67.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (46, N'PAVA1018', N'RADIOLOGIA', CAST(77.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (47, N'PAVA1018', N'EMERGENCIA', CAST(36.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (48, N'PAVA1018', N'GINECOLOGIA - OBSTETRICA', CAST(48.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (49, N'PAVA1018', N'ANATOMIA PATOLOGICA', CAST(12.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (50, N'PAVA1018', N'MAMOGRAFIA', CAST(96.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (51, N'PAVA1020', N'MEDICINA GENERAL', CAST(28.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (52, N'PAVA1020', N'ODONTOLOGIA', CAST(5.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (53, N'PAVA1020', N'LABORATORIO CLINICO', CAST(138.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (54, N'PAVA1020', N'RADIOLOGIA', CAST(77.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (55, N'PAVA1020', N'EMERGENCIA', CAST(36.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (56, N'PAVA1020', N'GINECOLOGIA - OBSTETRICA', CAST(48.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (57, N'PAVA1020', N'ANATOMIA PATOLOGICA', CAST(12.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (58, N'PAVA1020', N'MAMOGRAFIA', CAST(96.00 AS Decimal(10, 2)))
INSERT [dbo].[sl_PAQUETE] ([idCodigo], [codigo], [especialidad], [precio]) VALUES (59, N'PAVA1020', N'DENSITROMETRIA OSEA', CAST(64.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[sl_PAQUETE] OFF
SET IDENTITY_INSERT [dbo].[Tipo_Persona] ON 

INSERT [dbo].[Tipo_Persona] ([id_tipo_persona], [nombre]) VALUES (1, N'MEDICO    ')
INSERT [dbo].[Tipo_Persona] ([id_tipo_persona], [nombre]) VALUES (2, N'ENFERMERA/O ')
INSERT [dbo].[Tipo_Persona] ([id_tipo_persona], [nombre]) VALUES (6, N'ADMINISTRATIVO')
SET IDENTITY_INSERT [dbo].[Tipo_Persona] OFF
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1, 1, N'admin', N'e10adc3949ba59abbe56e057f20f883e', N'LUIS', N'....', 1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (4, 5, N'GCORDOVA', N'e10adc3949ba59abbe56e057f20f883e', N'GISELLA', N'....', 1, NULL, NULL, NULL, NULL, 1044)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (5, 6, N'FMENDOZA', N'e10adc3949ba59abbe56e057f20f883e', N'FABIOLA', N'....', 1, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (10, 7, N'DCALIZAYA', N'e10adc3949ba59abbe56e057f20f883e', N'DIEGO', N'....', 1, NULL, NULL, NULL, NULL, 1043)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (11, 1, N'HDENIS', N'e10adc3949ba59abbe56e057f20f883e', N'DENIS', N'...', 1, NULL, NULL, NULL, NULL, 1216)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1020, 7, N'GISIDRO', N'e10adc3949ba59abbe56e057f20f883e', N'ISIDRO CATACORA ,ISIDRO', N'...', 1, 0, NULL, NULL, NULL, 1237)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1021, 7, N'MZEPITA', N'e10adc3949ba59abbe56e057f20f883e', N'ZEPITA CHURA ,MERCEDES', N'...', 1, 0, NULL, NULL, NULL, 1238)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1022, 4, N'SABURTO', N'e10adc3949ba59abbe56e057f20f883e', N'ABURTO QUISPE ,SUSAN GRETA', N'...', 1, 0, NULL, NULL, NULL, 1239)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1023, 4, N'MALARCON', N'e10adc3949ba59abbe56e057f20f883e', N'ALARCÓN PORTUGAL ,MARCOS', N'...', 1, 0, NULL, NULL, NULL, 1240)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1024, 4, N'EANCALLA', N'e10adc3949ba59abbe56e057f20f883e', N'ANCALLA MAMANI ,EDIT ROSALIA', N'...', 1, 0, NULL, NULL, NULL, 1241)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1025, 4, N'LASCONA', N'e10adc3949ba59abbe56e057f20f883e', N'ASCONA GAMEZ ,LADY ENMA', N'...', 1, 0, NULL, NULL, NULL, 1243)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1026, 4, N'RARAUJO', N'e10adc3949ba59abbe56e057f20f883e', N'ARAUJO NINA ,ROSA LUZ', N'...', 1, 0, NULL, NULL, NULL, 1242)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1027, 4, N'ACAIMANQUE', N'e10adc3949ba59abbe56e057f20f883e', N'CAIMANQUE GARCIA ,ANA YEMILE DEL ROSARIO', N'...', 1, 0, NULL, NULL, NULL, 1244)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1028, 4, N'CCALLO', N'e10adc3949ba59abbe56e057f20f883e', N'CALLO QUENTA ,CINTYA JACKELIN', N'...', 1, 0, NULL, NULL, NULL, 1245)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1029, 4, N'ACANDELA', N'e10adc3949ba59abbe56e057f20f883e', N'CANDELA NAJAR ,ANGES ARMILDA', N'...', 1, 0, NULL, NULL, NULL, 1246)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1030, 4, N'MCASTAÑOM', N'e10adc3949ba59abbe56e057f20f883e', N'CASTAÑOM ROMERO ,MARIA PATRICIA', N'...', 1, 0, NULL, NULL, NULL, 1247)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1031, 4, N'MCHAMBILLA', N'e10adc3949ba59abbe56e057f20f883e', N'CAMBILLA HERRERA ,MERCEDES ISIDORA', N'...', 1, 0, NULL, NULL, NULL, 1248)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1032, 4, N'LCHOQUE', N'e10adc3949ba59abbe56e057f20f883e', N'CHOQUE MAMANI ,LUIDA ROSMERY', N'...', 1, 0, NULL, NULL, NULL, 1249)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1033, 4, N'ECONDORI', N'e10adc3949ba59abbe56e057f20f883e', N'CONDORI CRUZ ,ELSA DOMINGA', N'...', 1, 0, NULL, NULL, NULL, 1250)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1034, 4, N'RGIL', N'e10adc3949ba59abbe56e057f20f883e', N'GIL SILVESTRE ,ROSMERY', N'...', 1, 0, NULL, NULL, NULL, 1252)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1035, 4, N'KGUZMAN', N'e10adc3949ba59abbe56e057f20f883e', N'GUZMAN HERRERA ,KELLY MILDER', N'...', 1, 0, NULL, NULL, NULL, 1251)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1036, 4, N'LHUERTA', N'e10adc3949ba59abbe56e057f20f883e', N'HUERTA HUMPIRI ,LIZBETH LOURDES', N'...', 1, 0, NULL, NULL, NULL, 1253)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1037, 4, N'KMARAZO', N'e10adc3949ba59abbe56e057f20f883e', N'MARAZO AGUILAR ,KADDYEE YENMMY', N'...', 1, 0, NULL, NULL, NULL, 1254)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1038, 4, N'EMARON', N'e10adc3949ba59abbe56e057f20f883e', N'MARON CAMPOS ,EDWIN FREDDY', N'...', 1, 0, NULL, NULL, NULL, 1255)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1039, 4, N'ENINAJA', N'e10adc3949ba59abbe56e057f20f883e', N'NINAJA DE PACO - ,ELSA AGUSTINA', N'...', 1, 0, NULL, NULL, NULL, 1256)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1040, 4, N'HOROCOLLO', N'e10adc3949ba59abbe56e057f20f883e', N'OROCOLLO JAMACHI ,HAYDEE OTILIA', N'...', 1, 0, NULL, NULL, NULL, 1257)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1041, 4, N'YPALMA', N'e10adc3949ba59abbe56e057f20f883e', N'PALMA GUTIERREZ ,YULY SANDY', N'...', 1, 0, NULL, NULL, NULL, 1258)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1042, 4, N'DPARIA', N'e10adc3949ba59abbe56e057f20f883e', N'PARIA MELENDEZ ,DAYANA XIOMARA', N'...', 1, 0, NULL, NULL, NULL, 1259)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1043, 4, N'LRIVERA', N'e10adc3949ba59abbe56e057f20f883e', N'RIVERA CHOQUECOTA ,LIDIA MAGALY', N'...', 1, 0, NULL, NULL, NULL, 1260)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1044, 4, N'CSAMILLAN', N'e10adc3949ba59abbe56e057f20f883e', N'SAMILLAN MAMANI ,CINTHIA GLADYZ', N'...', 1, 0, NULL, NULL, NULL, 1261)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1045, 4, N'MSANTOS', N'e10adc3949ba59abbe56e057f20f883e', N'SANTOS  CUTIPA ,MIRIAM DAYSI', N'...', 1, 0, NULL, NULL, NULL, 1262)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1046, 4, N'MTITO', N'e10adc3949ba59abbe56e057f20f883e', N'TITO  COAQUIRA ,MARIA ELENA', N'...', 1, 0, NULL, NULL, NULL, 1263)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1047, 4, N'LTURPO', N'e10adc3949ba59abbe56e057f20f883e', N'TURPO MAMANI ,LUIS ALBAN', N'...', 1, 0, NULL, NULL, NULL, 1264)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1048, 4, N'LVALDIVIA', N'e10adc3949ba59abbe56e057f20f883e', N'VALDIVIA REYES ,LINDSEY JOHANY', N'...', 1, 0, NULL, NULL, NULL, 1265)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1049, 4, N'LVARGAS', N'e10adc3949ba59abbe56e057f20f883e', N'VARGAS POMA ,LIESEL', N'...', 1, 0, NULL, NULL, NULL, 1266)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1050, 4, N'GVELANDO', N'e10adc3949ba59abbe56e057f20f883e', N'VELANDO SAAVEDRA ,GEORGINA ELIZABETH', N'...', 1, 0, NULL, NULL, NULL, 1267)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1051, 4, N'LVERA', N'e10adc3949ba59abbe56e057f20f883e', N'VERA MAQUERA DE BALTA ,LOURDES DE JESUS', N'...', 1, 0, NULL, NULL, NULL, 1268)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1052, 4, N'OVILCA', N'e10adc3949ba59abbe56e057f20f883e', N'VILCA QUISPE ,OSCAR ENRIQUE', N'...', 1, 0, NULL, NULL, NULL, 1269)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1053, 4, N'YZEGARRA', N'e10adc3949ba59abbe56e057f20f883e', N'ZEGARRA ZEGARRA ,YENNY LIDIA', N'...', 1, 0, NULL, NULL, NULL, 1270)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Area_listarArea]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_CAMPANA_insertarNuevaCampana]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_clinica_CAMPANA_listarCampanasActivas]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_clinica_CAMPANA_listarCampanasGestion]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_CAMPANA_modificarImagenCampana]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_CAMPANA_modificarInfoCampana]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Especializacion_ListarEspecializacion]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_HOJA1_listarEspecialidades]    Script Date: 26/12/2019 16:09:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_HOJA1_listarEspecialidades]
	
AS
BEGIN
	SELECT ESPECIALIDAD FROM HOJA1
	GROUP BY ESPECIALIDAD
END

GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_HOJA1_listarLiquidacion]    Script Date: 26/12/2019 16:09:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_HOJA1_listarLiquidacion] 
	@especialidad varchar(250)
AS
BEGIN
	

			DECLARE @FILTRO1 TABLE (
			PRODUCTO VARCHAR(250),
			CODIGO VARCHAR(250),
			CANTIDAD INT,
			--PRECIOPROM FLOAT,
			PRECIO FLOAT,
			ESPECIALIDAD VARCHAR(250),
			MEDICO VARCHAR(250)


		)

		DECLARE @FILTRO2 TABLE (
			PRODUCTO VARCHAR(250),
	
			PRECIO FLOAT,
			CANTIDAD INT,
			--PRECIOPROM FLOAT,
	
			ESPECIALIDAD VARCHAR(250),
			CODIGO VARCHAR(250)
	


		)
		INSERT @FILTRO1
		SELECT 
		H.PRODUCTO,
		H.CODIGO,
		H.CANTIDAD,
		ROUND(H.PRECIOPROM,2,0) AS PRECIOPROM,
		--ROUND(H.VEN_CIGV,2,0) AS PRECIO,
		H.ESPECIALIDAD,
		H.MEDICO

		FROM HOJA1 AS H WHERE H.ESPECIALIDAD != 'FARMACIA' AND H.ESPECIALIDAD != 'CAFETERIA' AND H.ESPECIALIDAD=@especialidad
		ORDER BY H.ESPECIALIDAD ,  H. PRODUCTO

		/*
		SELECT COUNT(H.PRECIO)AS PRECIO ,H.PRECIO ,H.PRODUCTO , H.ESPECIALIDAD , H.CODIGO FROM @FILTRO1 AS H
		GROUP BY H.PRECIO, H.ESPECIALIDAD ,h.PRODUCTO , h.PRECIO , H.CODIGO
		ORDER BY H.ESPECIALIDAD , H.CODIGO
		*/


		INSERT @FILTRO2

		SELECT H.PRODUCTO,H.PRECIO , SUM(CANTIDAD) AS CANTIDAD ,H.ESPECIALIDAD ,H.CODIGO   FROM @FILTRO1 AS H
		GROUP BY H.PRECIO , CANTIDAD, H.ESPECIALIDAD ,H.CODIGO,H.PRODUCTO
		ORDER BY H.ESPECIALIDAD , H.CODIGO



		SELECT 

		H.PRODUCTO , SUM(H.CANTIDAD) AS CANTIDAD , PRECIO,SUM(H.CANTIDAD)*H.PRECIO AS TOTAL, H.ESPECIALIDAD,H.CODIGO

		FROM @FILTRO2 AS H
		GROUP BY H.PRODUCTO , H.ESPECIALIDAD,PRECIO,H.CODIGO

		ORDER BY ESPECIALIDAD 





END

GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Horario_HoraSumaRestaServidor]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Horario_insertarHorario]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Horario_listarHorarioHoy]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Horario_listarHorarioNum]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Horario_listarHorarioPorArea]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Horario_modificarEstado]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Horario_verificarExistenciaHorario]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_horaServidor]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_listarReporteTurnoConsolidado]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Log_ActualizarTurno]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Log_ActualizarTurno2]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Log_BuscarPersonaPorId]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Log_buscarRegistro]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Log_insertarNuevoTurno]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Log_listarReporteTurno]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Log_listarTurno]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Log_listarTurno2]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Log_verificarTurnoPendiente]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Login_insertar]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Permisos_agregarPermisosModulosPorRol]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Permisos_eliminarPermisosModulosPorRol]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Permisos_listarPermisosModulosPorRol]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_buscarPersonaPorDni]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_eliminarPersona]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_insertarNuevaPersona]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_listaPersonaAgregadaEnHorario]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_listarEnfermeras]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_ListarPersonaParaHorario]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_listarPersonaPorIdArea]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_listarTodasLasPersonas]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_modificarPersona]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Rol_listarRol]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_sl_ESPECIALIDAD_listarLiquidacionCodigo]    Script Date: 26/12/2019 16:09:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_sl_ESPECIALIDAD_listarLiquidacionCodigo]

AS
BEGIN
	SELECT * FROM sl_CODIGO
END

GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_sl_ESPECIALIDAD_listarLiquidacionCodigoPaquete]    Script Date: 26/12/2019 16:09:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_sl_ESPECIALIDAD_listarLiquidacionCodigoPaquete] 
	@especialidad VARCHAR(300)
AS
BEGIN
	SELECT
		sp.idCodigo,
		sp.codigo,
		sp.especialidad,
		sp.precio
	FROM
		sl_PAQUETE AS sp
	WHERE sp.especialidad = @especialidad
END

GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_sl_ESPECIALIDAD_listarLiquidacionEspecialidad]    Script Date: 26/12/2019 16:09:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_sl_ESPECIALIDAD_listarLiquidacionEspecialidad]

AS
BEGIN
	SELECT * FROM sl_ESPECIALIDAD
END

GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_TipoPersona_ListarTipoPersona]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Usuario_BuscarUsuarioContrasena]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Usuario_insertarUsuario]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Usuario_ListarPersonaSinUsuario]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Usuario_listarUsuario]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Usuario_permisoModulo]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Usuario_verificarExistenciaUsuario]    Script Date: 26/12/2019 16:09:37 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Usuario_verificarUsuario]    Script Date: 26/12/2019 16:09:37 ******/
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
