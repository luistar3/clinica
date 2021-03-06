USE [clinica]
GO
/****** Object:  Table [dbo].[Area]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  Table [dbo].[Especializacion]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  Table [dbo].[Horario]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  Table [dbo].[Modulos]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  Table [dbo].[ModulosPermisos]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  Table [dbo].[Persona]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  Table [dbo].[Rol]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  Table [dbo].[Tipo_Persona]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  Table [dbo].[Usuario]    Script Date: 01/10/2019 17:53:52 ******/
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
SET IDENTITY_INSERT [dbo].[Area] OFF
SET IDENTITY_INSERT [dbo].[Especializacion] ON 

INSERT [dbo].[Especializacion] ([id_especializacion], [Nombre], [Fecha_insercion], [Fecha_modificacion], [Fecha_eliminacion], [Estado]) VALUES (1, N'ANGIOLOGIA', NULL, NULL, NULL, 1)
INSERT [dbo].[Especializacion] ([id_especializacion], [Nombre], [Fecha_insercion], [Fecha_modificacion], [Fecha_eliminacion], [Estado]) VALUES (2, N'DERMATOLOGÍA', NULL, NULL, NULL, 1)
INSERT [dbo].[Especializacion] ([id_especializacion], [Nombre], [Fecha_insercion], [Fecha_modificacion], [Fecha_eliminacion], [Estado]) VALUES (3, N'OFTALMOLOGÍA', NULL, NULL, NULL, 1)
INSERT [dbo].[Especializacion] ([id_especializacion], [Nombre], [Fecha_insercion], [Fecha_modificacion], [Fecha_eliminacion], [Estado]) VALUES (4, N'UROLOGÍA', NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Especializacion] OFF
SET IDENTITY_INSERT [dbo].[Modulos] ON 

INSERT [dbo].[Modulos] ([idModulos], [Nombre]) VALUES (1, N'HORARIOS')
INSERT [dbo].[Modulos] ([idModulos], [Nombre]) VALUES (2, N'PERSONAL')
INSERT [dbo].[Modulos] ([idModulos], [Nombre]) VALUES (3, N'USUARIOS')
INSERT [dbo].[Modulos] ([idModulos], [Nombre]) VALUES (4, N'VER')
INSERT [dbo].[Modulos] ([idModulos], [Nombre]) VALUES (5, N'PERMISOS')
SET IDENTITY_INSERT [dbo].[Modulos] OFF
SET IDENTITY_INSERT [dbo].[ModulosPermisos] ON 

INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (2, 1, 1)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (3, 1, 2)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (4, 1, 3)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (9, 5, 1)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (10, 5, 2)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (18, 7, 1)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (19, 7, 4)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (20, 1, 4)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (21, 1, 5)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (25, 6, 1)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (26, 6, 2)
INSERT [dbo].[ModulosPermisos] ([idModulosPermisos], [Rol_idRol], [Modulos_idModulos]) VALUES (27, 6, 4)
SET IDENTITY_INSERT [dbo].[ModulosPermisos] OFF
SET IDENTITY_INSERT [dbo].[Persona] ON 

INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1, N'71391320', N'LUIS ALFREDO', N'CHAMBILLA', N'LANCHIPA', N'M', 46, NULL, NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (6, N'71391325', N'FABIOLA', N'MENDOZA', N'-', N'F', 47, NULL, NULL, NULL, 1, 3, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1043, N'22222221', N'DIEGO', N'CALISAYA', N'-', N'M', 47, NULL, NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1044, N'22222222', N'GISELLA', N'CORDOVA', N'-', N'F', 47, NULL, NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1045, N'00000001', N'JUANA ', N'CHACHAQUE', N'ROSA', N'F', 45, CAST(N'2019-10-01T09:58:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1046, N'0000002', N'MIGUEL ANGEL ', N'DEL CARPIO', N'TORRES', N'M', 45, CAST(N'2019-10-01T10:39:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1047, N'0000003', N'BERNABE', N'FORA', N'CHURA', N'M', 45, CAST(N'2019-10-01T10:40:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1048, N'00000004', N'ALMICAR LUIS', N'TINOCO', N'SALAZAR', N'M', 45, CAST(N'2019-10-01T10:41:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1049, N'00000005', N'RAMON', N'DEL CARPIO', N'TORRES', N'M', 45, CAST(N'2019-10-01T10:42:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1050, N'00000006', N'SARY SHIRLEY', N'ROJAS', N'BUSTAMANTE', N'F', 44, CAST(N'2019-10-01T10:44:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1051, N'00000007', N'MIRIAN', N'FLORES ', N'DUARTE', N'F', 44, CAST(N'2019-10-01T10:44:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1052, N'00000008', N'BERNARDO ', N'FLORES ', N'ARENAS', N'M', 44, CAST(N'2019-10-01T10:49:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1053, N'00000009', N'ALBERTO', N'CALVO', N'QUIROZ', N'M', 44, CAST(N'2019-10-01T10:50:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1054, N'00000010', N'MARIA ALEXANDRA', N'FERNANDEZ', N'DE CORDOVA ', N'M', 44, CAST(N'2019-10-01T10:51:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1055, N'00000011', N'JUAN JOSE', N'CARPIO', N'CORNEJO', N'M', 44, CAST(N'2019-10-01T10:51:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1056, N'00000012', N'DIANA PATRICIA', N'RONDON', N'MOSCOSO', N'F', 43, CAST(N'2019-10-01T10:52:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1057, N'00000013', N'FERNANDO', N'ROBLES', N'BRODINO', N'M', 43, CAST(N'2019-10-01T10:53:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1058, N'00000014', N'CESAR', N'LANCHIPA', N'PICOAGA', N'M', 43, CAST(N'2019-10-01T10:53:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1059, N'00000015', N'JOSE VICENTE', N'FERNANDEZ', N'URQUIZA', N'M', 43, CAST(N'2019-10-01T10:54:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1060, N'00000016', N'MANUEL RICARDO ', N'SANTOS', N'COAYLA', N'M', 43, CAST(N'2019-10-01T10:55:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1061, N'00000017', N'HENRY EFRAIUN', N'MEDINA', N'CHAMBILLA ', N'M', 43, CAST(N'2019-10-01T10:57:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1062, N'00000018', N'EDWIN FELIX', N'MEDINA', N'CHAMBILLA', N'M', 43, CAST(N'2019-10-01T10:59:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1063, N'00000019', N'CESAR CARLOS', N'INGAR', N'VALVERDE', N'M', 43, CAST(N'2019-10-01T11:00:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1064, N'00000020', N'PERCY', N'ALARCON ', N'AGUILAR', N'M', 43, CAST(N'2019-10-01T11:00:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1065, N'00000021', N'JOSE MARTIN', N'AGUILAR', N'VIGNOLA', N'M', 43, CAST(N'2019-10-01T11:01:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1066, N'00000022', N'MILVIA TATIANA', N'RAYMONDI', N'MOLLINEDO', N'F', 17, CAST(N'2019-10-01T11:02:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1067, N'00000023', N'EDWIN', N'URIBE', N'BADILLO', N'M', 9, CAST(N'2019-10-01T11:02:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1068, N'00000024', N'JOSE LUIS', N'RODRIGUEZ', N'CUADROS', N'M', 9, CAST(N'2019-10-01T11:03:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1069, N'00000025', N'DEL PILAR', N'NUÑEZ', N'ROCIO', N'F', 9, CAST(N'2019-10-01T11:03:00' AS SmallDateTime), CAST(N'2019-10-01T11:04:00' AS SmallDateTime), NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1070, N'00000026', N'YESENIA', N'FLORES', N'CAYRO', N'F', 9, CAST(N'2019-10-01T11:04:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1071, N'00000027', N'IRVIN JONATHAN ', N'CALISAYA', N'PAMPAMALLCO', N'M', 13, CAST(N'2019-10-01T11:05:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1072, N'00000028', N'CARLOS ALBERTO', N'FERNANDEZ', N'CRISOSTO', N'M', 13, CAST(N'2019-10-01T11:05:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1073, N'00000029', N'MARCIAL', N'YUPANQUI', N'FIGUEROA', N'M', 5, CAST(N'2019-10-01T11:06:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1074, N'00000030', N'FABRICIO MANUEL', N'GUEVARA', N'VELEZ', N'M', 5, CAST(N'2019-10-01T11:15:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1075, N'00000031', N'CESAR', N'ZARATE', N'CACERES', N'M', 5, CAST(N'2019-10-01T11:16:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1076, N'00000032', N'CESAR MIGUEL', N'MERCADO', N'HERRERA', N'M', 33, CAST(N'2019-10-01T11:21:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1077, N'00000033', N'JUAN CARLOS', N'BRICEÑO', N'ROSAS', N'M', 33, CAST(N'2019-10-01T11:22:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1078, N'00000034', N'LISBET', N'TORRES', N'MARIN', N'F', 33, CAST(N'2019-10-01T11:23:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1079, N'00000035', N'GABRIELA ELIZABETH', N'ALARCON', N'GARCIA', N'F', 33, CAST(N'2019-10-01T11:26:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1080, N'00000036', N'ALDO ', N'ESCALANTE', N'FLORES', N'M', 37, CAST(N'2019-10-01T11:29:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1081, N'00000037', N'ROBERTO ALEJANDRO', N'ERAS', N'MERCADO', N'M', 37, CAST(N'2019-10-01T11:32:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1082, N'00000038', N'GUSTAVO', N'BECERRA', N'ALVAREZ', N'M', 37, CAST(N'2019-10-01T11:32:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1083, N'00000039', N'NIFKIM JESUS', N'BEDOYA', N'CRUZ', N'M', 37, CAST(N'2019-10-01T11:33:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1084, N'00000040', N'ROSSANA ANGELICA', N'LOSTANAU', N'COSTA', N'M', 6, CAST(N'2019-10-01T11:35:00' AS SmallDateTime), CAST(N'2019-10-01T11:36:00' AS SmallDateTime), NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1085, N'00000041', N'CARLOS', N'VELA ', N'RIVERA', N'M', 6, CAST(N'2019-10-01T11:36:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1086, N'00000042', N'VICTOR RICARDO', N'CHARA', N'SAENZ', N'M', 6, CAST(N'2019-10-01T11:37:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1087, N'00000043', N'ANGEL FABRICIO', N'BARDALES', N'SILVA', N'M', 10, CAST(N'2019-10-01T11:48:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1088, N'00000044', N'EBELIA EDDELYN', N'MAQUEYRA', N'VELARDE', N'F', 10, CAST(N'2019-10-01T11:49:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1089, N'00000045', N'JORGE ELISEO', N'LOPEZ', N'CLAROS', N'M', 10, CAST(N'2019-10-01T11:50:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1090, N'00000046', N'PEDRO', N'LAGUNA', N'HEREDIA', N'M', 10, CAST(N'2019-10-01T11:50:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1091, N'00000047', N'MARIA DEL CARMEN', N'ZUÑIGA', N'INFANTES', N'M', 10, CAST(N'2019-10-01T11:51:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1092, N'00000048', N'WALTER RUGGERO', N'BARRIGA', N'MANRIQUE', N'M', 10, CAST(N'2019-10-01T11:51:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1093, N'00000049', N'ZENON ZENON', N'CERVERA', N'REYES', N'M', 10, CAST(N'2019-10-01T11:52:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1094, N'00000050', N'EDGAR ALFREDO', N'CARCASI', N'LAURA', N'M', 10, CAST(N'2019-10-01T11:54:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1095, N'00000051', N'CARLOS', N'FERNANDEZ', N'QUIROZ', N'M', 10, CAST(N'2019-10-01T11:55:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1096, N'00000052', N'JUAN CARLOS', N'JAIME', N'CASTILLO', N'M', 10, CAST(N'2019-10-01T11:55:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1097, N'00000053', N'CRISTIHAN ANGEL', N'ENEQUE', N'CHOZO', N'M', 39, CAST(N'2019-10-01T11:56:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1098, N'00000054', N'FERMIN', N'SILVA', N'CAYATOPA', N'M', 39, CAST(N'2019-10-01T11:57:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1099, N'00000055', N'HECTOR DAVID', N'PALACIOS', N'HERRERA', N'M', 39, CAST(N'2019-10-01T11:57:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1100, N'00000056', N'JOSE', N'JIMENEZ', N'CARAZAS', N'M', 39, CAST(N'2019-10-01T11:57:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1101, N'00000057', N'JOSE LUIS', N'SANTIAGO', N'CASTRO', N'M', 39, CAST(N'2019-10-01T11:58:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1102, N'00000058', N'YISEL', N'NUÑEZ', N'LARIN', N'M', 39, CAST(N'2019-10-01T11:58:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1103, N'00000059', N'ALVARO ALONSO', N'SANCHEZ', N'CEDRON', N'M', 39, CAST(N'2019-10-01T11:59:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1104, N'00000060', N'EMERSON ESTEBAN', N'VASQUEZ', N'PAUCAR', N'M', 39, CAST(N'2019-10-01T11:59:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1105, N'00000061', N'ALFREDO', N'URCUHUARANGA', N'ALVARADO ', N'M', 39, CAST(N'2019-10-01T12:00:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1106, N'00000062', N'GIAN FRANCO ', N'CHURA', N'MAQUERA', N'M', 39, CAST(N'2019-10-01T12:00:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1107, N'00000063', N'BENJAMIN HUMBERTO', N'NUÑEZ ', N'ESPINEL ', N'M', 36, CAST(N'2019-10-01T12:15:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1108, N'00000064', N'EBMAR ERNESTO', N'ROJAS', N'VILLALOBOS', N'M', 36, CAST(N'2019-10-01T12:16:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1109, N'00000065', N'EDWIN NIKOLAI', N'ROJAS', N'LEON', N'M', 36, CAST(N'2019-10-01T12:16:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1110, N'00000066', N'FABIAN DANIEL ', N'DAVALOS ', N'HUISA', N'M', 36, CAST(N'2019-10-01T12:17:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1111, N'00000067', N'FELIZ EFRAIN', N'HOLGUIN', N'FELIX', N'M', 36, CAST(N'2019-10-01T12:18:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1112, N'00000068', N'JOSE LUIS', N'PACORA', N'HUATUCO', N'M', 36, CAST(N'2019-10-01T12:18:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1113, N'00000069', N'MANUEL NEPTALI', N'PACHERRES', N'VALVERDE', N'M', 36, CAST(N'2019-10-01T12:19:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1114, N'00000070', N'MARCO ANTONIO', N'GOMEZ', N'NEYRA', N'M', 36, CAST(N'2019-10-01T12:19:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1115, N'00000071', N'NAUDY JESUS', N'PEREZ', N'ORELLANA', N'M', 36, CAST(N'2019-10-01T12:20:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1116, N'00000072', N'WILDER RAUL', N'TELLO', N'MEJIA', N'M', 36, CAST(N'2019-10-01T14:14:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1117, N'00000073', N'MARIO  LEOPOLDO', N'ASCENZO ', N'BASTTISTINI', N'M', 34, CAST(N'2019-10-01T14:15:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1118, N'00000074', N'CLAUDIO MARTIN', N'BONOMINI', N'CATANZARO', N'M', 34, CAST(N'2019-10-01T14:16:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1119, N'00000075', N'LUIS ERNESTO', N'ESCUDERO ', N'VELANDO', N'M', 34, CAST(N'2019-10-01T14:16:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1120, N'00000076', N'MARILY', N'HUAMANTUCO', N'SANIZO ', N'F', 31, CAST(N'2019-10-01T14:17:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1121, N'00000077', N'DADY GERALDINE ', N'VALENCIA', N'NUÑEZ', N'F', 31, CAST(N'2019-10-01T14:18:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1122, N'00000078', N'EDGARD ALFREDO', N'CARCASI', N'LAURA', N'M', 40, CAST(N'2019-10-01T14:21:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1123, N'00000079', N'CARLOS', N'FERNANDEZ ', N'QUIROZ ', N'M', 40, CAST(N'2019-10-01T14:26:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1124, N'00000080', N'JUAN CARLOS ', N'JAIME', N'CASTILLO', N'M', 40, CAST(N'2019-10-01T14:27:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1125, N'00000081', N'ALBERTO ', N'CALVO', N'QUIROZ', N'M', 29, CAST(N'2019-10-01T14:37:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
INSERT [dbo].[Persona] ([id_persona], [Dni], [Nombre], [ApePat], [ApeMat], [Sexo], [id_area], [FechaInsercion], [FechaModificacion], [FechaEliminacion], [Estado], [id_especializacion], [id_tipo_persona]) VALUES (1126, N'00000082', N'GLENNY ANGELA ', N'OJEDA', N'TORRES ', N'M', 29, CAST(N'2019-10-01T14:38:00' AS SmallDateTime), NULL, NULL, 1, 1, 1)
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

INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (1, 1, N'admin', N'e10adc3949ba59abbe56e057f20f883e', N'LUIS', N'....', 1, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (4, 5, N'GCORDOVA', N'e10adc3949ba59abbe56e057f20f883e', N'GISELLA', N'....', 1, NULL, NULL, NULL, NULL, 1044)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (5, 6, N'FMENDOZA', N'e10adc3949ba59abbe56e057f20f883e', N'FABIOLA', N'....', 1, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[Usuario] ([id_usuario], [Rol_idRol], [Usuario], [Contrasena], [Nombre], [Avatar], [Estado], [CambioContrasena], [Ip], [Mac], [Navegador], [idPersona]) VALUES (10, 7, N'DCALISAYA', N'e10adc3949ba59abbe56e057f20f883e', N'DIEGO', N'....', 1, NULL, NULL, NULL, NULL, 1043)
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Area_listarArea]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Especializacion_ListarEspecializacion]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Horario_insertarHorario]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Horario_listarHorarioHoy]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Horario_listarHorarioNum]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Horario_listarHorarioPorArea]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Horario_modificarEstado]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Horario_verificarExistenciaHorario]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Permisos_agregarPermisosModulosPorRol]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Permisos_eliminarPermisosModulosPorRol]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Permisos_listarPermisosModulosPorRol]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_buscarPersonaPorDni]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_eliminarPersona]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_insertarNuevaPersona]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_listaPersonaAgregadaEnHorario]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_ListarPersonaParaHorario]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_listarPersonaPorIdArea]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Persona_modificarPersona]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Rol_listarRol]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_TipoPersona_ListarTipoPersona]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Usuario_BuscarUsuarioContrasena]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Usuario_ListarPersonaSinUsuario]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Usuario_listarUsuario]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Usuario_permisoModulo]    Script Date: 01/10/2019 17:53:52 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Clinica_Usuario_verificarUsuario]    Script Date: 01/10/2019 17:53:52 ******/
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
