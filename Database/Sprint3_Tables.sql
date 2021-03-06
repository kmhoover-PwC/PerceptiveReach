USE [Reach]
GO
/****** Object:  Table [dbo].[Ref_Region]    Script Date: 11/6/2014 7:59:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ref_Region](
	[RegionID] [int] NOT NULL,
	[RegionName] [varchar](50) NULL,
 CONSTRAINT [PK_RegionID] PRIMARY KEY CLUSTERED 
(
	[RegionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ref_State]    Script Date: 11/6/2014 7:59:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ref_State](
	[StateAbbr] [char](2) NOT NULL,
	[StateName] [varchar](50) NULL,
	[RegionID] [int] NULL,
 CONSTRAINT [PK_StateAbbr] PRIMARY KEY CLUSTERED 
(
	[StateAbbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ref_VAMC]    Script Date: 11/6/2014 7:59:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ref_VAMC](
	[VAMCID] [int] NOT NULL,
	[VISN] [int] NULL,
	[STA3N] [varchar](5) NULL,
	[STA6AID] [varchar](5) NULL,
	[VAMC] [varchar](100) NULL,
	[StateAbbr] [char](2) NULL,
 CONSTRAINT [PK_VAMCID] PRIMARY KEY CLUSTERED 
(
	[VAMCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ref_VISN]    Script Date: 11/6/2014 7:59:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ref_VISN](
	[VISN] [int] NOT NULL,
	[NetworkName] [varchar](100) NULL,
	[RegionServed] [varchar](500) NULL,
	[RegionID] [int] NULL,
 CONSTRAINT [PK_VISN] PRIMARY KEY CLUSTERED 
(
	[VISN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VeteranRisk]    Script Date: 11/6/2014 7:59:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VeteranRisk](
	[ReachID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[MiddleName] [varchar](50) NULL,
	[SSN] [varchar](9) NULL,
	[Phone] [varchar](10) NULL,
	[AltPhone] [varchar](10) NULL,
	[Address] [varchar](100) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](2) NULL,
	[Zip] [varchar](5) NULL,
	[DateIdentifiedRisk] [datetime] NULL,
	[EmergencyContact] [varchar](100) NULL,
	[Relationship] [varchar](20) NULL,
	[EC_Phone] [varchar](10) NULL,
	[EC_AltPhone] [varchar](10) NULL,
	[EC_Address] [varchar](100) NULL,
	[EC_City] [varchar](50) NULL,
	[EC_State] [varchar](2) NULL,
	[EC_Zip] [varchar](5) NULL,
	[UrbanArea] [bit] NULL,
	[Age] [int] NULL,
	[Gender] [char](1) NULL,
	[Race] [varchar](20) NULL,
	[CriminalRecord] [bit] NULL,
	[HistSubstanceAbuse] [bit] NULL,
	[PreviousPsychiatricHospitalization] [bit] NULL,
	[PreviousSuicideAttempts] [bit] NULL,
	[DiagnosedTBI] [bit] NULL,
	[VAMC] [int] NULL,
	[Score] [decimal](5, 2) NULL,
 CONSTRAINT [PK_ReachID] PRIMARY KEY CLUSTERED 
(
	[ReachID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Ref_Region] ([RegionID], [RegionName]) VALUES (1, N'Eastern')
INSERT [dbo].[Ref_Region] ([RegionID], [RegionName]) VALUES (2, N'Southern')
INSERT [dbo].[Ref_Region] ([RegionID], [RegionName]) VALUES (3, N'Central')
INSERT [dbo].[Ref_Region] ([RegionID], [RegionName]) VALUES (4, N'Western')
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'AK', N'Alaska', 4)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'AL', N'Alabama', 2)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'AR', N'Arkansas', 2)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'AS', N'American Samoa', 4)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'AZ', N'Arizona', 4)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'CA', N'California', 4)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'CN', N'Canada', NULL)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'CO', N'Colorado', 3)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'CT', N'Connecticut', 1)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'CU', N'Cuba', NULL)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'DC', N'District of Columbia', 1)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'DE', N'Delaware', 1)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'FL', N'Florida', 2)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'FM', N'Federated States of Micronesia', NULL)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'GA', N'Georgia', 2)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'GU', N'Guam', 4)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'HI', N'Hawaii', 4)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'IA', N'Iowa', 3)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'ID', N'Idaho', 4)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'IL', N'Illinois', 3)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'IN', N'Indiana', 1)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'KS', N'Kansas', 3)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'KY', N'Kentucky', 2)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'LA', N'Louisiana', 2)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'MA', N'Massachusetts', 1)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'MD', N'Maryland', 1)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'ME', N'Maine', 1)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'MH', N'Marshall Islands', NULL)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'MI', N'Michigan', 1)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'MN', N'Minnesota', 3)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'MO', N'Missouri', 3)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'MP', N'Northern Mariana Islands', NULL)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'MS', N'Mississippi', 2)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'MT', N'Montana', 4)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'MX', N'Mexico', NULL)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'NC', N'North Carolina', 2)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'ND', N'North Dakota', 3)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'NE', N'Nebraska', 3)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'NH', N'New Hampshire', 1)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'NJ', N'New Jersey', 1)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'NM', N'New Mexico', 4)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'NV', N'Nevada', 4)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'NY', N'New York', 1)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'OH', N'Ohio', 1)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'OK', N'Oklahoma', 3)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'OR', N'Oregon', 4)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'PA', N'Pennsylvania', 1)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'PH', N'Phillippines', 4)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'PR', N'Puerto Rico', 2)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'PW', N'Palua', NULL)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'RI', N'Rhode Island', 1)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'SC', N'South Carolina', 2)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'SD', N'South Dakota', 3)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'TN', N'Tennessee', 2)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'TX', N'Texas', 3)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'UT', N'Utah', 4)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'VA', N'Virginia', 2)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'VI', N'Virgin Islands', 2)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'VT', N'Vermont', 1)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'WA', N'Washington', 4)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'WI', N'Wisconsin', 3)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'WV', N'West Virginia', 2)
INSERT [dbo].[Ref_State] ([StateAbbr], [StateName], [RegionID]) VALUES (N'WY', N'Wyoming', 4)
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (1, 1, N'402', N'402', N'(V01) (402) Togus, ME', N'ME')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (2, 1, N'405', N'405', N'(V01) (405) White River Junction, VT', N'VT')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (3, 1, N'518', N'518', N'(V01) (518) Bedford, MA', N'MA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (4, 1, N'523', N'523', N'(V01) (523) VA Boston HCS, MA', N'MA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (5, 1, N'608', N'608', N'(V01) (608) Manchester, NH', N'NH')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (6, 1, N'631', N'631', N'(V01) (631) Northhampton, MA', N'MA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (7, 1, N'650', N'650', N'(V01) (650) Providence, RI', N'RI')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (8, 1, N'689', N'689', N'(V01) (689) VA Connecticut HCS, CT', N'CT')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (9, 10, N'538', N'538', N'(V10) (538) Chillicothe, OH', N'OH')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (10, 10, N'539', N'539', N'(V10) (539) Cincinnati, OH', N'OH')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (11, 10, N'541', N'541', N'(V10) (541) Cleveland- Wade Park, OH', N'OH')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (12, 10, N'552', N'552', N'(V10) (552) Dayton, OH', N'OH')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (13, 10, N'757', N'757', N'(V10) (757) Columbus, OH', N'OH')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (14, 11, N'506', N'506', N'(V11) (506) Ann Arbor, MI', N'MI')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (15, 11, N'515', N'515', N'(V11) (515) Battle Creek, MI', N'MI')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (16, 11, N'550', N'550', N'(V11) (550) Danville, IL', N'IL')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (17, 11, N'553', N'553', N'(V11) (553) Detroit, MI', N'MI')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (18, 11, N'583', N'583', N'(V11) (583) Indianapolis, IN', N'IN')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (19, 11, N'610', N'610', N'(V11) (610) Northern Indiana HCS, IN', N'IN')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (20, 11, N'655', N'655', N'(V11) (655) Saginaw, MI', N'MI')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (21, 12, N'537', N'537', N'(V12) (537) Chicago (W.Side), IL', N'IL')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (22, 12, N'556', N'556', N'(V12) (556) North Chicago, IL', N'IL')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (23, 12, N'578', N'578', N'(V12) (578) Hines, IL', N'IL')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (24, 12, N'585', N'585', N'(V12) (585) Iron Mountain, MI', N'MI')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (25, 12, N'607', N'607', N'(V12) (607) Madison, WI', N'WI')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (26, 12, N'676', N'676', N'(V12) (676) Tomah, WI', N'WI')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (27, 12, N'695', N'695', N'(V12) (695) Milwaukee, WI', N'WI')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (37, 15, N'452', N'452', N'(V15) (589) Wichita, KS', N'KS')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (38, 15, N'543', N'543', N'(V15) (589) Columbia, MO', N'MO')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (39, 15, N'589', N'589', N'(V15) (589) Kansas City, MO', N'MO')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (40, 15, N'609', N'609', N'(V15) (657) Marion, IL', N'IL')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (41, 15, N'647', N'647', N'(V15) (657) Poplar Bluff, MO', N'MO')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (42, 15, N'657', N'657', N'(V15) (657) St. Louis, MO', N'MO')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (43, 15, N'677', N'677', N'(V15) (589) Eastern KS HCS, KS', N'KS')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (44, 16, N'502', N'502', N'(V16) (502) Alexandria, LA', N'LA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (45, 16, N'520', N'520', N'(V16) (520) Biloxi, MS', N'MS')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (46, 16, N'564', N'564', N'(V16) (564) Fayetteville, AR', N'AR')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (47, 16, N'580', N'580', N'(V16) (580) Houston, TX', N'TX')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (48, 16, N'586', N'586', N'(V16) (586) Jackson, MS', N'MS')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (49, 16, N'598', N'598', N'(V16) (598) Little Rock, AR', N'AR')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (50, 16, N'623', N'623', N'(V16) (623) Muskogee, OK', N'OK')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (51, 16, N'629', N'629', N'(V16) (629) New Orleans, LA', N'LA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (52, 16, N'635', N'635', N'(V16) (635) Oklahoma City, OK', N'OK')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (53, 16, N'667', N'667', N'(V16) (667) Shreveport, LA', N'LA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (54, 17, N'549', N'549', N'(V17) (549) Dallas, TX', N'TX')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (55, 17, N'671', N'671', N'(V17) (671) San Antonio, TX', N'TX')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (56, 17, N'674', N'674', N'(V17) (674) Temple, TX', N'TX')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (57, 18, N'501', N'501', N'(V18) (501) Albuquerque, NM', N'NM')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (58, 18, N'504', N'504', N'(V18) (504) Amarillo, TX', N'TX')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (59, 18, N'519', N'519', N'(V18) (519) Big Spring, TX', N'TX')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (60, 18, N'644', N'644', N'(V18) (644) Phoenix, AZ', N'AZ')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (61, 18, N'649', N'649', N'(V18) (649) Prescott, AZ', N'AZ')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (62, 18, N'678', N'678', N'(V18) (678) Tucson, AZ', N'AZ')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (63, 18, N'756', N'756', N'(V18) (756) El Paso, TX', N'TX')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (64, 19, N'436', N'436', N'(V19) (436) Fort Harrison, MT', N'MT')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (65, 19, N'442', N'442', N'(V19) (442) Cheyenne, WY', N'WY')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (66, 19, N'554', N'554', N'(V19) (554) Denver, CO', N'CO')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (67, 19, N'575', N'575', N'(V19) (575) Grand Junction, CO', N'CO')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (68, 19, N'660', N'660', N'(V19) (660) Salt Lake City, UT', N'UT')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (69, 19, N'666', N'666', N'(V19) (666) Sheridan, WY', N'WY')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (70, 2, N'528', N'528A8', N'(V02) (528) Albany, NY', N'NY')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (71, 2, N'528', N'528A6', N'(V02) (528) Bath, NY', N'NY')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (72, 2, N'528', N'528', N'(V02) (528) Buffalo, NY', N'NY')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (73, 2, N'528', N'528A7', N'(V02) (528) Syracuse, NY', N'NY')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (74, 20, N'463', N'463', N'(V20) (463) Anchorage, AK', N'AK')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (75, 20, N'531', N'531', N'(V20) (531) Boise, ID', N'ID')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (76, 20, N'648', N'648', N'(V20) (648) Portland, OR', N'OR')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (77, 20, N'653', N'653', N'(V20) (653) Roseburg, OR', N'OR')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (78, 20, N'663', N'663', N'(V20) (663) VA Puget Sound, WA', N'WA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (79, 20, N'668', N'668', N'(V20) (668) Spokane, WA', N'WA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (80, 20, N'687', N'687', N'(V20) (687) Walla Walla, WA', N'WA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (81, 20, N'692', N'692', N'(V20) (692) White City, OR', N'OR')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (82, 21, N'459', N'459', N'(V21) (459) Honolulu, HI', N'HI')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (83, 21, N'570', N'570', N'(V21) (570) Fresno, CA', N'CA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (84, 21, N'612', N'612', N'(V21) (612) N. California, CA', N'CA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (85, 21, N'640', N'640', N'(V21) (640) Palo Alto, CA', N'CA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (86, 21, N'654', N'654', N'(V21) (654) Reno, NV', N'NV')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (87, 21, N'662', N'662', N'(V21) (662) San Francisco, CA', N'CA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (88, 22, N'593', N'593', N'(V22) (593) Las Vegas, NV', N'NV')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (89, 22, N'600', N'600', N'(V22) (600) Long Beach, CA', N'CA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (90, 22, N'605', N'605', N'(V22) (605) Loma Linda, CA', N'CA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (91, 22, N'664', N'664', N'(V22) (664) San Diego, CA', N'CA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (92, 22, N'691', N'691', N'(V22) (691) West Los Angeles, CA', N'CA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (93, 3, N'526', N'526', N'(V03) (526) Bronx, NY', N'NY')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (94, 3, N'561', N'561', N'(V03) (561) New Jersey HCS, NJ', N'NJ')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (95, 3, N'620', N'620', N'(V03) (620) VA Hudson Valley HCS, NY', N'NY')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (96, 3, N'630', N'630', N'(V03) (630) New York Harbor HCS, NY', N'NY')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (97, 3, N'632', N'632', N'(V03) (632) Northport, NY', N'NY')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (98, 4, N'460', N'460', N'(V04) (460) Wilmington, DE', N'DE')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (99, 4, N'503', N'503', N'(V04) (503) Altoona, PA', N'PA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (100, 4, N'529', N'529', N'(V04) (529) Butler, PA', N'PA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (101, 4, N'540', N'540', N'(V04) (540) Clarksburg, WV', N'WV')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (102, 4, N'542', N'542', N'(V04) (542) Coatesville, PA', N'PA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (103, 4, N'562', N'562', N'(V04) (562) Erie, PA', N'PA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (104, 4, N'595', N'595', N'(V04) (595) Lebanon, PA', N'PA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (105, 4, N'642', N'642', N'(V04) (642) Philadelphia, PA', N'PA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (106, 4, N'646', N'646', N'(V04) (646) Pittsburgh, PA', N'PA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (107, 4, N'693', N'693', N'(V04) (693) Wilkes-Barre, PA', N'PA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (108, 5, N'512', N'512', N'(V05) (512) Baltimore HCS, MD', N'MD')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (109, 5, N'613', N'613', N'(V05) (613) Martinsburg, WV', N'WV')
GO
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (110, 5, N'688', N'688', N'(V05) (688) Washington, DC', N'DC')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (111, 6, N'517', N'517', N'(V06) (517) Beckley, WV', N'WV')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (112, 6, N'558', N'558', N'(V06) (558) Durham, NC', N'NC')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (113, 6, N'565', N'565', N'(V06) (565) Fayetteville, NC', N'NC')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (114, 6, N'590', N'590', N'(V06) (590) Hampton, VA', N'VA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (115, 6, N'637', N'637', N'(V06) (637) Asheville, NC', N'NC')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (116, 6, N'652', N'652', N'(V06) (652) Richmond, VA', N'VA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (117, 6, N'658', N'658', N'(V06) (658) Salem, VA', N'VA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (118, 6, N'659', N'659', N'(V06) (659) Salisbury, NC', N'NC')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (119, 7, N'508', N'508', N'(V07) (508) Decatur, GA', N'GA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (120, 7, N'509', N'509', N'(V07) (509) Augusta, GA', N'GA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (121, 7, N'521', N'521', N'(V07) (521) Birmingham, AL', N'AL')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (122, 7, N'534', N'534', N'(V07) (534) Charleston, SC', N'SC')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (123, 7, N'544', N'544', N'(V07) (544) Columbia, SC', N'SC')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (124, 7, N'557', N'557', N'(V07) (557) Dublin, GA', N'GA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (125, 7, N'619', N'619', N'(V07) (619) Montgomery-West, AL', N'AL')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (126, 7, N'679', N'679', N'(V07) (679) Tuscaloosa, AL', N'AL')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (127, 8, N'516', N'516', N'(V08) (516) Bay Pines, FL', N'FL')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (128, 8, N'546', N'546', N'(V08) (546) Miami, FL', N'FL')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (129, 8, N'548', N'548', N'(V08) (548) West Palm Beach, FL', N'FL')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (130, 8, N'573', N'573', N'(V08) (573) Gainesville, FL', N'FL')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (131, 8, N'672', N'672', N'(V08) (672) San Juan, PR', N'PR')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (132, 8, N'673', N'673', N'(V08) (673) Tampa, FL', N'FL')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (133, 9, N'581', N'581', N'(V09) (581) Huntington, WV', N'WV')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (134, 9, N'596', N'596', N'(V09) (596) Lexington, KY', N'KY')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (135, 9, N'603', N'603', N'(V09) (603) Louisville, KY', N'KY')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (136, 9, N'614', N'614', N'(V09) (614) Memphis, TN', N'TN')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (137, 9, N'621', N'621', N'(V09) (621) Mountain Home, TN', N'TN')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (138, 9, N'622', N'622', N'(V09) (626) Middle Tennessee HCS, TN', N'TN')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (139, 9, N'626', N'626', N'(V09) (626) Middle Tennessee HCS, TN', N'TN')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (140, 23, N'437', N'437', N'(V23) (437) Fargo, ND', N'ND')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (141, 23, N'438', N'438', N'(V23) (438) Sioux Falls, SD', N'SD')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (142, 23, N'568', N'568', N'(V23) (568) Black Hills HCS, SD', N'SD')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (143, 23, N'618', N'618', N'(V23) (618) Minneapolis, MN', N'MN')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (144, 23, N'656', N'656', N'(V23) (656) St. Cloud, MN', N'MN')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (146, 23, N'636', N'636A8', N'(V23) (636) Iowa City, IA', N'IA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (147, 23, N'636', N'636A6', N'(V23) (636) Central Iowa, IA', N'IA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (148, 23, N'636', N'636', N'(V23) (636) Nebraska-W Iowa, NE', N'NE')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (149, 21, N'358', N'358', N'(V21) (358) Manila, PI', N'PI')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (150, 2, N'528', N'528A5', N'NULL', N'LL')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (151, 2, N'528', N'528A4', N'NULL', N'LL')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (152, 8, N'675', N'675', N'(V08) (675) Orlando, FL', N'FL')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (153, 3, N'630', N'630A4', N'(V03) (630) New York Harbor HCS, NY', N'NY')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (154, 3, N'620', N'620A4', N'(V03) (620) VA Hudson Valley HCS, NY', N'NY')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (155, 15, N'657', N'657A0', N'(V15) (657) St. Louis, MO', N'MO')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (156, 23, N'636', N'636A7', N'(V23) (636) Central Iowa, IA', N'IA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (157, 23, N'636', N'636A5', N'(V23) (636) Nebraska-W Iowa, NE', N'NE')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (158, 99, N'UNK', N'UNK', N'(V99) (UNK) UNKNOWN', N'WN')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (159, 0, N'101', N'101', N'(V00) (101) Central Office', N'ce')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (160, 8, N'573', N'573A4', N'(V08) (573) Gainesville, FL', N'FL')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (161, 16, N'598', N'598A0', N'(V16) (598) Little Rock, AR', N'AR')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (162, 11, N'610', N'610A4', N'(V11) (610) Northern Indiana HCS, IN', N'IN')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (163, 7, N'619', N'619A4', N'(V07) (619) Central Alabama Veterans HCS, AL', N'AL')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (164, 15, N'657', N'657A5', N'(V15) (657) Marion, IL', N'IL')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (165, 20, N'663', N'663A4', N'(V20) (663) VA Puget Sound, WA', N'WA')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (166, 17, N'740', N'740', N'(V17)(740) Texas Valley Coastal Bend, TX', N'TX')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (167, 2, N'514', N'514', N'(V02) (528) Bath, NY', N'NY')
INSERT [dbo].[Ref_VAMC] ([VAMCID], [VISN], [STA3N], [STA6AID], [VAMC], [StateAbbr]) VALUES (168, 2, N'670', N'670', N'(V02) (528) Syracuse, NY', N'NY')
INSERT [dbo].[Ref_VISN] ([VISN], [NetworkName], [RegionServed], [RegionID]) VALUES (1, N'VA New England Health Care System', N'Connecticut, Maine, Massachusetts, New Hampshire, Rhode Island, Vermont', NULL)
INSERT [dbo].[Ref_VISN] ([VISN], [NetworkName], [RegionServed], [RegionID]) VALUES (2, N'VA Healthcare Network Upstate New York', N'New York', NULL)
INSERT [dbo].[Ref_VISN] ([VISN], [NetworkName], [RegionServed], [RegionID]) VALUES (3, N'NY/NJ Veterans Healthcare Network', N'New Jersey, New York', NULL)
INSERT [dbo].[Ref_VISN] ([VISN], [NetworkName], [RegionServed], [RegionID]) VALUES (4, N'VISN4 network (PA, WV, DE, NJ, NY, OH)', N'Delaware, New Jersey, New York, Ohio, Pennsylvania, West Virginia', NULL)
INSERT [dbo].[Ref_VISN] ([VISN], [NetworkName], [RegionServed], [RegionID]) VALUES (5, N'VA Capitol Healthcare Network', N'Maryland, Virginia, Washington, D.C., West Virginia', NULL)
INSERT [dbo].[Ref_VISN] ([VISN], [NetworkName], [RegionServed], [RegionID]) VALUES (6, N'VA Mid-Atlantic Health Care Network', N'North Carolina, Virginia, West Virginia', NULL)
INSERT [dbo].[Ref_VISN] ([VISN], [NetworkName], [RegionServed], [RegionID]) VALUES (7, N'VA Southeast Network', N'Alabama, Georgia, South Carolina', NULL)
INSERT [dbo].[Ref_VISN] ([VISN], [NetworkName], [RegionServed], [RegionID]) VALUES (8, N'VA Sunshine Healthcare Network', N'Florida, Puerto Rico, US Virgin Islands', NULL)
INSERT [dbo].[Ref_VISN] ([VISN], [NetworkName], [RegionServed], [RegionID]) VALUES (9, N'VA MidSouth Healthcare Network', N'Kentucky, Tennessee, West Virginia', NULL)
INSERT [dbo].[Ref_VISN] ([VISN], [NetworkName], [RegionServed], [RegionID]) VALUES (10, N'VA Healthcare System of Ohio', N'Indiana, Kentucky, Ohio', NULL)
INSERT [dbo].[Ref_VISN] ([VISN], [NetworkName], [RegionServed], [RegionID]) VALUES (11, N'Veterans in Partnership', N'Illinois, Indiana, Michigan, Ohio', NULL)
INSERT [dbo].[Ref_VISN] ([VISN], [NetworkName], [RegionServed], [RegionID]) VALUES (12, N'VA Great Lakes Healthcare System', N'Illinois, Indiana, Michigan, Wisconsin', NULL)
INSERT [dbo].[Ref_VISN] ([VISN], [NetworkName], [RegionServed], [RegionID]) VALUES (15, N'VA Heartland Network', N'Illinois, Kansas, Missouri', NULL)
INSERT [dbo].[Ref_VISN] ([VISN], [NetworkName], [RegionServed], [RegionID]) VALUES (16, N'South Central VA Healthcare Network', N'Arkansas, Louisiana, Mississippi, Oklahoma, Texas', NULL)
INSERT [dbo].[Ref_VISN] ([VISN], [NetworkName], [RegionServed], [RegionID]) VALUES (17, N'VA Heart of Texas Healthcare System', N'Texas', NULL)
INSERT [dbo].[Ref_VISN] ([VISN], [NetworkName], [RegionServed], [RegionID]) VALUES (18, N'VA Southwest Healthcare Network', N'Arizona, New Mexico, Texas', NULL)
INSERT [dbo].[Ref_VISN] ([VISN], [NetworkName], [RegionServed], [RegionID]) VALUES (19, N'VA Rocky Mountain Network', N'Colorado, Montana, Utah, Wyoming', NULL)
INSERT [dbo].[Ref_VISN] ([VISN], [NetworkName], [RegionServed], [RegionID]) VALUES (20, N'VA Northwest Health Network', N'Alaska, Idaho, Montana, Oregon, Washington state', NULL)
INSERT [dbo].[Ref_VISN] ([VISN], [NetworkName], [RegionServed], [RegionID]) VALUES (21, N'VA Sierra Pacific Network', N'Northern California, Nevada, American Samoa, Guam, Hawaii, Pacific islands, Philippines', NULL)
INSERT [dbo].[Ref_VISN] ([VISN], [NetworkName], [RegionServed], [RegionID]) VALUES (22, N'VA Desert Pacific Healthcare Network', N'Southern California, Nevada', NULL)
INSERT [dbo].[Ref_VISN] ([VISN], [NetworkName], [RegionServed], [RegionID]) VALUES (23, N'VA Midwest Healthcare Network', N'Illinois, Iowa, Minnesota, Nebraska, North Dakota, South Dakota', NULL)
