USE [clinica]
GO
/****** Object:  Table [dbo].[Area]    Script Date: 09/09/2019 18:56:04 ******/
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
/****** Object:  Table [dbo].[Especializacion]    Script Date: 09/09/2019 18:56:04 ******/
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
/****** Object:  Table [dbo].[Horario]    Script Date: 09/09/2019 18:56:04 ******/
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
/****** Object:  Table [dbo].[Persona]    Script Date: 09/09/2019 18:56:04 ******/
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
/****** Object:  Table [dbo].[Tipo_Persona]    Script Date: 09/09/2019 18:56:04 ******/
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
SET IDENTITY_INSERT [dbo].[Area] ON 

INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (1, N'ALERGOLOGIA', 1, NULL, NULL, 2)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (2, N'EMERGENCIA', 3, NULL, NULL, 3)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (3, N'MEDICINA GENERAL', 4, NULL, NULL, 4)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (4, N'ONCOLOGIA', 9, NULL, NULL, 5)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (5, N'ANESTESIOLOGIA', 6, NULL, NULL, 6)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (6, N'ENDOCRINOLOGIA', 7, NULL, NULL, 7)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (7, N'MEDICINA INTERNA', 4, NULL, NULL, 8)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (8, N'OTORRINOLARINGOLOGIA', 3, NULL, NULL, 9)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (9, N'CARDIOLOGIA', 2, NULL, NULL, 5)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (10, N'GASTROENTEROLOGIA', 5, NULL, NULL, 11)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (11, N'NEFROLOGIA', 4, NULL, NULL, 12)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (12, N'PEDIATRIA', 3, NULL, NULL, 4)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (13, N'CIRUGIA CARDIOVASCULAR', 5, NULL, NULL, 5)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (14, N'GERIATRIA', 8, NULL, NULL, 6)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (15, N'NEONATOLOGIA', 3, NULL, NULL, 7)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (16, N'PSICOLOGIA', 4, NULL, NULL, 4)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (17, N'CIRUGIA DE CABEZA Y CUELLO', 5, NULL, NULL, 5)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (18, N'GINECOLOGIA', 6, NULL, NULL, 5)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (19, N'NEUMOLOGIA', 3, NULL, NULL, 8)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (20, N'PSIQUIATRIA', 4, NULL, NULL, 8)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (21, N'CIRUGIA GENERAL', 5, NULL, NULL, 8)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (22, N'HEMATOLOGIA', 9, NULL, NULL, 7)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (23, N'NEUROCIRUGIA', 3, NULL, NULL, 9)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (24, N'REUMATOLOGIA', 5, NULL, NULL, 4)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (25, N'CIRUGIA PEDIATRICA', 6, NULL, NULL, 4)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (26, N'HOSPITALIZACION', 3, NULL, NULL, 7)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (27, N'NEUROLOGIA', 9, NULL, NULL, 7)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (28, N'SALA DE OPERACIONES', 5, NULL, NULL, 8)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (29, N'CIRUGIA PLASTICA', 6, NULL, NULL, 9)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (30, N'INFECTOLOGIA', 7, NULL, NULL, 9)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (31, N'NUTRICION', 7, NULL, NULL, 7)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (32, N'SALA DE PARTOS', 4, NULL, NULL, 7)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (33, N'DERMATOLOGIA', 3, NULL, NULL, 7)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (34, N'INFERTILIDAD', 8, NULL, NULL, 7)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (35, N'OBSTETRICIA', 6, NULL, NULL, 9)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (36, N'TRAUMATOLOGIA', 6, NULL, NULL, 8)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (37, N'ECOGRAFIA', 7, NULL, NULL, 5)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (38, N'MFR!A1', 8, NULL, NULL, 6)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (39, N'OFTALMOLOGIA', 8, NULL, NULL, 6)
INSERT [dbo].[Area] ([id_area], [Nombre], [Piso], [Tipo], [Estado], [id_persona]) VALUES (40, N'UROLOGIA', 4, NULL, NULL, 5)
SET IDENTITY_INSERT [dbo].[Area] OFF
SET IDENTITY_INSERT [dbo].[Horario] ON 

INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (4, CAST(N'2019-09-09T02:25:00.000' AS DateTime), CAST(N'2019-09-09T04:00:00.000' AS DateTime), 4, 11, 10, 1, N'#1abc9c', NULL, NULL, NULL, NULL, CAST(N'2019-08-01' AS Date), NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (6, CAST(N'2019-09-06T04:30:00.000' AS DateTime), CAST(N'2019-09-06T07:00:00.000' AS DateTime), 4, 9, 10, 1, N'#5b4085', NULL, NULL, NULL, NULL, CAST(N'2019-08-01' AS Date), NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (8, CAST(N'2019-09-07T02:00:00.000' AS DateTime), CAST(N'2019-09-07T04:00:00.000' AS DateTime), 5, 11, 10, 1, N'#1abc9c', NULL, NULL, NULL, NULL, CAST(N'2019-08-02' AS Date), NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (9, CAST(N'2019-09-07T04:30:00.000' AS DateTime), CAST(N'2019-09-07T07:00:00.000' AS DateTime), 5, 12, 10, 1, N'#16a085', NULL, NULL, NULL, NULL, CAST(N'2019-08-02' AS Date), NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (10, CAST(N'2019-09-07T11:15:00.000' AS DateTime), CAST(N'2019-09-07T23:00:00.000' AS DateTime), 2, 14, 14, 1, N'#f1c40f', NULL, NULL, NULL, NULL, CAST(N'2019-08-13' AS Date), NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (11, CAST(N'2019-09-07T04:15:00.000' AS DateTime), CAST(N'2019-09-07T07:00:00.000' AS DateTime), 1, 14, 14, 1, N'#f1c40f', NULL, NULL, NULL, NULL, CAST(N'2019-08-12' AS Date), NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (12, CAST(N'2019-09-07T11:30:00.000' AS DateTime), CAST(N'2019-09-07T23:00:00.000' AS DateTime), 1, 14, 14, 1, N'#f1c40f', NULL, NULL, NULL, NULL, CAST(N'2019-08-26' AS Date), NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (13, CAST(N'2019-09-07T11:15:00.000' AS DateTime), CAST(N'2019-09-07T23:00:00.000' AS DateTime), 5, 14, 14, 1, N'#f1c40f', NULL, NULL, NULL, NULL, CAST(N'2019-08-30' AS Date), NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (15, CAST(N'2019-06-05T11:20:00.000' AS DateTime), CAST(N'2019-06-05T11:30:00.000' AS DateTime), 5, 14, 14, 1, N'#f1c40f', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (18, CAST(N'2019-02-28T11:31:00.000' AS DateTime), CAST(N'2019-02-28T11:30:00.000' AS DateTime), 5, 14, 14, 1, N'#f1c40f', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (19, CAST(N'2019-11-28T11:00:00.000' AS DateTime), CAST(N'2019-11-28T11:30:00.000' AS DateTime), 5, 14, 14, 1, N'#f1c40f', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (21, CAST(N'2019-09-07T21:00:00.000' AS DateTime), CAST(N'2019-09-08T02:00:00.000' AS DateTime), 5, 14, 14, 1, N'#f1c40f', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Horario] ([id_horario], [Fecha_inicio], [Fecha_fin], [Dia], [id_persona], [id_area], [Espacio], [Color], [Fecha_insercion], [Fecha_modificacion], [Estado], [Fecha_eliminacion], [Fecha], [Comentario]) VALUES (22, CAST(N'2000-01-01T00:00:00.000' AS DateTime), CAST(N'2000-01-01T00:00:00.000' AS DateTime), 5, 8, 10, 1, N'#f1c40f', NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Horario] OFF
SET IDENTITY_INSERT [dbo].[Persona] ON 

INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1, N'71391320', N'TEOFILO FERNANDO ', N'QUISPE ', N'CHULLO', N'M', 14, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (2, N'71391321', N'YESENIA', N'FLORES', N'CAYRO', N'F', 14, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (3, N'71391322', N'ROCIO DEL PILAR', N'NUÑEZ', N'DELGADO', N'F', 14, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (4, N'71391323', N'JOSE LUIS', N'RODRIGUEZ', N'CUADROS', N'M', 14, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (5, N'71391324', N'CARLOS', N'FERNANDEZ', N'CRISOSTO', N'M', 14, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (6, N'71391325', N'EDWIN FELIX ', N'MEDINA', N'CHAMBILLA', N'M', 14, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (7, N'71391326', N'MANUEL RICARDO', N'SANTOS ', N'COAYLA', N'M', 14, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (8, N'71391327', N'CESAR', N'BURGOS', N'CHAVEZ', N'F', 10, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (9, N'71391328', N'ANGEL', N'BARDALES', N'SILVA', N'M', 10, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (10, N'71391329', N'EVELIA', N'MAQUEYRA ', N'BARDALES', N'F', 14, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (11, N'71391330', N'WALTER', N'BARRIGA', N'MANRIQUE', N'M', 10, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (12, N'71391331', N'MARIA DEL CARMEN', N'ZUÑIGA ', N'INFANTAS', N'F', 10, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (13, N'71391332', N'PEDRO', N'LAGUNA', N'HEREDIA', N'M', 14, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (14, N'71391333', N'GIANINA', N'ASTE', N'ASTE', N'F', 14, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (15, N'81391320', N'FABRICIO', N'GUEVARA', N'VELEZ', N'M', 14, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (16, N'81391321', N'MAURO', N'URIBE', N'BADILLO', N'M', 14, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (17, N'81391322', N'MILVIA', N'RAYMONDI ', N'MOLLINEDO', N'F', 14, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (18, N'81391323', N'JUAN JOSE', N'CARPIO', N'CORNEJO', N'M', 14, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (19, N'81391324', N'ALBERTO BALTAZAR', N'CALVO', N'QUIROZ', N'M', 14, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (20, N'81391325', N'CESAR', N'MERCADO', N'HERRERA', N'M', 14, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (21, N'81391316', N'ROBERTO', N'ERAS', N'MERCADO', N'M', 14, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (22, N'81391327', N'PERCY', N'MALDONADO', N'MOGROVEJO', N'M', 14, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (23, N'81391328', N'CARLOS', N'VELA', N'RIVERA', N'M', 14, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (24, N'81391329', N'LUIS', N'ZENON', N'CERVERA', N'M', 14, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (25, N'91391320', N'NANCY', N'ANGELES', N'VILARROEL', N'F', 14, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (26, N'91381321', N'JAIME ALBERTO', N'MALCA', N'MILLA', N'M', 14, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (27, N'91391322', N'ROSMERY', N'GIL', N'SILVESTRE', N'F', 14, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (28, N'91391323', N'MIGUEL', N'HUEDA', N'ZALAVETA', N'M', 14, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (29, N'91391324', N'CLAUDIO', N'BONOMINI', N'BONOMINI', N'M', 14, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (30, N'91391325', N'ALEXVIC', N'NIEVES', N'QUERO', N'M', 14, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (31, N'91391326', N'LUIS', N'OCROS', N'OCROS', N'M', 14, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (32, N'91391327', N'CESAR', N'CONTRERAS', N'ALMENDE', N'M', 14, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (33, N'91391328', N'EDGAR', N'CARCASI', N'LAURA', N'M', 14, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (34, N'91391329', N'WILBER', N'TELLO', N'TELLO', N'M', 10, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (35, N'61391320', N'LUIS', N'GUEVARA', N'GUEVARA', N'M', 10, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (36, N'61391321', N'WILSON', N'GUZMAN', N'OLIVERA', N'M', 10, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (37, N'61391322', N'PEDRO', N'SAKURAY', N'MONTALO', N'M', 10, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (38, N'61391323', N'NADIA DEL PILAR', N'TORRES ', N'ALVALOZ', N'F', 11, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (39, N'61391324', N'DAVID', N'SALVATIERRA', N'GARCIA', N'M', 11, NULL, NULL, NULL, 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[Persona] OFF
SET IDENTITY_INSERT [dbo].[Tipo_Persona] ON 

INSERT [dbo].[Tipo_Persona] ([id_tipo_persona], [nombre]) VALUES (1, N'MEDICO    ')
INSERT [dbo].[Tipo_Persona] ([id_tipo_persona], [nombre]) VALUES (2, N'ENFERMERA ')
INSERT [dbo].[Tipo_Persona] ([id_tipo_persona], [nombre]) VALUES (6, N'ADMINISTRATIVO')
SET IDENTITY_INSERT [dbo].[Tipo_Persona] OFF
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Area_listarArea]    Script Date: 09/09/2019 18:56:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Clinica_Area_listarArea]

AS
BEGIN
SELECT 
ROW_NUMBER() OVER (ORDER BY e.id_area  desc ) as fila ,
e.id_area,
e.Nombre,
e.Piso,
CONCAT(PE.Nombre,' ', PE.ApePat , ' ', PE.ApeMat) AS Encargado
FROM 

Area AS e 
inner join Persona as pe on pe.id_persona = e.id_persona

END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Horario_listarHorarioPorArea]    Script Date: 09/09/2019 18:56:04 ******/
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
	AND e.id_area = @id_area
                    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_listaPersonaAgregadaEnHorario]    Script Date: 09/09/2019 18:56:04 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_ListarPersonaParaHorario]    Script Date: 09/09/2019 18:56:04 ******/
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
	where  pe.id_area = @id_area
	order by pe.ApePat
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'encargado de la Especialidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Area'
GO
