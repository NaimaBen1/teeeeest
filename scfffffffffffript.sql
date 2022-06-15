USE [Fidiati]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 15/06/2022 17:58:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[customerId] [int] IDENTITY(1,1) NOT NULL,
	[CIN] [varchar](10) NULL,
	[fullName] [varchar](250) NULL,
	[alias] [varchar](250) NULL,
	[birthDate] [datetime] NULL,
	[gender] [varchar](250) NULL,
	[status] [varchar](250) NULL,
	[homeAdresse] [varchar](250) NULL,
	[serviceAdresse] [varchar](250) NULL,
	[email] [varchar](250) NULL,
	[languages] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[customerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customerNote]    Script Date: 15/06/2022 17:58:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customerNote](
	[CustomerId] [int] NULL,
	[customerName] [varchar](250) NULL,
	[bodyNote] [varchar](500) NULL,
	[subject] [varchar](250) NULL,
	[statusNote] [varchar](250) NULL,
	[NoteDate] [datetime] NULL,
	[creationDate] [datetime] NULL,
	[userName] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerProfile]    Script Date: 15/06/2022 17:58:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerProfile](
	[customerId] [int] NULL,
	[customerName] [varchar](250) NULL,
	[phoneNumber1] [varchar](250) NULL,
	[phoneNumber2] [varchar](250) NULL,
	[phoneNumber3] [varchar](250) NULL,
	[resRelationship] [varchar](250) NULL,
	[responsableName] [varchar](250) NULL,
	[responsablePhone] [varchar](250) NULL,
	[postalCode] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 15/06/2022 17:58:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[serviceId] [int] IDENTITY(1,1) NOT NULL,
	[serviceName] [varchar](250) NULL,
	[domainId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[serviceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Domain]    Script Date: 15/06/2022 17:58:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Domain](
	[domainId] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[domainId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[emergencycontactCustomer]    Script Date: 15/06/2022 17:58:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emergencycontactCustomer](
	[customerId] [int] NULL,
	[customerName] [varchar](250) NULL,
	[bloodGroup] [varchar](250) NULL,
	[alergie] [bit] NULL,
	[sicknessType] [varchar](250) NULL,
	[doctorName] [varchar](250) NULL,
	[doctorPhone] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[emergencycontactVenor]    Script Date: 15/06/2022 17:58:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emergencycontactVenor](
	[VendorId] [int] NULL,
	[VendorName] [varchar](250) NULL,
	[bloodGroup] [varchar](250) NULL,
	[alergie] [bit] NULL,
	[medicalConditions] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[facture]    Script Date: 15/06/2022 17:58:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[facture](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[transactionId] [int] NULL,
	[customerId] [int] NULL,
	[customerName] [varchar](250) NULL,
	[transactionDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 15/06/2022 17:58:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[itemId] [int] IDENTITY(1,1) NOT NULL,
	[serviceName] [varchar](250) NULL,
	[Price] [float] NULL,
	[startDate] [datetime] NULL,
	[endDate] [datetime] NULL,
	[quantity] [int] NULL,
	[frequancy] [varchar](250) NULL,
	[userName] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[itemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Job]    Script Date: 15/06/2022 17:58:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[jobId] [int] IDENTITY(1,1) NOT NULL,
	[serviceId] [int] NULL,
	[serviceName] [varchar](250) NULL,
	[VendorId] [int] NULL,
	[vendorName] [varchar](250) NULL,
	[CustomerId] [int] NULL,
	[customerName] [varchar](250) NULL,
	[frequency] [varchar](250) NULL,
	[quantity] [int] NULL,
	[mandate] [varchar](250) NULL,
	[startDate] [datetime] NULL,
	[endDate] [datetime] NULL,
	[firstDate] [datetime] NULL,
	[userName] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[jobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log]    Script Date: 15/06/2022 17:58:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log](
	[recordId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[userName] [varchar](250) NULL,
	[tableName] [varchar](250) NULL,
	[oldRecord] [varchar](250) NULL,
	[newRecord] [varchar](250) NULL,
	[logDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[recordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notedropdown]    Script Date: 15/06/2022 17:58:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notedropdown](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dropdownName] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERSONAL]    Script Date: 15/06/2022 17:58:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERSONAL](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](250) NULL,
	[password] [varchar](250) NULL,
	[fullName] [varchar](250) NULL,
	[CIN] [varchar](250) NULL,
	[phoneNumber] [varchar](250) NULL,
	[birthDay] [date] NULL,
	[alias] [varchar](250) NULL,
	[emergencyContact] [varchar](250) NULL,
	[Gender] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[salary]    Script Date: 15/06/2022 17:58:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[salary](
	[salaryId] [int] IDENTITY(1,1) NOT NULL,
	[serviceName] [varchar](250) NULL,
	[Price] [float] NULL,
	[startDate] [datetime] NULL,
	[endDate] [datetime] NULL,
	[quantity] [int] NULL,
	[frequancy] [varchar](250) NULL,
	[userName] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[salaryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[schedule]    Script Date: 15/06/2022 17:58:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schedule](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[VendorId] [int] NULL,
	[vendorName] [varchar](250) NULL,
	[jobId] [int] NULL,
	[serviceName] [varchar](250) NULL,
	[customerName] [varchar](250) NULL,
	[startTime] [datetime] NULL,
	[endTime] [datetime] NULL,
	[Location] [varchar](250) NULL,
	[quantity] [int] NULL,
	[frequancy] [varchar](250) NULL,
	[mandate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trackBycostumer]    Script Date: 15/06/2022 17:58:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trackBycostumer](
	[customerName] [varchar](250) NULL,
	[serviceName] [varchar](250) NULL,
	[VendorName] [varchar](250) NULL,
	[ServiceDate] [datetime] NULL,
	[AmountPaid] [float] NULL,
	[transactionDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trackByVendor]    Script Date: 15/06/2022 17:58:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trackByVendor](
	[customerName] [varchar](250) NULL,
	[serviceName] [varchar](250) NULL,
	[VendorName] [varchar](250) NULL,
	[ServiceDate] [datetime] NULL,
	[AmountPaid] [float] NULL,
	[transactionDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transaction]    Script Date: 15/06/2022 17:58:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transaction](
	[transactionId] [int] IDENTITY(1,1) NOT NULL,
	[customerName] [varchar](250) NULL,
	[vendorName] [varchar](250) NULL,
	[serviceName] [varchar](250) NULL,
	[ServiceDate] [datetime] NULL,
	[statut] [varchar](250) NULL,
	[transactionDate] [datetime] NULL,
	[timeTransaction] [time](7) NULL,
	[location] [varchar](250) NULL,
	[Mandate] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[transactionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 15/06/2022 17:58:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor](
	[VendorId] [int] IDENTITY(1,1) NOT NULL,
	[CIN] [varchar](10) NULL,
	[fullName] [varchar](250) NULL,
	[birthDate] [date] NULL,
	[hireDate] [datetime] NULL,
	[socialinsurenceNumber] [int] NULL,
	[driverLicense] [varchar](250) NULL,
	[gender] [varchar](250) NULL,
	[email] [varchar](250) NULL,
	[language] [varchar](250) NULL,
	[status] [varchar](250) NULL,
	[Education] [varchar](250) NULL,
	[studies] [varchar](250) NULL,
	[children] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[VendorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VendorProfile]    Script Date: 15/06/2022 17:58:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorProfile](
	[VendorId] [int] NULL,
	[VendorName] [varchar](250) NULL,
	[city] [varchar](250) NULL,
	[street] [varchar](250) NULL,
	[phoneNumber1] [varchar](250) NULL,
	[phoneNumber2] [varchar](250) NULL,
	[phoneNumber3] [varchar](250) NULL,
	[resRelationship] [varchar](250) NULL,
	[responsableName] [varchar](250) NULL,
	[responsablePhone] [varchar](250) NULL,
	[postalCode] [int] NULL,
	[evaluation] [varchar](250) NULL,
	[JudicialFile] [varchar](250) NULL,
	[medicalTest] [varchar](250) NULL,
	[vaccinationPermit] [varchar](250) NULL,
	[resume] [varchar](250) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[customerNote]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([customerId])
GO
ALTER TABLE [dbo].[CustomerProfile]  WITH CHECK ADD FOREIGN KEY([customerId])
REFERENCES [dbo].[Vendor] ([VendorId])
GO
ALTER TABLE [dbo].[Department]  WITH CHECK ADD FOREIGN KEY([domainId])
REFERENCES [dbo].[Domain] ([domainId])
GO
ALTER TABLE [dbo].[emergencycontactCustomer]  WITH CHECK ADD FOREIGN KEY([customerId])
REFERENCES [dbo].[Vendor] ([VendorId])
GO
ALTER TABLE [dbo].[emergencycontactVenor]  WITH CHECK ADD FOREIGN KEY([VendorId])
REFERENCES [dbo].[Vendor] ([VendorId])
GO
ALTER TABLE [dbo].[facture]  WITH CHECK ADD FOREIGN KEY([customerId])
REFERENCES [dbo].[Customer] ([customerId])
GO
ALTER TABLE [dbo].[facture]  WITH CHECK ADD FOREIGN KEY([transactionId])
REFERENCES [dbo].[transaction] ([transactionId])
GO
ALTER TABLE [dbo].[Job]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([customerId])
GO
ALTER TABLE [dbo].[Job]  WITH CHECK ADD FOREIGN KEY([serviceId])
REFERENCES [dbo].[Domain] ([domainId])
GO
ALTER TABLE [dbo].[Job]  WITH CHECK ADD FOREIGN KEY([VendorId])
REFERENCES [dbo].[Vendor] ([VendorId])
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[PERSONAL] ([userId])
GO
ALTER TABLE [dbo].[schedule]  WITH CHECK ADD FOREIGN KEY([jobId])
REFERENCES [dbo].[Job] ([jobId])
GO
ALTER TABLE [dbo].[schedule]  WITH CHECK ADD FOREIGN KEY([VendorId])
REFERENCES [dbo].[Vendor] ([VendorId])
GO
ALTER TABLE [dbo].[VendorProfile]  WITH CHECK ADD FOREIGN KEY([VendorId])
REFERENCES [dbo].[Vendor] ([VendorId])
GO
