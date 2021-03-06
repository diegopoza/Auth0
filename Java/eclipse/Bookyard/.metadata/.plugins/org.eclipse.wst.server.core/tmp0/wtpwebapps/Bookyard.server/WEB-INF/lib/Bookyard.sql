USE [Bookyard]
GO
/****** Object:  Table [dbo].[AccessToken]    Script Date: 9/1/2016 8:06:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessToken](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[ApplicationTableId] [int] NOT NULL,
	[ApplicationId] [nvarchar](50) NOT NULL,
	[AccessToken] [nvarchar](500) NULL,
	[ExpiryDate] [datetime2](7) NULL,
 CONSTRAINT [PK_AccessToken] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Application]    Script Date: 9/1/2016 8:06:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Application](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ApplicationId] [nvarchar](50) NOT NULL,
	[ApplicationSecret] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Application] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Book]    Script Date: 9/1/2016 8:06:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Author] [nvarchar](100) NULL,
	[Description] [nvarchar](1000) NULL,
	[AmazonUrl] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Likeable]    Script Date: 9/1/2016 8:06:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Likeable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Likeable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Membership]    Script Date: 9/1/2016 8:06:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Membership](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[ApplicationTableId] [int] NOT NULL,
	[ApplicationId] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Membership] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 9/1/2016 8:06:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[PasswordHash] [nvarchar](500) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserLike]    Script Date: 9/1/2016 8:06:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLike](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[LikeableId] [int] NOT NULL,
 CONSTRAINT [PK_UserLike] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[AccessToken] ON 

INSERT [dbo].[AccessToken] ([Id], [UserId], [UserName], [ApplicationTableId], [ApplicationId], [AccessToken], [ExpiryDate]) VALUES (4, 1, N'Sathyaish', 1, N'BookyardClient_123', N'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJBY2Nlc3NUb2tlbiIsImdlbmVyYXRlZFRpbWVzdGFtcCI6MTQ3MjczNTc2OTE3MiwiYXBwSWQiOiJCb29reWFyZENsaWVudF8xMjMiLCJpc3MiOiJCb29reWFyZCBTZXJ2ZXIiLCJmdWxsTmFtZSI6IlNhdGh5YWlzaCBDaGFrcmF2YXJ0aHkiLCJhcHBsaWNhdGlvblRhYmxlSWQiOjEsInVzZXJOYW1lIjoiU2F0aHlhaXNoIiwiZXhwIjoxNDcyNzM5MzY5LCJ1c2VySWQiOjEsImVtYWlsIjoiU2F0aHlhaXNoQGdtYWlsLmNvbSJ9.T8p8wq8D9LVjZchQBAcNC3UjDRStzWbcSJxM9SxQ8PY', CAST(N'2016-09-01 19:46:09.1720000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[AccessToken] OFF
SET IDENTITY_INSERT [dbo].[Application] ON 

INSERT [dbo].[Application] ([Id], [Name], [ApplicationId], [ApplicationSecret]) VALUES (1, N'Bookyard Desktop Client', N'BookyardClient_123', N'Auth0 is awesome!')
SET IDENTITY_INSERT [dbo].[Application] OFF
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([Id], [Name], [Author], [Description], [AmazonUrl]) VALUES (1, N'C# in Depth', N'Jon Skeet', N'C# in Depth, Third Edition updates the best-selling second edition to cover the new features of C# 5, including the challenges of writing maintainable asynchronous code. It preserves the uniquely insightful look into the tricky areas and dusty corners of C# that only expert Jon Skeet can provide. ', N'https://www.amazon.com/C-Depth-3rd-Jon-Skeet/dp/161729134X/ref=cm_cr_arp_d_product_top?ie=UTF8')
INSERT [dbo].[Book] ([Id], [Name], [Author], [Description], [AmazonUrl]) VALUES (2, N'Programming in the Key of C#', N'Charles Petzold', N'Learning to program is like learning a musical instrument. It takes dedication, lots of practice, and a great teacher. This primer-created by award-winning author Charles Petzold-focuses on the fundamentals of composing code with C#, an intuitive object-oriented programming language ideal for creating solutions for Microsoft Windows and the Web. Whether you''re new to programming or new to C#, you''ll quickly build the skills you need to orchestrate your own applications in the key of C#.', N'https://www.amazon.com/Programming-Key-Programmers-Developer-Reference/dp/0735618003')
INSERT [dbo].[Book] ([Id], [Name], [Author], [Description], [AmazonUrl]) VALUES (3, N'Kotlin for Android Developers', N'Antonio Leiva', N'Are you tired of using an ancient, inexpressive and unsafe language to develop your Android apps? Do you cry out loud every time you see a Null Pointer Exception in your bug tracker? Then Kotlin is your solution! A language specifically created for Java developers, easy to learn, expressive, null safe and really intuitive. Your productivity will boost and your apps will become more robust. Learn Kotlin the easy way by example and discover the tricks that will make coding easier. In this book, I''ll be creating an Android app from ground using Kotlin as the main language. The idea is to learn the language by example, instead of following a typical structure. I''ll be stopping to explain the most interesting concepts and ideas about Kotlin, comparing it with Java 7.', N'https://www.amazon.com/Kotlin-Android-Developers-Learn-developing/dp/1530075610/ref=sr_1_1?s=books&ie=UTF8&qid=1472642258&sr=1-1')
INSERT [dbo].[Book] ([Id], [Name], [Author], [Description], [AmazonUrl]) VALUES (4, N'Programming .NET Components', N'Juval Lowy', N'Brilliantly compiled by author Juval Lowy, Programming .NET Components, Second Edition is the consummate introduction to the Microsoft .NET Framework--the technology of choice for building components on Windows platforms.', N'https://www.amazon.com/Programming-NET-Components-Juval-Lowy/dp/0596102070')
INSERT [dbo].[Book] ([Id], [Name], [Author], [Description], [AmazonUrl]) VALUES (6, N'Apples', N'Gail Gibbons', N'PreSchool-Grade 2-In her characteristic, easily understood, and straightforward style, Gibbons gives an overview of apples. She traces their history in America, shows their parts, and explains their growth, harvest, and uses. ', N'https://www.amazon.com/Apples-Gail-Gibbons/dp/0823416690')
INSERT [dbo].[Book] ([Id], [Name], [Author], [Description], [AmazonUrl]) VALUES (7, N'Intro to Java Programming, Comprehensive Version (10th Edition)', N'Y. Daniel Liang', N'Thanks to Liang''s creative ways to challenge us through programming problems such as moving a ball across a sine wave or creating a random-walk pattern, I''ve created many cool programs that no other study of programming had ever taught me. His programming challenges grasp your mind into the passion of puzzle solving and you''ll be so addicted that you can''t stop working on the problem until you''ve created something you can be proud of and thus increase your confidence as a programmer and excel to the top of your field.', N'https://www.amazon.com/Intro-Java-Programming-Comprehensive-Version/dp/0133761312/ref=sr_1_1?s=books&ie=UTF8&qid=1472642491&sr=1-1')
INSERT [dbo].[Book] ([Id], [Name], [Author], [Description], [AmazonUrl]) VALUES (8, N'Building Java Programs: A Back to Basics Approach (4th Edition)', N'Stuart Reges', N'There are a lot of resources for learning to code, but not a lot of good ones. Teaching and explaining things clearly is a skill. This book was written by people with that skill.', N'https://www.amazon.com/Building-Java-Programs-Basics-Approach/dp/0134322762/ref=sr_1_3?s=books&ie=UTF8&qid=1472642491&sr=1-3')
INSERT [dbo].[Book] ([Id], [Name], [Author], [Description], [AmazonUrl]) VALUES (9, N'Python Essential Reference (4th Edition)', N'David Beazley', N'Python Essential Reference is the definitive reference guide to the Python programming language — the one authoritative handbook that reliably untangles and explains both the core Python language and the most essential parts of the Python library.', N'https://www.amazon.com/Python-Essential-Reference-David-Beazley/dp/0672329786')
INSERT [dbo].[Book] ([Id], [Name], [Author], [Description], [AmazonUrl]) VALUES (10, N'The Quick Python Book, Second Edition', N'Vernon L. Ceder', N'The Quick Python Book, Second Edition, is a clear, concise introduction to Python 3, aimed at programmers new to Python. This updated edition includes all the changes in Python 3, itself a significant shift from earlier versions of Python.', N'https://www.amazon.com/Quick-Python-Book-Second/dp/193518220X')
INSERT [dbo].[Book] ([Id], [Name], [Author], [Description], [AmazonUrl]) VALUES (11, N'Structure and Interpretation of Computer Programs - 2nd Edition (MIT Electrical Engineering and Computer Science)', N'Harold Abelson, Gerald Jay Sussman, Julie Sussman', N'Structure and Interpretation of Computer Programs has had a dramatic impact on computer science curricula over the past decade. This long-awaited revision contains changes throughout the text. There are new implementations of most of the major programming systems in the book, including the interpreters and compilers, and the authors have incorporated many small changes that reflect their experience teaching the course at MIT since the first edition was published.', N'https://www.amazon.com/Structure-Interpretation-Computer-Programs-Engineering/dp/0262510871/ref=sr_1_1?s=books&ie=UTF8&qid=1472642780&sr=1-1&keywords=the+structure+and+interpretation+of+computer+programs')
INSERT [dbo].[Book] ([Id], [Name], [Author], [Description], [AmazonUrl]) VALUES (12, N'The Pragmatic Programmer: From Journeyman to Master', N'Andrew Hunt, Dave Thomas', N'Ward Cunningham Straight from the programming trenches, The Pragmatic Programmer cuts through the increasing specialization and technicalities of modern software development to examine the core process--taking a requirement and producing working, maintainable code that delights its users. It covers topics ranging from personal responsibility and career development to architectural techniques for keeping your code flexible and easy to adapt and reuse.', N'https://www.amazon.com/Pragmatic-Programmer-Journeyman-Master/dp/020161622X/ref=sr_1_2?s=books&ie=UTF8&qid=1472642780&sr=1-2&keywords=the+structure+and+interpretation+of+computer+programs')
INSERT [dbo].[Book] ([Id], [Name], [Author], [Description], [AmazonUrl]) VALUES (13, N'Head First Java, 2nd Edition', N'Kathy Sierra, Bert Bates', N'Learning a complex new language is no easy task especially when it s an object-oriented computer programming language like Java. You might think the problem is your brain. It seems to have a mind of its own, a mind that doesn''t always want to take in the dry, technical stuff you''re forced to study.
', N'https://www.amazon.com/Head-First-Java-Kathy-Sierra/dp/0596009208/ref=zg_bs_3608_5')
INSERT [dbo].[Book] ([Id], [Name], [Author], [Description], [AmazonUrl]) VALUES (14, N'
Effective Java (2nd Edition)', N'Joshua Bloch', N'Are you looking for a deeper understanding of the Java™ programming language so that you can write code that is clearer, more correct, more robust, and more reusable? Look no further! Effective Java™, Second Edition, brings together seventy-eight indispensable programmer’s rules of thumb: working, best-practice solutions for the programming challenges you encounter every day.', N'https://www.amazon.com/Effective-Java-2nd-Joshua-Bloch/dp/0321356683')
INSERT [dbo].[Book] ([Id], [Name], [Author], [Description], [AmazonUrl]) VALUES (15, N'The Mythical Man-Month: Essays on Software Engineering, Anniversary Edition (2nd Edition)', N'Frederick P. Brooks Jr.', N'Few books on software project management have been as influential and timeless as The Mythical Man-Month. With a blend of software engineering facts and thought-provoking opinions, Fred Brooks offers insight for anyone managing complex projects. These essays draw from his experience as project manager for the IBM System/360 computer family and then for OS/360, its massive software system.', N'https://www.amazon.com/Mythical-Man-Month-Software-Engineering-Anniversary/dp/0201835959')
INSERT [dbo].[Book] ([Id], [Name], [Author], [Description], [AmazonUrl]) VALUES (16, N'The Elements of Style', N'William Strunk Jr.', N'"The Elements of Style" is one of the definitive texts on all elements of English language style, usage, and composition. Strunk covers such topics as "elementary Rules of Usage," "Elementary Principles of Composition," "A Few Matters of Form," "Words and Expressions Commonly Misused," and "Words Often Misspelled."', N'https://www.amazon.com/Elements-Style-William-Strunk-Jr/dp/1557427283')
SET IDENTITY_INSERT [dbo].[Book] OFF
SET IDENTITY_INSERT [dbo].[Likeable] ON 

INSERT [dbo].[Likeable] ([Id], [Name]) VALUES (1, N'Python')
INSERT [dbo].[Likeable] ([Id], [Name]) VALUES (2, N'C#')
INSERT [dbo].[Likeable] ([Id], [Name]) VALUES (3, N'Kotlin')
INSERT [dbo].[Likeable] ([Id], [Name]) VALUES (4, N'Apples')
INSERT [dbo].[Likeable] ([Id], [Name]) VALUES (5, N'Java')
INSERT [dbo].[Likeable] ([Id], [Name]) VALUES (6, N'Programming')
INSERT [dbo].[Likeable] ([Id], [Name]) VALUES (7, N'Programmer')
INSERT [dbo].[Likeable] ([Id], [Name]) VALUES (8, N'Computer')
INSERT [dbo].[Likeable] ([Id], [Name]) VALUES (9, N'Language')
SET IDENTITY_INSERT [dbo].[Likeable] OFF
SET IDENTITY_INSERT [dbo].[Membership] ON 

INSERT [dbo].[Membership] ([Id], [UserId], [UserName], [ApplicationTableId], [ApplicationId]) VALUES (1, 1, N'Sathyaish', 1, N'BookyardClient_123')
SET IDENTITY_INSERT [dbo].[Membership] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [UserName], [PasswordHash], [FullName], [Email]) VALUES (1, N'Sathyaish', N'fq0LvFY8lVwX7QWnErcBDg==', N'Sathyaish Chakravarthy', N'Sathyaish@gmail.com')
SET IDENTITY_INSERT [dbo].[User] OFF
SET IDENTITY_INSERT [dbo].[UserLike] ON 

INSERT [dbo].[UserLike] ([Id], [UserId], [UserName], [LikeableId]) VALUES (1, 1, N'Sathyaish', 1)
INSERT [dbo].[UserLike] ([Id], [UserId], [UserName], [LikeableId]) VALUES (2, 1, N'Sathyaish', 2)
INSERT [dbo].[UserLike] ([Id], [UserId], [UserName], [LikeableId]) VALUES (3, 1, N'Sathyaish', 3)
INSERT [dbo].[UserLike] ([Id], [UserId], [UserName], [LikeableId]) VALUES (4, 1, N'Sathyaish', 6)
SET IDENTITY_INSERT [dbo].[UserLike] OFF
ALTER TABLE [dbo].[AccessToken]  WITH CHECK ADD  CONSTRAINT [FK_AccessToken_Application] FOREIGN KEY([ApplicationTableId])
REFERENCES [dbo].[Application] ([Id])
GO
ALTER TABLE [dbo].[AccessToken] CHECK CONSTRAINT [FK_AccessToken_Application]
GO
ALTER TABLE [dbo].[AccessToken]  WITH CHECK ADD  CONSTRAINT [FK_AccessToken_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[AccessToken] CHECK CONSTRAINT [FK_AccessToken_User]
GO
ALTER TABLE [dbo].[Membership]  WITH CHECK ADD  CONSTRAINT [FK_Membership_Application] FOREIGN KEY([ApplicationTableId])
REFERENCES [dbo].[Application] ([Id])
GO
ALTER TABLE [dbo].[Membership] CHECK CONSTRAINT [FK_Membership_Application]
GO
ALTER TABLE [dbo].[Membership]  WITH CHECK ADD  CONSTRAINT [FK_Membership_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Membership] CHECK CONSTRAINT [FK_Membership_User]
GO
ALTER TABLE [dbo].[UserLike]  WITH CHECK ADD  CONSTRAINT [FK_UserLike_Likeable] FOREIGN KEY([LikeableId])
REFERENCES [dbo].[Likeable] ([Id])
GO
ALTER TABLE [dbo].[UserLike] CHECK CONSTRAINT [FK_UserLike_Likeable]
GO
ALTER TABLE [dbo].[UserLike]  WITH CHECK ADD  CONSTRAINT [FK_UserLike_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[UserLike] CHECK CONSTRAINT [FK_UserLike_User]
GO
