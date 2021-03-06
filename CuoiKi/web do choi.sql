USE [WebDoChoi]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 1/12/2021 7:33:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 1/12/2021 7:33:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[ProId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 1/12/2021 7:33:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Created] [date] NOT NULL,
	[StatusId] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 1/12/2021 7:33:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](70) NOT NULL,
	[Price] [float] NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[Discount] [float] NULL,
	[Quantity] [int] NOT NULL,
	[Created] [date] NOT NULL,
	[CateId] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Status]    Script Date: 1/12/2021 7:33:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/12/2021 7:33:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Gender] [bit] NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Created] [date] NOT NULL,
	[UserRole] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (N'puzz', N'Đồ chơi thông minh')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (N'ani', N'Động vật')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (N'rb', N'Robot')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (N'car', N'Xe hơi')
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [Quantity], [UnitPrice], [ProId], [OrderId]) VALUES (1064, 1, 2000, 105, 1050)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [UnitPrice], [ProId], [OrderId]) VALUES (1065, 1, 2000, 81, 1051)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [UnitPrice], [ProId], [OrderId]) VALUES (1066, 3, 9000, 100, 1051)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [UnitPrice], [ProId], [OrderId]) VALUES (1067, 3, 9000, 92, 1051)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [UnitPrice], [ProId], [OrderId]) VALUES (1068, 1, 1000, 98, 1052)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [UnitPrice], [ProId], [OrderId]) VALUES (1069, 1, 4000, 83, 1052)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [UnitPrice], [ProId], [OrderId]) VALUES (1070, 5, 10000, 91, 1053)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [UnitPrice], [ProId], [OrderId]) VALUES (1071, 1, 3000, 92, 1053)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [UnitPrice], [ProId], [OrderId]) VALUES (1072, 5, 10000, 81, 1054)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [UnitPrice], [ProId], [OrderId]) VALUES (1073, 5, 15000, 92, 1054)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [UnitPrice], [ProId], [OrderId]) VALUES (2064, 6, 12000, 81, 2050)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [UnitPrice], [ProId], [OrderId]) VALUES (2065, 3, 6000, 91, 2050)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [UserId], [Created], [StatusId]) VALUES (41, 1052, CAST(N'2020-06-07' AS Date), 2)
INSERT [dbo].[Orders] ([Id], [UserId], [Created], [StatusId]) VALUES (44, 1053, CAST(N'2020-06-07' AS Date), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [Created], [StatusId]) VALUES (46, 1050, CAST(N'2020-06-08' AS Date), 2)
INSERT [dbo].[Orders] ([Id], [UserId], [Created], [StatusId]) VALUES (1047, 1052, CAST(N'2020-06-13' AS Date), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [Created], [StatusId]) VALUES (1048, 1052, CAST(N'2020-06-13' AS Date), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [Created], [StatusId]) VALUES (1050, 1050, CAST(N'2021-01-07' AS Date), 3)
INSERT [dbo].[Orders] ([Id], [UserId], [Created], [StatusId]) VALUES (1051, 1051, CAST(N'2021-01-07' AS Date), 2)
INSERT [dbo].[Orders] ([Id], [UserId], [Created], [StatusId]) VALUES (1052, 1051, CAST(N'2021-01-07' AS Date), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [Created], [StatusId]) VALUES (1053, 1053, CAST(N'2021-01-07' AS Date), 1)
INSERT [dbo].[Orders] ([Id], [UserId], [Created], [StatusId]) VALUES (1054, 1053, CAST(N'2021-01-07' AS Date), 0)
INSERT [dbo].[Orders] ([Id], [UserId], [Created], [StatusId]) VALUES (2050, 1050, CAST(N'2021-01-11' AS Date), 2)
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Price], [Photo], [Description], [Discount], [Quantity], [Created], [CateId]) VALUES (81, N'Xe hơi 2', 2000, N'2.jpg', N'Xe hơi 2', 15, 150, CAST(N'2020-12-12' AS Date), N'car')
INSERT [dbo].[Products] ([Id], [Name], [Price], [Photo], [Description], [Discount], [Quantity], [Created], [CateId]) VALUES (82, N'Xe hơi 3', 3000, N'3.jpg', N'Xe hơi 3', 50, 100, CAST(N'2020-12-12' AS Date), N'car')
INSERT [dbo].[Products] ([Id], [Name], [Price], [Photo], [Description], [Discount], [Quantity], [Created], [CateId]) VALUES (83, N'Xe hơi 4', 4000, N'4.jpg', N'Xe hơi 4', 30, 150, CAST(N'2020-12-12' AS Date), N'car')
INSERT [dbo].[Products] ([Id], [Name], [Price], [Photo], [Description], [Discount], [Quantity], [Created], [CateId]) VALUES (84, N'Xe hơi 5', 5000, N'5.jpg', N'Xe hơi 5', 30, 100, CAST(N'2020-12-12' AS Date), N'car')
INSERT [dbo].[Products] ([Id], [Name], [Price], [Photo], [Description], [Discount], [Quantity], [Created], [CateId]) VALUES (86, N'Xe hơi 6', 5000, N'6.jpg', N'Xe hơi 6', 30, 150, CAST(N'2020-12-12' AS Date), N'car')
INSERT [dbo].[Products] ([Id], [Name], [Price], [Photo], [Description], [Discount], [Quantity], [Created], [CateId]) VALUES (87, N'Xe hơi 7', 6000, N'7.jpg', N'Xe hơi 7', 20, 100, CAST(N'2020-12-12' AS Date), N'car')
INSERT [dbo].[Products] ([Id], [Name], [Price], [Photo], [Description], [Discount], [Quantity], [Created], [CateId]) VALUES (88, N'Xe hơi 8', 5000, N'8.jpg', N'Xe hơi 8', 0, 50, CAST(N'2020-12-12' AS Date), N'car')
INSERT [dbo].[Products] ([Id], [Name], [Price], [Photo], [Description], [Discount], [Quantity], [Created], [CateId]) VALUES (89, N'Xe hơi 9', 10000, N'9.jpg', N'Xe hơi 9 ', 0, 50, CAST(N'2020-12-12' AS Date), N'car')
INSERT [dbo].[Products] ([Id], [Name], [Price], [Photo], [Description], [Discount], [Quantity], [Created], [CateId]) VALUES (90, N'Đồ chơi thông minh 1', 1000, N'1a.jpg', N'Đồ chơi thông minh 1', 10, 100, CAST(N'2020-12-12' AS Date), N'puzz')
INSERT [dbo].[Products] ([Id], [Name], [Price], [Photo], [Description], [Discount], [Quantity], [Created], [CateId]) VALUES (91, N'Đồ chơi thông minh 2 ', 2000, N'2a.jpg', N'Đồ chơi thông minh 2', 10, 100, CAST(N'2020-12-12' AS Date), N'puzz')
INSERT [dbo].[Products] ([Id], [Name], [Price], [Photo], [Description], [Discount], [Quantity], [Created], [CateId]) VALUES (92, N'Đồ chơi thông minh 3', 3000, N'3a.jpg', N'Đồ chơi thông minh 3', 20, 200, CAST(N'2020-12-12' AS Date), N'puzz')
INSERT [dbo].[Products] ([Id], [Name], [Price], [Photo], [Description], [Discount], [Quantity], [Created], [CateId]) VALUES (93, N'Đồ chơi thông minh 4', 4000, N'4a.jpg', N'Đồ chơi thông minh 4', 30, 100, CAST(N'2020-12-12' AS Date), N'puzz')
INSERT [dbo].[Products] ([Id], [Name], [Price], [Photo], [Description], [Discount], [Quantity], [Created], [CateId]) VALUES (94, N'Đồ chơi thông minh 5', 5000, N'5a.jpg', N'Đồ chơi thông minh 5', 10, 100, CAST(N'2020-12-12' AS Date), N'puzz')
INSERT [dbo].[Products] ([Id], [Name], [Price], [Photo], [Description], [Discount], [Quantity], [Created], [CateId]) VALUES (95, N'Đồ chơi thông minh 6', 6000, N'6a.jpg', N'Đồ chơi thông minh 6', 0, 50, CAST(N'2020-12-12' AS Date), N'puzz')
INSERT [dbo].[Products] ([Id], [Name], [Price], [Photo], [Description], [Discount], [Quantity], [Created], [CateId]) VALUES (96, N'Đồ chơi thông minh 7', 1000, N'7a.jpg', N'Đồ chơi thông minh 7', 10, 50, CAST(N'2020-12-12' AS Date), N'puzz')
INSERT [dbo].[Products] ([Id], [Name], [Price], [Photo], [Description], [Discount], [Quantity], [Created], [CateId]) VALUES (97, N'Đồ chơi thông minh 8', 2000, N'8a.jpg', N'Đồ chơi thông minh 8', 10, 100, CAST(N'2020-12-12' AS Date), N'puzz')
INSERT [dbo].[Products] ([Id], [Name], [Price], [Photo], [Description], [Discount], [Quantity], [Created], [CateId]) VALUES (98, N'Động vật 1', 1000, N'1c.jpg', N'Động vật 1', 0, 100, CAST(N'2020-12-12' AS Date), N'ani')
INSERT [dbo].[Products] ([Id], [Name], [Price], [Photo], [Description], [Discount], [Quantity], [Created], [CateId]) VALUES (99, N'Động vật 2', 2000, N'2c.jpg', N'Động vật 2', 0, 100, CAST(N'2020-12-12' AS Date), N'ani')
INSERT [dbo].[Products] ([Id], [Name], [Price], [Photo], [Description], [Discount], [Quantity], [Created], [CateId]) VALUES (100, N'Động vật 3', 3000, N'3c.jpg', N'Động vật 3', 10, 200, CAST(N'2020-12-12' AS Date), N'ani')
INSERT [dbo].[Products] ([Id], [Name], [Price], [Photo], [Description], [Discount], [Quantity], [Created], [CateId]) VALUES (101, N'Động vật 4', 4000, N'4c.jpg', N'Động vật 4', 20, 300, CAST(N'2020-12-12' AS Date), N'ani')
INSERT [dbo].[Products] ([Id], [Name], [Price], [Photo], [Description], [Discount], [Quantity], [Created], [CateId]) VALUES (102, N'Động vật 5', 5000, N'5c.jpg', N'Động vật 5', 30, 300, CAST(N'2020-12-12' AS Date), N'ani')
INSERT [dbo].[Products] ([Id], [Name], [Price], [Photo], [Description], [Discount], [Quantity], [Created], [CateId]) VALUES (103, N'Động vật 6', 1000, N'6c.jpg', N'Động vật 6', 20, 200, CAST(N'2020-12-12' AS Date), N'ani')
INSERT [dbo].[Products] ([Id], [Name], [Price], [Photo], [Description], [Discount], [Quantity], [Created], [CateId]) VALUES (104, N'Robot 1', 1000, N'1b.jpg', N'Robot 1', 10, 100, CAST(N'2020-12-12' AS Date), N'rb')
INSERT [dbo].[Products] ([Id], [Name], [Price], [Photo], [Description], [Discount], [Quantity], [Created], [CateId]) VALUES (105, N'Robot 2', 2000, N'2b.jpg', N'Robot 2', 20, 200, CAST(N'2020-12-12' AS Date), N'rb')
INSERT [dbo].[Products] ([Id], [Name], [Price], [Photo], [Description], [Discount], [Quantity], [Created], [CateId]) VALUES (106, N'Robot 3', 3000, N'3b.jpg', N'Robot 3', 10, 199, CAST(N'2020-12-12' AS Date), N'rb')
INSERT [dbo].[Products] ([Id], [Name], [Price], [Photo], [Description], [Discount], [Quantity], [Created], [CateId]) VALUES (107, N'Robot 4', 1000, N'4b.jpg', N'Robot 4', 10, 100, CAST(N'2020-12-12' AS Date), N'rb')
INSERT [dbo].[Products] ([Id], [Name], [Price], [Photo], [Description], [Discount], [Quantity], [Created], [CateId]) VALUES (108, N'Robot 5', 5000, N'5b.jpg', N'Robot 5', 50, 50, CAST(N'2020-12-12' AS Date), N'rb')
INSERT [dbo].[Products] ([Id], [Name], [Price], [Photo], [Description], [Discount], [Quantity], [Created], [CateId]) VALUES (109, N'Robot 6', 1000, N'6b.jpg', N'Robot 6', 10, 100, CAST(N'2020-12-12' AS Date), N'rb')
INSERT [dbo].[Products] ([Id], [Name], [Price], [Photo], [Description], [Discount], [Quantity], [Created], [CateId]) VALUES (110, N'Robot 7', 2000, N'7b.jpg', N'Robot 7', 20, 100, CAST(N'2020-12-12' AS Date), N'rb')
SET IDENTITY_INSERT [dbo].[Products] OFF
INSERT [dbo].[Status] ([Id], [Name]) VALUES (0, N'Đã hủy')
INSERT [dbo].[Status] ([Id], [Name]) VALUES (2, N'Đang giao hàng')
INSERT [dbo].[Status] ([Id], [Name]) VALUES (1, N'Đang xác nhận')
INSERT [dbo].[Status] ([Id], [Name]) VALUES (3, N'Hoàn tất đơn hàng')
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Name], [Gender], [Username], [Password], [Email], [Phone], [Address], [Created], [UserRole]) VALUES (1050, N'Phan Hoàng Hiệp', 1, N'hiep1234', N'abc123', N'phanhiep243@gmail.com', N'0916714745', N'HN', CAST(N'2020-12-12' AS Date), N'admin')
INSERT [dbo].[Users] ([Id], [Name], [Gender], [Username], [Password], [Email], [Phone], [Address], [Created], [UserRole]) VALUES (1051, N'Khanh', 1, N'khanh123', N'abc123', N'khanhngu123@gmail.com', N'0812937128', N'Quận 7', CAST(N'2020-12-12' AS Date), N'client')
INSERT [dbo].[Users] ([Id], [Name], [Gender], [Username], [Password], [Email], [Phone], [Address], [Created], [UserRole]) VALUES (1052, N'NyNy', 0, N'nyny123', N'abc123', N'nyny123@gmail.com', N'07326437782', N'HN', CAST(N'2020-12-12' AS Date), N'client')
INSERT [dbo].[Users] ([Id], [Name], [Gender], [Username], [Password], [Email], [Phone], [Address], [Created], [UserRole]) VALUES (1053, N'Huế Anh', 0, N'mama123', N'abc123', N'mama123@gmail.com', N'0213891232', N'TPHCM', CAST(N'2020-12-12' AS Date), N'client')
INSERT [dbo].[Users] ([Id], [Name], [Gender], [Username], [Password], [Email], [Phone], [Address], [Created], [UserRole]) VALUES (1054, N'abc', 1, N'abc1', N'abc123', N'abc123@gmail.com', N'0123923823', N'TPHCM', CAST(N'2020-12-12' AS Date), N'client')
INSERT [dbo].[Users] ([Id], [Name], [Gender], [Username], [Password], [Email], [Phone], [Address], [Created], [UserRole]) VALUES (1057, N'hiep', 1, N'hiep123abc', N'abc123', N'phanhiep243@gmail.com', N'0564564564', N'HN', CAST(N'2021-01-07' AS Date), N'client')
SET IDENTITY_INSERT [dbo].[Users] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Category]    Script Date: 1/12/2021 7:33:27 PM ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [IX_Category] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Products]    Script Date: 1/12/2021 7:33:27 PM ******/
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [IX_Products] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Status]    Script Date: 1/12/2021 7:33:27 PM ******/
ALTER TABLE [dbo].[Status] ADD  CONSTRAINT [IX_Status] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Users]    Script Date: 1/12/2021 7:33:27 PM ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [IX_Users] UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProId])
REFERENCES [dbo].[Products] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Status]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Category] FOREIGN KEY([CateId])
REFERENCES [dbo].[Category] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Category]
GO
