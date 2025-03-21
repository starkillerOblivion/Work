USE [DVDshop]
GO
/****** Object:  Table [dbo].[Age]    Script Date: 21.03.2025 9:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Age] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cheque]    Script Date: 21.03.2025 9:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cheque](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Rent] [int] NULL,
	[ID_Film] [int] NULL,
 CONSTRAINT [PK_Cheque] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 21.03.2025 9:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Patronymic] [varchar](50) NULL,
	[Phone] [varchar](11) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 21.03.2025 9:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Patronymic] [varchar](50) NULL,
	[Phone] [varchar](11) NULL,
	[ID_Role] [int] NULL,
	[Salary] [int] NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Film]    Script Date: 21.03.2025 9:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Film](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[ID_Age] [int] NULL,
	[RentalPrice] [int] NULL,
 CONSTRAINT [PK_Film] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Film_Genre]    Script Date: 21.03.2025 9:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Film_Genre](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Film] [int] NULL,
	[ID_Genre] [int] NULL,
 CONSTRAINT [PK_Film_Genre] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 21.03.2025 9:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Genre] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rent]    Script Date: 21.03.2025 9:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IssueDate] [date] NULL,
	[ID_Client] [int] NULL,
	[ID_Employee] [int] NULL,
	[DeliveryDate] [date] NULL,
 CONSTRAINT [PK_Rent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 21.03.2025 9:47:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cheque] ON 

INSERT [dbo].[Cheque] ([ID], [ID_Rent], [ID_Film]) VALUES (1, 1, 1)
INSERT [dbo].[Cheque] ([ID], [ID_Rent], [ID_Film]) VALUES (2, 2, 3)
INSERT [dbo].[Cheque] ([ID], [ID_Rent], [ID_Film]) VALUES (3, 3, 5)
INSERT [dbo].[Cheque] ([ID], [ID_Rent], [ID_Film]) VALUES (4, 4, 2)
INSERT [dbo].[Cheque] ([ID], [ID_Rent], [ID_Film]) VALUES (5, 5, 4)
INSERT [dbo].[Cheque] ([ID], [ID_Rent], [ID_Film]) VALUES (6, 6, 6)
INSERT [dbo].[Cheque] ([ID], [ID_Rent], [ID_Film]) VALUES (7, 7, 8)
INSERT [dbo].[Cheque] ([ID], [ID_Rent], [ID_Film]) VALUES (8, 8, 10)
INSERT [dbo].[Cheque] ([ID], [ID_Rent], [ID_Film]) VALUES (9, 9, 7)
INSERT [dbo].[Cheque] ([ID], [ID_Rent], [ID_Film]) VALUES (10, 10, 9)
INSERT [dbo].[Cheque] ([ID], [ID_Rent], [ID_Film]) VALUES (11, 11, 11)
INSERT [dbo].[Cheque] ([ID], [ID_Rent], [ID_Film]) VALUES (12, 12, 13)
INSERT [dbo].[Cheque] ([ID], [ID_Rent], [ID_Film]) VALUES (13, 13, 15)
INSERT [dbo].[Cheque] ([ID], [ID_Rent], [ID_Film]) VALUES (14, 14, 12)
INSERT [dbo].[Cheque] ([ID], [ID_Rent], [ID_Film]) VALUES (15, 15, 14)
INSERT [dbo].[Cheque] ([ID], [ID_Rent], [ID_Film]) VALUES (16, 16, 16)
INSERT [dbo].[Cheque] ([ID], [ID_Rent], [ID_Film]) VALUES (18, 17, 19)
INSERT [dbo].[Cheque] ([ID], [ID_Rent], [ID_Film]) VALUES (19, 18, 20)
INSERT [dbo].[Cheque] ([ID], [ID_Rent], [ID_Film]) VALUES (20, 19, 17)
INSERT [dbo].[Cheque] ([ID], [ID_Rent], [ID_Film]) VALUES (21, 20, 21)
SET IDENTITY_INSERT [dbo].[Cheque] OFF
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([ID], [LastName], [Name], [Patronymic], [Phone], [Password]) VALUES (1, N'Иванов', N'Иван', N'Иванович', N'79161234567', N'password123')
INSERT [dbo].[Client] ([ID], [LastName], [Name], [Patronymic], [Phone], [Password]) VALUES (2, N'Петрова', N'Анна', N'Сергеевна', N'79269876543', N'securePass')
INSERT [dbo].[Client] ([ID], [LastName], [Name], [Patronymic], [Phone], [Password]) VALUES (3, N'Сидоров', N'Михаил', N'Юрьевич', N'79035551212', N'12345abc
')
INSERT [dbo].[Client] ([ID], [LastName], [Name], [Patronymic], [Phone], [Password]) VALUES (4, N'Козлова', N'Елена', N'Владимировна', N'79157778899', N'mySecretPw')
INSERT [dbo].[Client] ([ID], [LastName], [Name], [Patronymic], [Phone], [Password]) VALUES (5, N'Смирнов', N'Дмитрий', N'Алексеевич', N'79251112233', N'passPass')
INSERT [dbo].[Client] ([ID], [LastName], [Name], [Patronymic], [Phone], [Password]) VALUES (6, N'Васильева', N'Ольга', N'Игоревна', N'79053334455', N'olga1234')
INSERT [dbo].[Client] ([ID], [LastName], [Name], [Patronymic], [Phone], [Password]) VALUES (7, N'Михайлов', N'Андрей', N'Петрович', N'79179990011', N'andrej77')
INSERT [dbo].[Client] ([ID], [LastName], [Name], [Patronymic], [Phone], [Password]) VALUES (8, N'Новикова', N'Екатерина', N'Александровна', N'79295556677', N'katya_new')
INSERT [dbo].[Client] ([ID], [LastName], [Name], [Patronymic], [Phone], [Password]) VALUES (9, N'Федоров', N'Сергей', N'Николаевич', N'79061112233', N'sergei_fed')
INSERT [dbo].[Client] ([ID], [LastName], [Name], [Patronymic], [Phone], [Password]) VALUES (10, N'Павлова', N'Татьяна', N'Викторовна', N'79182223344', N'tanya_pav')
INSERT [dbo].[Client] ([ID], [LastName], [Name], [Patronymic], [Phone], [Password]) VALUES (11, N'Степанов', N'Александр', N'Михайлович', N'79274445566', N'alex_step
')
INSERT [dbo].[Client] ([ID], [LastName], [Name], [Patronymic], [Phone], [Password]) VALUES (12, N'Волкова', N'Ирина', N'Дмитриевна', N'79046667788', N'ira_volk')
INSERT [dbo].[Client] ([ID], [LastName], [Name], [Patronymic], [Phone], [Password]) VALUES (13, N'Морозов', N'Алексей', N'Сергеевич', N'79198889900', N'moroz_al')
INSERT [dbo].[Client] ([ID], [LastName], [Name], [Patronymic], [Phone], [Password]) VALUES (14, N'Лебедева', N'Наталья', N'Юрьевна', N'79281112233', N'lebed_nat')
INSERT [dbo].[Client] ([ID], [LastName], [Name], [Patronymic], [Phone], [Password]) VALUES (15, N'Орлов', N'Максим', N'Владимирович', N'79073334455', N'orlov_max')
INSERT [dbo].[Client] ([ID], [LastName], [Name], [Patronymic], [Phone], [Password]) VALUES (16, N'Зайцева', N'Юлия', N'Игоревна', N'79105556677', N'zaitseva_ul')
INSERT [dbo].[Client] ([ID], [LastName], [Name], [Patronymic], [Phone], [Password]) VALUES (17, N'Соколов', N'Роман', N'Петрович', N'79207778899', N'sokolov_rom')
INSERT [dbo].[Client] ([ID], [LastName], [Name], [Patronymic], [Phone], [Password]) VALUES (18, N'Белова', N'Светлана', N'Александровна', N'79089990011', N'belova_sv
')
INSERT [dbo].[Client] ([ID], [LastName], [Name], [Patronymic], [Phone], [Password]) VALUES (19, N'Герасимов', N'Виктор', N'Николаевич', N'79112223344', N'gerasimov_v')
INSERT [dbo].[Client] ([ID], [LastName], [Name], [Patronymic], [Phone], [Password]) VALUES (20, N'Кузнецова', N'Анна', N'Викторовна', N'79224445566', N'kuznetsova_a')
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([ID], [LastName], [Name], [Patronymic], [Phone], [ID_Role], [Salary], [Password]) VALUES (1, N'Смирнов', N'Алексей', N'Иванович', N'79161112233', NULL, 50000, N'emp_pass1')
INSERT [dbo].[Employee] ([ID], [LastName], [Name], [Patronymic], [Phone], [ID_Role], [Salary], [Password]) VALUES (2, N'Петрова', N'Мария', N'Сергеевна', N'79263334455', NULL, 60000, N'maria_p')
INSERT [dbo].[Employee] ([ID], [LastName], [Name], [Patronymic], [Phone], [ID_Role], [Salary], [Password]) VALUES (3, N'Иванов', N'Дмитрий', N'Андреевич', N'79035556677', NULL, 52000, N'ivanov_d')
INSERT [dbo].[Employee] ([ID], [LastName], [Name], [Patronymic], [Phone], [ID_Role], [Salary], [Password]) VALUES (4, N'Козлова', N'Ольга', N'Петровна', N'79157778899', NULL, 75000, N'olga_k')
INSERT [dbo].[Employee] ([ID], [LastName], [Name], [Patronymic], [Phone], [ID_Role], [Salary], [Password]) VALUES (5, N'Сидоров', N'Сергей', N'Викторович', N'79259990011', NULL, 62000, N'sidorov_s')
INSERT [dbo].[Employee] ([ID], [LastName], [Name], [Patronymic], [Phone], [ID_Role], [Salary], [Password]) VALUES (6, N'Васильева', N'Елена', N'Юрьевна', N'79051112233', NULL, 51000, N'vasileva_e')
INSERT [dbo].[Employee] ([ID], [LastName], [Name], [Patronymic], [Phone], [ID_Role], [Salary], [Password]) VALUES (7, N'Михайлов', N'Андрей', N'Олегович', N'79173334455', NULL, 80000, N'andrey_m')
INSERT [dbo].[Employee] ([ID], [LastName], [Name], [Patronymic], [Phone], [ID_Role], [Salary], [Password]) VALUES (8, N'Новикова', N'Анна', N'Дмитриевна', N'79295556677', NULL, 61000, N'novikova_a')
INSERT [dbo].[Employee] ([ID], [LastName], [Name], [Patronymic], [Phone], [ID_Role], [Salary], [Password]) VALUES (9, N'Федоров', N'Игорь', N'Сергеевич', N'79067778899', NULL, 53000, N'fedorov_i')
INSERT [dbo].[Employee] ([ID], [LastName], [Name], [Patronymic], [Phone], [ID_Role], [Salary], [Password]) VALUES (10, N'Павлова', N'Ирина', N'Викторовна', N'79189990011', NULL, 78000, N'pavlova_i')
INSERT [dbo].[Employee] ([ID], [LastName], [Name], [Patronymic], [Phone], [ID_Role], [Salary], [Password]) VALUES (11, N'Степанов', N'Александр', N'Игоревич', N'79271112233', NULL, 63000, N'stepanov_al')
INSERT [dbo].[Employee] ([ID], [LastName], [Name], [Patronymic], [Phone], [ID_Role], [Salary], [Password]) VALUES (12, N'Волкова', N'Наталья', N'Алексеевна', N'79043334455', NULL, 54000, N'volkova_nat')
INSERT [dbo].[Employee] ([ID], [LastName], [Name], [Patronymic], [Phone], [ID_Role], [Salary], [Password]) VALUES (13, N'Морозов', N'Денис', N'Сергеевич', N'79195556677', NULL, 82000, N'morozov_de')
INSERT [dbo].[Employee] ([ID], [LastName], [Name], [Patronymic], [Phone], [ID_Role], [Salary], [Password]) VALUES (14, N'Лебедева', N'Екатерина', N'Викторовна', N'79287778899', NULL, 64000, N'lebedeva_ek
')
INSERT [dbo].[Employee] ([ID], [LastName], [Name], [Patronymic], [Phone], [ID_Role], [Salary], [Password]) VALUES (15, N'Орлов', N'Максим', N'Дмитриевич', N'79079990011', NULL, 55000, N'orlov_max')
INSERT [dbo].[Employee] ([ID], [LastName], [Name], [Patronymic], [Phone], [ID_Role], [Salary], [Password]) VALUES (16, N'Зайцева', N'Юлия', N'Александровна', N'79101112233', NULL, 79000, N'zaitseva_ul')
INSERT [dbo].[Employee] ([ID], [LastName], [Name], [Patronymic], [Phone], [ID_Role], [Salary], [Password]) VALUES (17, N'Соколов', N'Роман', N'Игоревич', N'79203334455', NULL, 65000, N'sokolov_rom')
INSERT [dbo].[Employee] ([ID], [LastName], [Name], [Patronymic], [Phone], [ID_Role], [Salary], [Password]) VALUES (18, N'Белова', N'Светлана', N'Сергеевна', N'79085556677', NULL, 56000, N'belova_sv')
INSERT [dbo].[Employee] ([ID], [LastName], [Name], [Patronymic], [Phone], [ID_Role], [Salary], [Password]) VALUES (19, N'Герасимов', N'Виктор', N'Алексеевич', N'79117778899', NULL, 81000, N'gerasimov_vi')
INSERT [dbo].[Employee] ([ID], [LastName], [Name], [Patronymic], [Phone], [ID_Role], [Salary], [Password]) VALUES (20, N'Кузнецова', N'Анна', N'Дмитриевна', N'79229990011', NULL, 66000, N'kuznetsova_an')
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Film] ON 

INSERT [dbo].[Film] ([ID], [Name], [ID_Age], [RentalPrice]) VALUES (1, N'Интерстеллар', NULL, 250)
INSERT [dbo].[Film] ([ID], [Name], [ID_Age], [RentalPrice]) VALUES (2, N'Начало', NULL, 220)
INSERT [dbo].[Film] ([ID], [Name], [ID_Age], [RentalPrice]) VALUES (3, N'Бойцовский клуб', NULL, 280)
INSERT [dbo].[Film] ([ID], [Name], [ID_Age], [RentalPrice]) VALUES (4, N'Криминальное чтиво', NULL, 300)
INSERT [dbo].[Film] ([ID], [Name], [ID_Age], [RentalPrice]) VALUES (5, N'Властелин колец: Братство кольца', NULL, 200)
INSERT [dbo].[Film] ([ID], [Name], [ID_Age], [RentalPrice]) VALUES (6, N'Гарри Поттер и философский камень', NULL, 180)
INSERT [dbo].[Film] ([ID], [Name], [ID_Age], [RentalPrice]) VALUES (7, N'Побег из Шоушенка', NULL, 260)
INSERT [dbo].[Film] ([ID], [Name], [ID_Age], [RentalPrice]) VALUES (8, N'Зеленая миля', NULL, 270)
INSERT [dbo].[Film] ([ID], [Name], [ID_Age], [RentalPrice]) VALUES (9, N'Молчание ягнят', NULL, 310)
INSERT [dbo].[Film] ([ID], [Name], [ID_Age], [RentalPrice]) VALUES (10, N'Форрест Гамп', NULL, 230)
INSERT [dbo].[Film] ([ID], [Name], [ID_Age], [RentalPrice]) VALUES (11, N'Один дома', NULL, 170)
INSERT [dbo].[Film] ([ID], [Name], [ID_Age], [RentalPrice]) VALUES (12, N'Леон', NULL, 290)
INSERT [dbo].[Film] ([ID], [Name], [ID_Age], [RentalPrice]) VALUES (13, N'Терминатор 2: Судный день', NULL, 240)
INSERT [dbo].[Film] ([ID], [Name], [ID_Age], [RentalPrice]) VALUES (14, N'Матрица', NULL, 320)
INSERT [dbo].[Film] ([ID], [Name], [ID_Age], [RentalPrice]) VALUES (15, N'Гладиатор', NULL, 250)
INSERT [dbo].[Film] ([ID], [Name], [ID_Age], [RentalPrice]) VALUES (16, N'Аватар', NULL, 210)
INSERT [dbo].[Film] ([ID], [Name], [ID_Age], [RentalPrice]) VALUES (17, N'Пираты Карибского моря: Проклятие Черной жемчужины', NULL, 190)
INSERT [dbo].[Film] ([ID], [Name], [ID_Age], [RentalPrice]) VALUES (19, N'	Операция “Ы” и другие приключения Шурика', NULL, 160)
INSERT [dbo].[Film] ([ID], [Name], [ID_Age], [RentalPrice]) VALUES (20, N'Джентельмены удачи', NULL, 150)
INSERT [dbo].[Film] ([ID], [Name], [ID_Age], [RentalPrice]) VALUES (21, N'Бриллиантовая рука', NULL, 140)
SET IDENTITY_INSERT [dbo].[Film] OFF
GO
SET IDENTITY_INSERT [dbo].[Film_Genre] ON 

INSERT [dbo].[Film_Genre] ([ID], [ID_Film], [ID_Genre]) VALUES (1, 1, NULL)
INSERT [dbo].[Film_Genre] ([ID], [ID_Film], [ID_Genre]) VALUES (2, 1, NULL)
INSERT [dbo].[Film_Genre] ([ID], [ID_Film], [ID_Genre]) VALUES (3, 2, NULL)
INSERT [dbo].[Film_Genre] ([ID], [ID_Film], [ID_Genre]) VALUES (4, 2, NULL)
INSERT [dbo].[Film_Genre] ([ID], [ID_Film], [ID_Genre]) VALUES (5, 3, NULL)
INSERT [dbo].[Film_Genre] ([ID], [ID_Film], [ID_Genre]) VALUES (6, 6, NULL)
INSERT [dbo].[Film_Genre] ([ID], [ID_Film], [ID_Genre]) VALUES (7, 4, NULL)
INSERT [dbo].[Film_Genre] ([ID], [ID_Film], [ID_Genre]) VALUES (8, 4, NULL)
INSERT [dbo].[Film_Genre] ([ID], [ID_Film], [ID_Genre]) VALUES (9, 5, NULL)
INSERT [dbo].[Film_Genre] ([ID], [ID_Film], [ID_Genre]) VALUES (10, 5, NULL)
INSERT [dbo].[Film_Genre] ([ID], [ID_Film], [ID_Genre]) VALUES (11, 6, NULL)
INSERT [dbo].[Film_Genre] ([ID], [ID_Film], [ID_Genre]) VALUES (12, 6, NULL)
INSERT [dbo].[Film_Genre] ([ID], [ID_Film], [ID_Genre]) VALUES (13, 7, NULL)
INSERT [dbo].[Film_Genre] ([ID], [ID_Film], [ID_Genre]) VALUES (14, 7, NULL)
INSERT [dbo].[Film_Genre] ([ID], [ID_Film], [ID_Genre]) VALUES (15, 8, NULL)
INSERT [dbo].[Film_Genre] ([ID], [ID_Film], [ID_Genre]) VALUES (16, 8, NULL)
INSERT [dbo].[Film_Genre] ([ID], [ID_Film], [ID_Genre]) VALUES (17, 9, NULL)
INSERT [dbo].[Film_Genre] ([ID], [ID_Film], [ID_Genre]) VALUES (18, 9, NULL)
INSERT [dbo].[Film_Genre] ([ID], [ID_Film], [ID_Genre]) VALUES (19, 10, NULL)
INSERT [dbo].[Film_Genre] ([ID], [ID_Film], [ID_Genre]) VALUES (20, 10, NULL)
SET IDENTITY_INSERT [dbo].[Film_Genre] OFF
GO
SET IDENTITY_INSERT [dbo].[Rent] ON 

INSERT [dbo].[Rent] ([ID], [IssueDate], [ID_Client], [ID_Employee], [DeliveryDate]) VALUES (1, CAST(N'2023-01-05' AS Date), 1, 1, CAST(N'2023-01-07' AS Date))
INSERT [dbo].[Rent] ([ID], [IssueDate], [ID_Client], [ID_Employee], [DeliveryDate]) VALUES (2, CAST(N'2023-01-10' AS Date), 2, 2, CAST(N'2023-01-12' AS Date))
INSERT [dbo].[Rent] ([ID], [IssueDate], [ID_Client], [ID_Employee], [DeliveryDate]) VALUES (3, CAST(N'2023-01-15' AS Date), 3, 1, CAST(N'2023-01-17' AS Date))
INSERT [dbo].[Rent] ([ID], [IssueDate], [ID_Client], [ID_Employee], [DeliveryDate]) VALUES (4, CAST(N'2023-01-20' AS Date), 4, 3, CAST(N'2023-01-22' AS Date))
INSERT [dbo].[Rent] ([ID], [IssueDate], [ID_Client], [ID_Employee], [DeliveryDate]) VALUES (5, CAST(N'2023-01-25' AS Date), 5, 2, CAST(N'2023-01-01' AS Date))
INSERT [dbo].[Rent] ([ID], [IssueDate], [ID_Client], [ID_Employee], [DeliveryDate]) VALUES (6, CAST(N'2023-01-30' AS Date), 6, 1, CAST(N'2023-02-01' AS Date))
INSERT [dbo].[Rent] ([ID], [IssueDate], [ID_Client], [ID_Employee], [DeliveryDate]) VALUES (7, CAST(N'2023-02-05' AS Date), 7, 3, CAST(N'2023-02-07' AS Date))
INSERT [dbo].[Rent] ([ID], [IssueDate], [ID_Client], [ID_Employee], [DeliveryDate]) VALUES (8, CAST(N'2023-02-10' AS Date), 8, 2, CAST(N'2023-02-12' AS Date))
INSERT [dbo].[Rent] ([ID], [IssueDate], [ID_Client], [ID_Employee], [DeliveryDate]) VALUES (9, CAST(N'2023-02-15' AS Date), 9, 1, CAST(N'2023-02-17' AS Date))
INSERT [dbo].[Rent] ([ID], [IssueDate], [ID_Client], [ID_Employee], [DeliveryDate]) VALUES (10, CAST(N'2023-02-20' AS Date), 10, 3, CAST(N'2023-02-22' AS Date))
INSERT [dbo].[Rent] ([ID], [IssueDate], [ID_Client], [ID_Employee], [DeliveryDate]) VALUES (11, CAST(N'2023-02-25' AS Date), 11, 2, CAST(N'2023-02-27' AS Date))
INSERT [dbo].[Rent] ([ID], [IssueDate], [ID_Client], [ID_Employee], [DeliveryDate]) VALUES (12, CAST(N'2023-03-02' AS Date), 12, 1, CAST(N'2023-03-04' AS Date))
INSERT [dbo].[Rent] ([ID], [IssueDate], [ID_Client], [ID_Employee], [DeliveryDate]) VALUES (13, CAST(N'2023-03-07' AS Date), 13, 3, CAST(N'2023-03-09' AS Date))
INSERT [dbo].[Rent] ([ID], [IssueDate], [ID_Client], [ID_Employee], [DeliveryDate]) VALUES (14, CAST(N'2023-03-12' AS Date), 14, 2, CAST(N'2023-03-14' AS Date))
INSERT [dbo].[Rent] ([ID], [IssueDate], [ID_Client], [ID_Employee], [DeliveryDate]) VALUES (15, CAST(N'2023-03-17' AS Date), 15, 1, CAST(N'2023-03-19' AS Date))
INSERT [dbo].[Rent] ([ID], [IssueDate], [ID_Client], [ID_Employee], [DeliveryDate]) VALUES (16, CAST(N'2023-03-22' AS Date), 16, 3, CAST(N'2023-03-02' AS Date))
INSERT [dbo].[Rent] ([ID], [IssueDate], [ID_Client], [ID_Employee], [DeliveryDate]) VALUES (17, CAST(N'2023-03-27' AS Date), 17, 2, CAST(N'2023-03-29' AS Date))
INSERT [dbo].[Rent] ([ID], [IssueDate], [ID_Client], [ID_Employee], [DeliveryDate]) VALUES (18, CAST(N'2023-04-01' AS Date), 18, 1, CAST(N'2023-04-03' AS Date))
INSERT [dbo].[Rent] ([ID], [IssueDate], [ID_Client], [ID_Employee], [DeliveryDate]) VALUES (19, CAST(N'2023-04-06' AS Date), 19, 3, CAST(N'2023-04-08' AS Date))
INSERT [dbo].[Rent] ([ID], [IssueDate], [ID_Client], [ID_Employee], [DeliveryDate]) VALUES (20, CAST(N'2023-04-11' AS Date), 20, 2, CAST(N'0203-04-13' AS Date))
SET IDENTITY_INSERT [dbo].[Rent] OFF
GO
ALTER TABLE [dbo].[Cheque]  WITH CHECK ADD  CONSTRAINT [FK_Cheque_Film] FOREIGN KEY([ID_Film])
REFERENCES [dbo].[Film] ([ID])
GO
ALTER TABLE [dbo].[Cheque] CHECK CONSTRAINT [FK_Cheque_Film]
GO
ALTER TABLE [dbo].[Cheque]  WITH CHECK ADD  CONSTRAINT [FK_Cheque_Rent] FOREIGN KEY([ID_Rent])
REFERENCES [dbo].[Rent] ([ID])
GO
ALTER TABLE [dbo].[Cheque] CHECK CONSTRAINT [FK_Cheque_Rent]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Role] FOREIGN KEY([ID_Role])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Role]
GO
ALTER TABLE [dbo].[Film]  WITH CHECK ADD  CONSTRAINT [FK_Film_Age] FOREIGN KEY([ID_Age])
REFERENCES [dbo].[Age] ([ID])
GO
ALTER TABLE [dbo].[Film] CHECK CONSTRAINT [FK_Film_Age]
GO
ALTER TABLE [dbo].[Film_Genre]  WITH CHECK ADD  CONSTRAINT [FK_Film_Genre_Film] FOREIGN KEY([ID_Film])
REFERENCES [dbo].[Film] ([ID])
GO
ALTER TABLE [dbo].[Film_Genre] CHECK CONSTRAINT [FK_Film_Genre_Film]
GO
ALTER TABLE [dbo].[Film_Genre]  WITH CHECK ADD  CONSTRAINT [FK_Film_Genre_Genre] FOREIGN KEY([ID_Genre])
REFERENCES [dbo].[Genre] ([ID])
GO
ALTER TABLE [dbo].[Film_Genre] CHECK CONSTRAINT [FK_Film_Genre_Genre]
GO
ALTER TABLE [dbo].[Rent]  WITH CHECK ADD  CONSTRAINT [FK_Rent_Client] FOREIGN KEY([ID_Client])
REFERENCES [dbo].[Client] ([ID])
GO
ALTER TABLE [dbo].[Rent] CHECK CONSTRAINT [FK_Rent_Client]
GO
ALTER TABLE [dbo].[Rent]  WITH CHECK ADD  CONSTRAINT [FK_Rent_Employee] FOREIGN KEY([ID_Employee])
REFERENCES [dbo].[Employee] ([ID])
GO
ALTER TABLE [dbo].[Rent] CHECK CONSTRAINT [FK_Rent_Employee]
GO
