USE [clinica]
GO
/****** Object:  Table [dbo].[Area]    Script Date: 28/09/2019 12:04:51 ******/
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
/****** Object:  Table [dbo].[Especializacion]    Script Date: 28/09/2019 12:04:51 ******/
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
/****** Object:  Table [dbo].[Horario]    Script Date: 28/09/2019 12:04:51 ******/
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
/****** Object:  Table [dbo].[Modulos]    Script Date: 28/09/2019 12:04:51 ******/
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
/****** Object:  Table [dbo].[ModulosPermisos]    Script Date: 28/09/2019 12:04:51 ******/
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
/****** Object:  Table [dbo].[Persona]    Script Date: 28/09/2019 12:04:51 ******/
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
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[id_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 28/09/2019 12:04:51 ******/
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
/****** Object:  Table [dbo].[Tipo_Persona]    Script Date: 28/09/2019 12:04:51 ******/
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
/****** Object:  Table [dbo].[Usuario]    Script Date: 28/09/2019 12:04:51 ******/
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
	[ApePat] [varchar](250) NULL,
	[ApeMat] [varchar](250) NULL,
	[Dni] [varchar](250) NULL,
	[Avatar] [varchar](250) NULL,
	[Estado] [int] NULL,
	[CambioContrasena] [int] NULL,
	[Ip] [varchar](50) NULL,
	[Mac] [varbinary](250) NULL,
	[Navegador] [varbinary](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
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
SET IDENTITY_INSERT [dbo].[Area] OFF
SET IDENTITY_INSERT [dbo].[Especializacion] ON 

INSERT [dbo].[Especializacion] ([id_especializacion], [Nombre], [Fecha_insercion], [Fecha_modificacion], [Fecha_eliminacion], [Estado]) VALUES (1, N'ANGIOLOGIA', NULL, NULL, NULL, 1)
INSERT [dbo].[Especializacion] ([id_especializacion], [Nombre], [Fecha_insercion], [Fecha_modificacion], [Fecha_eliminacion], [Estado]) VALUES (2, N'DERMATOLOGÍA', NULL, NULL, NULL, 1)
INSERT [dbo].[Especializacion] ([id_especializacion], [Nombre], [Fecha_insercion], [Fecha_modificacion], [Fecha_eliminacion], [Estado]) VALUES (3, N'OFTALMOLOGÍA', NULL, NULL, NULL, 1)
INSERT [dbo].[Especializacion] ([id_especializacion], [Nombre], [Fecha_insercion], [Fecha_modificacion], [Fecha_eliminacion], [Estado]) VALUES (4, N'UROLOGÍA', NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Especializacion] OFF
SET IDENTITY_INSERT [dbo].[Horario] ON 

INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1615, CAST(N'2019-09-24T07:00:00.000' AS DateTime), CAST(N'2019-09-24T12:00:00.000' AS DateTime), NULL, 35, 10, NULL, N'#28a745', CAST(N'2019-09-24T10:40:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1616, CAST(N'2019-09-25T07:00:00.000' AS DateTime), CAST(N'2019-09-25T12:00:00.000' AS DateTime), NULL, 35, 10, NULL, N'#28a745', CAST(N'2019-09-24T10:40:00' AS SmallDateTime), NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1617, CAST(N'2019-09-26T07:00:00.000' AS DateTime), CAST(N'2019-09-26T12:00:00.000' AS DateTime), NULL, 35, 10, NULL, N'#28a745', CAST(N'2019-09-24T10:40:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1618, CAST(N'2019-09-27T07:00:00.000' AS DateTime), CAST(N'2019-09-27T12:00:00.000' AS DateTime), NULL, 35, 10, NULL, N'#28a745', CAST(N'2019-09-24T10:40:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1619, CAST(N'2019-09-28T07:00:00.000' AS DateTime), CAST(N'2019-09-28T12:00:00.000' AS DateTime), NULL, 35, 10, NULL, N'#28a745', CAST(N'2019-09-24T10:40:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1620, CAST(N'2019-09-29T07:00:00.000' AS DateTime), CAST(N'2019-09-29T12:00:00.000' AS DateTime), NULL, 35, 10, NULL, N'#28a745', CAST(N'2019-09-24T10:40:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1621, CAST(N'2019-09-30T07:00:00.000' AS DateTime), CAST(N'2019-09-30T12:00:00.000' AS DateTime), NULL, 35, 10, NULL, N'#28a745', CAST(N'2019-09-24T10:40:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1629, CAST(N'2019-09-24T14:00:00.000' AS DateTime), CAST(N'2019-09-24T19:00:00.000' AS DateTime), NULL, 14, 14, NULL, N'#ffc107', CAST(N'2019-09-24T10:50:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1630, CAST(N'2019-09-25T14:00:00.000' AS DateTime), CAST(N'2019-09-25T19:00:00.000' AS DateTime), NULL, 14, 14, NULL, N'#ffc107', CAST(N'2019-09-24T10:50:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1631, CAST(N'2019-09-26T14:00:00.000' AS DateTime), CAST(N'2019-09-26T19:00:00.000' AS DateTime), NULL, 14, 14, NULL, N'#ffc107', CAST(N'2019-09-24T10:50:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1632, CAST(N'2019-09-27T14:00:00.000' AS DateTime), CAST(N'2019-09-27T19:00:00.000' AS DateTime), NULL, 14, 14, NULL, N'#ffc107', CAST(N'2019-09-24T10:50:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1633, CAST(N'2019-09-28T14:00:00.000' AS DateTime), CAST(N'2019-09-28T19:00:00.000' AS DateTime), NULL, 14, 14, NULL, N'#ffc107', CAST(N'2019-09-24T10:50:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1634, CAST(N'2019-09-29T14:00:00.000' AS DateTime), CAST(N'2019-09-29T19:00:00.000' AS DateTime), NULL, 14, 14, NULL, N'#ffc107', CAST(N'2019-09-24T10:50:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1635, CAST(N'2019-09-30T14:00:00.000' AS DateTime), CAST(N'2019-09-30T19:00:00.000' AS DateTime), NULL, 14, 14, NULL, N'#ffc107', CAST(N'2019-09-24T10:50:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1636, CAST(N'2019-09-24T20:00:00.000' AS DateTime), CAST(N'2019-09-25T06:00:00.000' AS DateTime), NULL, 29, 14, NULL, N'#007bff', CAST(N'2019-09-24T10:51:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1637, CAST(N'2019-09-25T20:00:00.000' AS DateTime), CAST(N'2019-09-26T06:00:00.000' AS DateTime), NULL, 29, 14, NULL, N'#007bff', CAST(N'2019-09-24T10:51:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1638, CAST(N'2019-09-26T20:00:00.000' AS DateTime), CAST(N'2019-09-27T06:00:00.000' AS DateTime), NULL, 29, 14, NULL, N'#007bff', CAST(N'2019-09-24T10:51:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1639, CAST(N'2019-09-27T20:00:00.000' AS DateTime), CAST(N'2019-09-28T06:00:00.000' AS DateTime), NULL, 29, 14, NULL, N'#007bff', CAST(N'2019-09-24T10:51:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1640, CAST(N'2019-09-28T20:00:00.000' AS DateTime), CAST(N'2019-09-29T06:00:00.000' AS DateTime), NULL, 29, 14, NULL, N'#007bff', CAST(N'2019-09-24T10:51:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1641, CAST(N'2019-09-29T20:00:00.000' AS DateTime), CAST(N'2019-09-30T06:00:00.000' AS DateTime), NULL, 29, 14, NULL, N'#007bff', CAST(N'2019-09-24T10:51:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1642, CAST(N'2019-09-30T20:00:00.000' AS DateTime), CAST(N'2019-10-01T06:00:00.000' AS DateTime), NULL, 29, 14, NULL, N'#007bff', CAST(N'2019-09-24T10:51:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1643, CAST(N'2019-09-24T07:00:00.000' AS DateTime), CAST(N'2019-09-24T12:00:00.000' AS DateTime), NULL, 18, 14, NULL, N'#28a745', CAST(N'2019-09-24T15:10:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1644, CAST(N'2019-09-25T07:00:00.000' AS DateTime), CAST(N'2019-09-25T12:00:00.000' AS DateTime), NULL, 18, 14, NULL, N'#28a745', CAST(N'2019-09-24T15:10:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1645, CAST(N'2019-09-26T07:00:00.000' AS DateTime), CAST(N'2019-09-26T12:00:00.000' AS DateTime), NULL, 18, 14, NULL, N'#28a745', CAST(N'2019-09-24T15:10:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1646, CAST(N'2019-09-27T07:00:00.000' AS DateTime), CAST(N'2019-09-27T12:00:00.000' AS DateTime), NULL, 18, 14, NULL, N'#28a745', CAST(N'2019-09-24T15:10:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1647, CAST(N'2019-09-28T07:00:00.000' AS DateTime), CAST(N'2019-09-28T12:00:00.000' AS DateTime), NULL, 18, 14, NULL, N'#28a745', CAST(N'2019-09-24T15:10:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1648, CAST(N'2019-09-29T07:00:00.000' AS DateTime), CAST(N'2019-09-29T12:00:00.000' AS DateTime), NULL, 18, 14, NULL, N'#28a745', CAST(N'2019-09-24T15:10:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1649, CAST(N'2019-09-30T07:00:00.000' AS DateTime), CAST(N'2019-09-30T12:00:00.000' AS DateTime), NULL, 18, 14, NULL, N'#28a745', CAST(N'2019-09-24T15:10:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1655, CAST(N'2019-09-26T14:00:00.000' AS DateTime), CAST(N'2019-09-26T20:00:00.000' AS DateTime), NULL, 37, 10, NULL, N'#ffc107', CAST(N'2019-09-26T15:03:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1656, CAST(N'2019-09-27T14:00:00.000' AS DateTime), CAST(N'2019-09-27T20:00:00.000' AS DateTime), NULL, 37, 10, NULL, N'#ffc107', CAST(N'2019-09-26T15:03:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1657, CAST(N'2019-09-28T14:00:00.000' AS DateTime), CAST(N'2019-09-28T20:00:00.000' AS DateTime), NULL, 37, 10, NULL, N'#ffc107', CAST(N'2019-09-26T15:03:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1658, CAST(N'2019-09-29T14:00:00.000' AS DateTime), CAST(N'2019-09-29T20:00:00.000' AS DateTime), NULL, 37, 10, NULL, N'#ffc107', CAST(N'2019-09-26T15:03:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1659, CAST(N'2019-09-30T14:00:00.000' AS DateTime), CAST(N'2019-09-30T20:00:00.000' AS DateTime), NULL, 37, 10, NULL, N'#ffc107', CAST(N'2019-09-26T15:03:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (1660, CAST(N'2019-09-26T07:00:00.000' AS DateTime), CAST(N'2019-09-26T12:00:00.000' AS DateTime), NULL, 12, 1, NULL, N'#28a745', CAST(N'2019-09-26T15:09:00' AS SmallDateTime), NULL, 1, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Horario] OFF
SET IDENTITY_INSERT [dbo].[Modulos] ON 

INSERT [dbo].[Modulos] ([idModulos], [Nombre]) VALUES (1, N'HORARIOS')
INSERT [dbo].[Modulos] ([idModulos], [Nombre]) VALUES (2, N'PERSONAL')
INSERT [dbo].[Modulos] ([idModulos], [Nombre]) VALUES (3, N'USUARIOS')
INSERT [dbo].[Modulos] ([idModulos], [Nombre]) VALUES (4, N'VER')
SET IDENTITY_INSERT [dbo].[Modulos] OFF
SET IDENTITY_INSERT [dbo].[ModulosPermisos] ON 

INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (2, 1, 1)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (3, 1, 2)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (4, 1, 3)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (5, 2, 1)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (6, 2, 2)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (7, 3, 4)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (9, 5, 1)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (10, 5, 2)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (11, 6, 1)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (12, 6, 4)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (18, 7, 1)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (19, 7, 4)
SET IDENTITY_INSERT [dbo].[ModulosPermisos] OFF
SET IDENTITY_INSERT [dbo].[Persona] ON 

INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1, N'71391320', N'TEOFILO FERNANDO ', N'QUISPE ', N'CHULLO', N'M', 14, NULL, NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (2, N'71391321', N'YESENIA', N'FLORES', N'CAYRO', N'F', 14, NULL, NULL, NULL, 1, 2, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (3, N'71391322', N'ROCIO DEL PILAR', N'NUÑEZ', N'DELGADO', N'F', 14, NULL, NULL, NULL, 1, 3, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (4, N'71391323', N'JOSE LUIS', N'RODRIGUEZ', N'CUADROS', N'M', 14, NULL, NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (5, N'71391324', N'CARLOS', N'FERNANDEZ', N'CRISOSTO', N'M', 14, NULL, NULL, NULL, 1, 2, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (6, N'71391325', N'EDWIN FELIX ', N'MEDINA', N'CHAMBILLA', N'M', 14, NULL, NULL, NULL, 1, 3, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (7, N'71391326', N'MANUEL RICARDO', N'SANTOS ', N'COAYLA', N'M', 14, NULL, NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (8, N'71391327', N'CESAR', N'BURGOS', N'CHAVEZ', N'F', 10, NULL, NULL, NULL, 1, 2, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (9, N'71391328', N'ANGEL', N'BARDALES', N'SILVA', N'M', 10, NULL, NULL, NULL, 1, 3, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (10, N'71391329', N'EVELIA', N'MAQUEYRA ', N'BARDALES', N'F', 14, NULL, NULL, NULL, 1, 3, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (11, N'71391330', N'WALTER', N'BARRIGA', N'MANRIQUE', N'M', 11, NULL, CAST(N'2019-09-19T08:00:00' AS SmallDateTime), NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (12, N'71391331', N'MARIA DEL CARMEN', N'ZUÑIGA ', N'INFANTAS', N'F', 1, NULL, CAST(N'2019-09-26T15:08:00' AS SmallDateTime), NULL, 1, 2, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (13, N'71391332', N'PEDRO', N'LAGUNA', N'HEREDIA', N'M', 14, NULL, NULL, NULL, 1, 3, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (14, N'71391333', N'GIANINA', N'ASTE', N'ASTE', N'F', 14, NULL, NULL, NULL, 1, 3, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (15, N'81391320', N'FABRICIO', N'GUEVARA', N'VELEZ', N'M', 14, NULL, NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (16, N'81391321', N'MAURO', N'URIBE', N'BADILLO', N'M', 14, NULL, NULL, NULL, 1, 2, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (17, N'81391322', N'MILVIA', N'RAYMONDI ', N'MOLLINEDO', N'F', 14, NULL, NULL, NULL, 1, 3, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (18, N'81391323', N'JUAN JOSE', N'CARPIO', N'CORNEJO', N'M', 14, NULL, NULL, NULL, 1, 2, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (19, N'81391324', N'ALBERTO BALTAZAR', N'CALVO', N'QUIROZ', N'M', 14, NULL, NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (20, N'81391325', N'CESAR', N'MERCADO', N'HERRERA', N'M', 14, NULL, NULL, NULL, 1, 2, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (21, N'81391316', N'ROBERTO', N'ERAS', N'MERCADO', N'M', 14, NULL, NULL, NULL, 1, 3, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (22, N'81391327', N'PERCY', N'MALDONADO', N'MOGROVEJO', N'M', 14, NULL, NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (23, N'81391328', N'CARLOS', N'VELA', N'RIVERA', N'M', 14, NULL, NULL, NULL, 1, 2, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (24, N'81391329', N'LUIS', N'ZENON', N'CERVERA', N'M', 14, NULL, NULL, NULL, 1, 3, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (25, N'91391320', N'NANCY', N'ANGELES', N'VILARROEL', N'F', 14, NULL, NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (26, N'91381321', N'JAIME ALBERTO', N'MALCA', N'MILLA', N'M', 14, NULL, NULL, NULL, 1, 2, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (27, N'91391322', N'ROSMERY', N'GIL', N'SILVESTRE', N'F', 14, NULL, NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (28, N'91391323', N'MIGUEL', N'HUEDA', N'ZALAVETA', N'M', 14, NULL, NULL, NULL, 1, 2, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (29, N'91391324', N'CLAUDIO', N'BONOMINI', N'BONOMINI', N'M', 14, NULL, NULL, NULL, 1, 3, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (30, N'91391325', N'ALEXVIC', N'NIEVES', N'QUERO', N'M', 14, NULL, NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (31, N'91391326', N'LUIS', N'OCROS', N'OCROS', N'M', 14, NULL, NULL, NULL, 1, 2, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (32, N'91391327', N'CESAR', N'CONTRERAS', N'ALMENDE', N'M', 14, NULL, NULL, NULL, 1, 3, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (33, N'91391328', N'EDGAR', N'CARCASI', N'LAURA', N'M', 14, NULL, NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (34, N'91391329', N'WILBER', N'TELLO', N'TELLO', N'M', 10, NULL, NULL, NULL, 0, 2, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (35, N'61391320', N'LUIS', N'GUEVARA', N'GUEVARA', N'M', 10, NULL, CAST(N'2019-09-18T17:09:00' AS SmallDateTime), NULL, 1, 3, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (36, N'61391321', N'WILSON', N'GUZMAN', N'OLIVERA', N'M', 10, NULL, NULL, NULL, 1, 2, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (37, N'61391322', N'PEDRO', N'SAKURAY', N'MONTALO', N'M', 10, NULL, NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (38, N'61391323', N'NADIA DEL PILAR', N'TORRES ', N'ALVALOZ', N'F', 11, NULL, NULL, NULL, 1, 2, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (39, N'61391324', N'DAVID', N'SALVATIERRA', N'GARCIA', N'M', 11, NULL, NULL, NULL, 1, 3, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (40, N'81881329', N'LUIS', N'LANCHIPA', N'CRUZ', N'M', 40, NULL, CAST(N'2019-09-18T17:09:00' AS SmallDateTime), NULL, 1, 3, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (41, N'86491321', N'BAKY', N'SON', N'APEGET', N'M', 2, CAST(N'2019-09-18T13:19:00' AS SmallDateTime), CAST(N'2019-09-18T17:07:00' AS SmallDateTime), NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (42, N'65352114', N'name', N'ape', N'mat', N'M', 7, CAST(N'2019-09-18T18:42:00' AS SmallDateTime), NULL, NULL, 0, 1, 1)
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
SET IDENTITY_INSERT [dbo].[Tipo_Persona] ON 

INSERT [dbo].[Tipo_Persona] ([id_tipo_persona], [nombre]) VALUES (1, N'MEDICO    ')
INSERT [dbo].[Tipo_Persona] ([id_tipo_persona], [nombre]) VALUES (2, N'ENFERMERA ')
INSERT [dbo].[Tipo_Persona] ([id_tipo_persona], [nombre]) VALUES (6, N'ADMINISTRATIVO')
SET IDENTITY_INSERT [dbo].[Tipo_Persona] OFF
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [ApePat], [ApeMat], [Dni], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador]) VALUES (1, 1, N'admin', N'e10adc3949ba59abbe56e057f20f883e', N'LUIS', N'CHAMBILLA', N'LANCHIPA', N'71391320', N'....', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [ApePat], [ApeMat], [Dni], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador]) VALUES (2, 2, N'adm', N'e10adc3949ba59abbe56e057f20f883e', N'SOL', N'MANCILLA', N'CARDENAS', N'95681846', N'....', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [ApePat], [ApeMat], [Dni], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador]) VALUES (3, 3, N'user', N'e10adc3949ba59abbe56e057f20f883e', N'USER', N'USER', N'USER', N'77777777', N'..', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [ApePat], [ApeMat], [Dni], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador]) VALUES (4, 5, N'GCORDOVA', N'e10adc3949ba59abbe56e057f20f883e', N'GISELLA', N'CORDOVA', N'-', N'12345678', N'....', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [ApePat], [ApeMat], [Dni], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador]) VALUES (5, 6, N'FMENDOZA', N'e10adc3949ba59abbe56e057f20f883e', N'FABIOLA', N'MENDOZA', N'-', N'12345679', N'....', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [ApePat], [ApeMat], [Dni], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador]) VALUES (10, 7, N'DCALISAYA', N'e10adc3949ba59abbe56e057f20f883e', N'DIEGO', N'CALISAYA', N'-', N'12345671', N'....', 1, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
ALTER TABLE [dbo].[Area]  WITH CHECK ADD  CONSTRAINT [FK_Area_Persona] FOREIGN KEY([id_persona])
REFERENCES [dbo].[Persona] ([id_persona])
GO
ALTER TABLE [dbo].[Area] CHECK CONSTRAINT [FK_Area_Persona]
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Area_listarArea]    Script Date: 28/09/2019 12:04:51 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Especializacion_ListarEspecializacion]    Script Date: 28/09/2019 12:04:51 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Horario_insertarHorario]    Script Date: 28/09/2019 12:04:51 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Horario_listarHorarioHoy]    Script Date: 28/09/2019 12:04:51 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Horario_listarHorarioNum]    Script Date: 28/09/2019 12:04:51 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Horario_listarHorarioPorArea]    Script Date: 28/09/2019 12:04:51 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Horario_modificarEstado]    Script Date: 28/09/2019 12:04:51 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Horario_verificarExistenciaHorario]    Script Date: 28/09/2019 12:04:51 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Permisos_agregarPermisosModulosPorRol]    Script Date: 28/09/2019 12:04:51 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Permisos_eliminarPermisosModulosPorRol]    Script Date: 28/09/2019 12:04:51 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Permisos_listarPermisosModulosPorRol]    Script Date: 28/09/2019 12:04:51 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_buscarPersonaPorDni]    Script Date: 28/09/2019 12:04:51 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_eliminarPersona]    Script Date: 28/09/2019 12:04:51 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_insertarNuevaPersona]    Script Date: 28/09/2019 12:04:51 ******/
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
	@estado int
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
	id_tipo_persona
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
	@id_selectTipoPersona
)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_listaPersonaAgregadaEnHorario]    Script Date: 28/09/2019 12:04:51 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_ListarPersonaParaHorario]    Script Date: 28/09/2019 12:04:51 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_listarPersonaPorIdArea]    Script Date: 28/09/2019 12:04:51 ******/
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
	es.Nombre as espe_Nombre
	from Persona as pe


	inner join Area as ar on ar.id_area = pe.id_area
	inner join Tipo_Persona as tp on tp.id_tipo_persona = pe.id_tipo_persona
	inner join Especializacion as es on es.id_especializacion = pe.id_especializacion

	where pe.Estado = 1 and ar.id_area=@id_are
	 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_modificarPersona]    Script Date: 28/09/2019 12:04:51 ******/
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
	@estado int
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
	id_tipo_persona = @id_selectTipoPersona
	where Persona.id_persona=@id_persona
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Rol_listarRol]    Script Date: 28/09/2019 12:04:51 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_TipoPersona_ListarTipoPersona]    Script Date: 28/09/2019 12:04:51 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Usuario_BuscarUsuarioContrasena]    Script Date: 28/09/2019 12:04:51 ******/
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
	usu.Nombre,
	usu.ApePat,
	usu.ApeMat,
	usu.Dni,
	usu.Avatar,
	usu.Estado,
	r.Nombre as NombreRol
	from 
	Usuario as usu
	inner join Rol as r on r.idRol = usu.Rol_idRol
	where usu.Usuario = @Usuario and usu.Contrasena= @Contrasena and usu.Estado = 1
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Usuario_permisoModulo]    Script Date: 28/09/2019 12:04:51 ******/
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
	u.Dni,
	u.Usuario,
	u.Nombre as NombreUsuario,
	u.ApePat,
	u.ApeMat,
	Avatar,
	Estado,
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
	WHERE u.id_usuario = @idUsuario


END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Usuario_verificarUsuario]    Script Date: 28/09/2019 12:04:51 ******/
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
