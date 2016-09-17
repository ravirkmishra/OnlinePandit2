USE [OnlinePandit]
GO
/****** Object:  Table [dbo].[tblBodyColour]    Script Date: 17-09-2016 17:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBodyColour](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Body_Colour] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblBodyType]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBodyType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BodyType] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCaste]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCaste](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[religion_id] [int] NULL,
	[Caste_Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCountry]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCountry](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[country_name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDistrict]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDistrict](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[state_id] [int] NULL,
	[District_Name] [varchar](50) NULL,
	[Zip_Code] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDressingStyle]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDressingStyle](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StyleName] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblEducationArea]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEducationArea](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[EducationClassId] [int] NULL,
	[AreaName] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblEducationField]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEducationField](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Qualification_AreaId] [int] NULL,
	[Field_Name] [varchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblFoodType]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblFoodType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FoodType] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblGotra]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblGotra](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Gotra_Name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblHobbies]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblHobbies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Hobbies_Name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblIncome]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblIncome](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IncomeValue] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblInterestinPet]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblInterestinPet](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[isInterested] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblJobField]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblJobField](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[JobFieldName] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblJobStatus]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblJobStatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Job_Status] [bit] NULL,
	[Status_Name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblLanguage]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblLanguage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LaunguageName] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblManglikState]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblManglikState](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ManglikState] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblMarritalStatus]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblMarritalStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MarritalStatus] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNative]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNative](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[District_id] [int] NULL,
	[Native_Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblProfileManager]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblProfileManager](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProfileManagerName] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblQualifiationClass]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblQualifiationClass](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Qualification_Name] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRashi]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRashi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Rashi_Name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblReligion]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblReligion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[religion_name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblState]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblState](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[country_id] [int] NULL,
	[state_name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSubCaste]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSubCaste](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Caste_Id] [int] NULL,
	[SubCaste_Name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTypeHabbits]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTypeHabbits](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[isYesNoOccasional] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblUserHabbits]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUserHabbits](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[isVegetarian] [int] NULL,
	[isEggetarian] [int] NULL,
	[isSmoke] [int] NULL,
	[isDrink] [int] NULL,
	[HobbiesName] [varchar](1000) NULL,
	[FoodFondOf] [varchar](1000) NULL,
	[FoodCanCook] [int] NULL,
	[FoodAbletoCook] [varchar](1000) NULL,
	[FavoriteTVShow] [varchar](1000) NULL,
	[FavoriteBooks] [varchar](1000) NULL,
	[UserId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblYesNo]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblYesNo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Value] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User_PhysiqueDetails]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_PhysiqueDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[UserHeightInch] [int] NULL,
	[UserHeightFit] [int] NULL,
	[UserBodyColour] [int] NULL,
	[UserDOB] [datetime] NULL,
	[UserDOBTimeHHMMSS] [datetime] NULL,
	[WeightMeasure] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserEducationCareer]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserEducationCareer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[UserMaxQualificationClass] [int] NULL,
	[UserEducationField] [int] NULL,
	[UserEducationSchool] [varchar](100) NULL,
	[UserJobStatus] [int] NULL,
	[UserJobCompany] [varchar](100) NULL,
	[UserJobField] [int] NULL,
	[UserJobDesc] [varchar](200) NULL,
	[UserJobCountry] [int] NULL,
	[UserJobState] [int] NULL,
	[UserJobCity] [int] NULL,
	[UserIncomeId] [int] NULL,
	[Designation] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserMatchPreferances]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserMatchPreferances](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[MatchHeightFitFrom] [int] NULL,
	[MatchHeightInchFrom] [int] NULL,
	[MatchHeightFitTo] [int] NULL,
	[MatchHeightInchTo] [int] NULL,
	[MatchAgeRangeFrom] [int] NULL,
	[MatchAgeRangeTo] [int] NULL,
	[MatchCountry] [int] NULL,
	[MatchState] [int] NULL,
	[MatchCity] [int] NULL,
	[MatchMarritalStatus] [int] NULL,
	[MatchReligion] [int] NULL,
	[MatchCaste] [int] NULL,
	[MatchSubCaste] [int] NULL,
	[MatchLanguage] [int] NULL,
	[MatchManglikState] [int] NULL,
	[MatchEducationClass] [int] NULL,
	[MatchEducationField] [int] NULL,
	[MatchJobField] [int] NULL,
	[MatchFoodHabbit] [int] NULL,
	[MatchIsEggetarian] [int] NULL,
	[MatchIsSmoke] [int] NULL,
	[MatchIsDrink] [int] NULL,
	[MatchSkinComplexion] [int] NULL,
	[MatchBodyType] [int] NULL,
	[MatchPD] [int] NULL,
	[MatchAboutPartner] [varchar](1000) NULL,
	[GotraName] [varchar](100) NULL,
	[RashiId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserFirstName] [varchar](100) NULL,
	[UserMiddleName] [varchar](100) NULL,
	[UserLastName] [varchar](100) NULL,
	[UserEmail] [varchar](200) NULL,
	[UserPassword] [varchar](20) NULL,
	[UserContact] [varchar](12) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users_Image]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users_Image](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[UserImageFile] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserSocialDetails]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserSocialDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[UserReligionId] [int] NULL,
	[UserCasteId] [int] NULL,
	[UserSubCasteId] [int] NULL,
	[RashiId] [int] NULL,
	[GotraName] [varchar](100) NULL,
	[UserLivingCountryId] [int] NULL,
	[UserLivingStateId] [int] NULL,
	[UserLivingCityId] [int] NULL,
	[UserLivingZipCode] [int] NULL,
	[UserCompleteAddress] [varchar](4000) NULL,
	[AboutYou] [varchar](4000) NULL,
	[AboutFamily] [varchar](4000) NULL,
	[NoOfBrothers] [int] NULL,
	[NoOfSisters] [int] NULL,
	[NoOfBrothersMarried] [int] NULL,
	[NoOfSistersMarried] [int] NULL,
	[FamilyIncomeId] [int] NULL,
	[IsJointFamily] [bit] NULL,
	[FamilyResidingCountryId] [int] NULL,
	[FamilyResidingStateId] [int] NULL,
	[FamilyResidingCityId] [int] NULL,
	[FatherWorkingStatus] [int] NULL,
	[FatherOccupation] [int] NULL,
	[MotherWorkingStatus] [int] NULL,
	[MotherOccupation] [int] NULL,
	[LanguageKnown] [varchar](500) NULL,
	[DressingStyle] [int] NULL,
	[ProfileManagerName] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblBodyColour] ON 

INSERT [dbo].[tblBodyColour] ([id], [Body_Colour]) VALUES (1, N'Fair')
INSERT [dbo].[tblBodyColour] ([id], [Body_Colour]) VALUES (2, N'Very Fair')
INSERT [dbo].[tblBodyColour] ([id], [Body_Colour]) VALUES (3, N'Wheatish')
INSERT [dbo].[tblBodyColour] ([id], [Body_Colour]) VALUES (4, N'Dark')
INSERT [dbo].[tblBodyColour] ([id], [Body_Colour]) VALUES (5, N'white Skin')
SET IDENTITY_INSERT [dbo].[tblBodyColour] OFF
SET IDENTITY_INSERT [dbo].[tblBodyType] ON 

INSERT [dbo].[tblBodyType] ([Id], [BodyType]) VALUES (1, N'Slim')
INSERT [dbo].[tblBodyType] ([Id], [BodyType]) VALUES (2, N'Average')
INSERT [dbo].[tblBodyType] ([Id], [BodyType]) VALUES (3, N'Athletic')
INSERT [dbo].[tblBodyType] ([Id], [BodyType]) VALUES (4, N'Heavy')
SET IDENTITY_INSERT [dbo].[tblBodyType] OFF
SET IDENTITY_INSERT [dbo].[tblCaste] ON 

INSERT [dbo].[tblCaste] ([id], [religion_id], [Caste_Name]) VALUES (1, 1, N'Brahmin')
SET IDENTITY_INSERT [dbo].[tblCaste] OFF
SET IDENTITY_INSERT [dbo].[tblCountry] ON 

INSERT [dbo].[tblCountry] ([id], [country_name]) VALUES (1, N'India')
SET IDENTITY_INSERT [dbo].[tblCountry] OFF
SET IDENTITY_INSERT [dbo].[tblDistrict] ON 

INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (1, 4, N'Araria', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (2, 4, N'Arwal', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (3, 4, N'Aurangabad', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (4, 4, N'Banka', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (5, 4, N'Begusarai', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (6, 4, N'Bhabhua', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (7, 4, N'Bhagalpur', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (8, 4, N'Bhojpur', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (9, 4, N'Buxar', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (10, 4, N'Darbhanga', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (11, 4, N'East Champaran', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (12, 4, N'Gaya', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (13, 4, N'Gopalganj', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (14, 4, N'Jamui', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (15, 4, N'Jehanabad', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (16, 4, N'Katihar', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (17, 4, N'Khagaria', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (18, 4, N'Kishanganj', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (19, 4, N'District Name', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (20, 4, N'Lakhisarai', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (21, 4, N'Madhepura', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (22, 4, N'Madhubani', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (23, 4, N'Monghyr', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (24, 4, N'Muzaffarpur', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (25, 4, N'Nalanda', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (26, 4, N'Nawada', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (27, 4, N'Patna', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (28, 4, N'Purnea', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (29, 4, N'Rohtas', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (30, 4, N'Saharsa', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (31, 4, N'Samastipur', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (32, 4, N'Saran', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (33, 4, N'Sheikhpura', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (34, 4, N'Sheohar', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (35, 4, N'Sitamarhi', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (36, 4, N'Siwan', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (37, 4, N'Supaul', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (38, 4, N'Vaishali', NULL)
INSERT [dbo].[tblDistrict] ([id], [state_id], [District_Name], [Zip_Code]) VALUES (39, 4, N'West Champaran', NULL)
SET IDENTITY_INSERT [dbo].[tblDistrict] OFF
SET IDENTITY_INSERT [dbo].[tblDressingStyle] ON 

INSERT [dbo].[tblDressingStyle] ([Id], [StyleName]) VALUES (1, N'Traditional Indian')
INSERT [dbo].[tblDressingStyle] ([Id], [StyleName]) VALUES (2, N'Western')
SET IDENTITY_INSERT [dbo].[tblDressingStyle] OFF
SET IDENTITY_INSERT [dbo].[tblEducationArea] ON 

INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (21, 3, N'Architecture')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (22, 3, N'Animation, Multimedia, Web; Game Design')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (23, 3, N'Commerce, Banking; Finance')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (24, 3, N'Designing-Fashion, Interior, Jewellery Design')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (25, 3, N'Education, Teaching; Training ')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (26, 3, N'Computers; IT')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (27, 3, N'Media, Journalism; Mass Communication')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (28, 3, N'Medical; Clinical Research')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (29, 3, N'Merchant Navy')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (30, 3, N'Engineering; Technology')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (31, 3, N'Travel; Tourism')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (32, 3, N'Vocational')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (33, 3, N'Aviation')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (34, 3, N'Science')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (35, 3, N'Law')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (36, 3, N'Dental')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (37, 3, N'Social Work')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (38, 3, N'Photography')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (39, 3, N'Pharmacy')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (40, 4, N'Arts; Humanities')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (41, 4, N'Architecture')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (42, 4, N'Animation, Multimedia, Web; Game Design')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (43, 4, N'Commerce, Banking; Finance')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (44, 4, N'Designing-Fashion, Interior, Jewellery Design')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (45, 4, N'Education, Teaching; Training ')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (46, 4, N'Hotel Management')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (47, 4, N'BBA, Management')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (48, 4, N'BCA, Computers; IT')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (49, 4, N'Media, Journalism; Mass Communication')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (50, 4, N'Medical; Clinical Research')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (51, 4, N'Merchant Navy')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (52, 4, N'Engineering; Technology')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (53, 4, N'Travel; Tourism')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (54, 4, N'Vocational')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (55, 4, N'Aviation')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (56, 4, N'Science')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (57, 4, N'Law')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (58, 4, N'Dental')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (59, 4, N'Social Work')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (60, 4, N'Photography')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (61, 4, N'Pharmacy')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (62, 5, N'Arts; Humanities')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (63, 5, N'Architecture')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (64, 5, N'Animation, Multimedia, Web; Game Design')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (65, 5, N'Commerce, Banking; Finance')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (66, 5, N'Designing-Fashion, Interior, Jewellery Design')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (67, 5, N'Education, Teaching; Training ')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (68, 5, N'Hotel Management')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (69, 5, N'MBA, PGDM and Management ')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (70, 5, N'MCA, BCA, Computers; IT')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (71, 5, N'Media, Journalism; Mass Communication')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (72, 5, N'Medical; Clinical Research')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (73, 5, N'Merchant Navy')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (74, 5, N'Engineering; Technology')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (75, 5, N'Travel; Tourism')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (76, 5, N'Vocational')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (77, 5, N'Aviation')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (78, 5, N'Science')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (79, 5, N'Law')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (80, 5, N'Dental')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (81, 5, N'Social Work')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (82, 5, N'Photography')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (83, 5, N'Pharmacy')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (84, 6, N'Arts; Humanities')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (85, 6, N'Architecture')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (86, 6, N'Animation, Multimedia, Web; Game Design')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (87, 6, N'Commerce, Banking; Finance')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (88, 6, N'Designing-Fashion, Interior, Jewellery Design')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (89, 6, N'Education, Teaching; Training ')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (90, 6, N'Hotel Management')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (91, 6, N'Management ')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (92, 6, N'Computers; IT')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (93, 6, N'Media, Journalism; Mass Communication')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (94, 6, N'Medical; Clinical Research')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (95, 6, N'Merchant Navy')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (96, 6, N'Engineering; Technology')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (97, 6, N'Travel; Tourism')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (98, 6, N'Vocational')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (99, 6, N'Aviation')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (100, 6, N'Science')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (101, 6, N'Law')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (102, 6, N'Dental')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (103, 6, N'Social Work')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (104, 6, N'Photography')
INSERT [dbo].[tblEducationArea] ([id], [EducationClassId], [AreaName]) VALUES (105, 6, N'Pharmacy')
SET IDENTITY_INSERT [dbo].[tblEducationArea] OFF
SET IDENTITY_INSERT [dbo].[tblFoodType] ON 

INSERT [dbo].[tblFoodType] ([Id], [FoodType]) VALUES (1, N'Vegetarian')
INSERT [dbo].[tblFoodType] ([Id], [FoodType]) VALUES (2, N'Non-Vegetarian')
INSERT [dbo].[tblFoodType] ([Id], [FoodType]) VALUES (3, N'Tristate')
SET IDENTITY_INSERT [dbo].[tblFoodType] OFF
SET IDENTITY_INSERT [dbo].[tblIncome] ON 

INSERT [dbo].[tblIncome] ([Id], [IncomeValue]) VALUES (1, N'< 5 lac')
INSERT [dbo].[tblIncome] ([Id], [IncomeValue]) VALUES (2, N'5-7 lac')
INSERT [dbo].[tblIncome] ([Id], [IncomeValue]) VALUES (3, N'7-10 lac')
INSERT [dbo].[tblIncome] ([Id], [IncomeValue]) VALUES (4, N'10-15 lac')
INSERT [dbo].[tblIncome] ([Id], [IncomeValue]) VALUES (5, N'15-20 lac')
INSERT [dbo].[tblIncome] ([Id], [IncomeValue]) VALUES (6, N'20-25 lac')
INSERT [dbo].[tblIncome] ([Id], [IncomeValue]) VALUES (7, N'25-30 lac')
INSERT [dbo].[tblIncome] ([Id], [IncomeValue]) VALUES (8, N'30-40 lac')
INSERT [dbo].[tblIncome] ([Id], [IncomeValue]) VALUES (9, N'40-60 lac')
INSERT [dbo].[tblIncome] ([Id], [IncomeValue]) VALUES (10, N'60-80 lac')
INSERT [dbo].[tblIncome] ([Id], [IncomeValue]) VALUES (11, N'> 1 crore')
SET IDENTITY_INSERT [dbo].[tblIncome] OFF
SET IDENTITY_INSERT [dbo].[tblJobField] ON 

INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (1, N'Accounting ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (2, N'Advertising ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (3, N'Agriculture ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (4, N'Animation ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (5, N'Architecture ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (6, N'Automobile ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (7, N'Aviation ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (8, N'BPO')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (9, N'Bank')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (10, N'Brewery')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (11, N'Sanitary')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (12, N'Chemical')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (13, N'Engineering')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (14, N'Consumer Durables')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (15, N'Courier Defence')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (16, N'Teacher ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (17, N'Electrical ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (18, N'Export Import ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (19, N'FMCG ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (20, N'Facility Management ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (21, N'Fertilizers ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (22, N'Food Processing ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (23, N'Fresher ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (24, N'Gems Jewellery ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (25, N'Glass Air Conditioning ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (26, N'Airline Networking IT ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (27, N'Industrial Insurance ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (28, N'KPO Legal ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (29, N'Media ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (30, N'Dotcom ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (31, N'Entertainment ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (32, N'Medical ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (33, N'Mining ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (34, N'NGO ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (35, N'Automation ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (36, N'Oil and Gas ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (37, N'Paper ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (38, N'Pharma ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (39, N'Printing ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (40, N'Publishing ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (41, N'Real Estate ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (42, N'Recruitment ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (43, N'Retail ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (44, N'Security ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (45, N'Electronics ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (46, N'Shipping ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (47, N'Steel ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (48, N'Consultant ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (49, N'Telecom ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (50, N'Textiles ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (51, N'Tyres ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (52, N'Water Treatment ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (53, N'Fitness Trainer ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (54, N'Ecommerce ')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (55, N'Internet')
INSERT [dbo].[tblJobField] ([id], [JobFieldName]) VALUES (56, N'Not Employed')
SET IDENTITY_INSERT [dbo].[tblJobField] OFF
SET IDENTITY_INSERT [dbo].[tblJobStatus] ON 

INSERT [dbo].[tblJobStatus] ([id], [Job_Status], [Status_Name]) VALUES (1, 1, N'Employed')
INSERT [dbo].[tblJobStatus] ([id], [Job_Status], [Status_Name]) VALUES (2, 1, N'Not Employed')
SET IDENTITY_INSERT [dbo].[tblJobStatus] OFF
SET IDENTITY_INSERT [dbo].[tblLanguage] ON 

INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (1, N'Hindi')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (2, N'English')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (3, N'Bhojpuri')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (4, N'Angika')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (5, N'Magadhi')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (6, N'Bengali')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (7, N'Telugu')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (8, N'Marathi')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (9, N'Tamil')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (10, N'Urdu')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (11, N'Gujarati')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (12, N'Kannada')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (13, N'Malayalam')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (14, N'Odia')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (15, N'Punjabi')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (16, N'Assamese')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (17, N'Maithili')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (18, N'Bhili/Bhilodi')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (19, N'Santali')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (20, N'Kashmiri')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (21, N'Nepali')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (22, N'Gondi')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (23, N'Sindhi')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (24, N'Konkani')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (25, N'Dogri')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (26, N'Khandeshi')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (27, N'Kurukh')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (28, N'Tulu')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (29, N'Meitei/Manipuri')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (30, N'Bodo')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (31, N'Khasi')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (32, N'Mundari')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (33, N'Ho')
INSERT [dbo].[tblLanguage] ([Id], [LaunguageName]) VALUES (34, N'Others')
SET IDENTITY_INSERT [dbo].[tblLanguage] OFF
SET IDENTITY_INSERT [dbo].[tblManglikState] ON 

INSERT [dbo].[tblManglikState] ([Id], [ManglikState]) VALUES (1, N'Manglik')
INSERT [dbo].[tblManglikState] ([Id], [ManglikState]) VALUES (2, N'Non-Manglik')
INSERT [dbo].[tblManglikState] ([Id], [ManglikState]) VALUES (3, N'Anshik Manglik(Partial)')
SET IDENTITY_INSERT [dbo].[tblManglikState] OFF
SET IDENTITY_INSERT [dbo].[tblMarritalStatus] ON 

INSERT [dbo].[tblMarritalStatus] ([Id], [MarritalStatus]) VALUES (1, N'Married')
INSERT [dbo].[tblMarritalStatus] ([Id], [MarritalStatus]) VALUES (2, N'Un-Married')
INSERT [dbo].[tblMarritalStatus] ([Id], [MarritalStatus]) VALUES (3, N'Divorced')
INSERT [dbo].[tblMarritalStatus] ([Id], [MarritalStatus]) VALUES (4, N'Doesn''t Matter')
SET IDENTITY_INSERT [dbo].[tblMarritalStatus] OFF
SET IDENTITY_INSERT [dbo].[tblProfileManager] ON 

INSERT [dbo].[tblProfileManager] ([Id], [ProfileManagerName]) VALUES (1, N'Father')
INSERT [dbo].[tblProfileManager] ([Id], [ProfileManagerName]) VALUES (2, N'Mother')
INSERT [dbo].[tblProfileManager] ([Id], [ProfileManagerName]) VALUES (3, N'Siblings')
INSERT [dbo].[tblProfileManager] ([Id], [ProfileManagerName]) VALUES (4, N'GrandParents')
INSERT [dbo].[tblProfileManager] ([Id], [ProfileManagerName]) VALUES (5, N'Other Guardians')
SET IDENTITY_INSERT [dbo].[tblProfileManager] OFF
SET IDENTITY_INSERT [dbo].[tblQualifiationClass] ON 

INSERT [dbo].[tblQualifiationClass] ([id], [Qualification_Name]) VALUES (1, N'Below SC')
INSERT [dbo].[tblQualifiationClass] ([id], [Qualification_Name]) VALUES (2, N'SC')
INSERT [dbo].[tblQualifiationClass] ([id], [Qualification_Name]) VALUES (3, N'HSC')
INSERT [dbo].[tblQualifiationClass] ([id], [Qualification_Name]) VALUES (4, N'Graduate')
INSERT [dbo].[tblQualifiationClass] ([id], [Qualification_Name]) VALUES (5, N'Master')
INSERT [dbo].[tblQualifiationClass] ([id], [Qualification_Name]) VALUES (6, N'Doctarate')
INSERT [dbo].[tblQualifiationClass] ([id], [Qualification_Name]) VALUES (7, N'Diploma')
SET IDENTITY_INSERT [dbo].[tblQualifiationClass] OFF
SET IDENTITY_INSERT [dbo].[tblRashi] ON 

INSERT [dbo].[tblRashi] ([id], [Rashi_Name]) VALUES (1, N'Mesha (Aries)')
INSERT [dbo].[tblRashi] ([id], [Rashi_Name]) VALUES (2, N'Vrishabha (Taurus)')
INSERT [dbo].[tblRashi] ([id], [Rashi_Name]) VALUES (3, N'Mithun (Gemini)')
INSERT [dbo].[tblRashi] ([id], [Rashi_Name]) VALUES (4, N'Karka (Cancer)')
INSERT [dbo].[tblRashi] ([id], [Rashi_Name]) VALUES (5, N'Simha / Sinh (Leo)')
INSERT [dbo].[tblRashi] ([id], [Rashi_Name]) VALUES (6, N'Kanya (Vigro)')
INSERT [dbo].[tblRashi] ([id], [Rashi_Name]) VALUES (7, N'Tula (Libra)')
INSERT [dbo].[tblRashi] ([id], [Rashi_Name]) VALUES (8, N'Vruschika (Scorpius)')
INSERT [dbo].[tblRashi] ([id], [Rashi_Name]) VALUES (9, N'Dhanu (Sagittarius)')
INSERT [dbo].[tblRashi] ([id], [Rashi_Name]) VALUES (10, N'Makar (Capricorn)')
INSERT [dbo].[tblRashi] ([id], [Rashi_Name]) VALUES (11, N'Kumbha (Aquarius)')
INSERT [dbo].[tblRashi] ([id], [Rashi_Name]) VALUES (12, N'Meena (Pisces)')
SET IDENTITY_INSERT [dbo].[tblRashi] OFF
SET IDENTITY_INSERT [dbo].[tblReligion] ON 

INSERT [dbo].[tblReligion] ([id], [religion_name]) VALUES (1, N'Hindu')
SET IDENTITY_INSERT [dbo].[tblReligion] OFF
SET IDENTITY_INSERT [dbo].[tblState] ON 

INSERT [dbo].[tblState] ([id], [country_id], [state_name]) VALUES (1, 1, N'Andhra Pradesh')
INSERT [dbo].[tblState] ([id], [country_id], [state_name]) VALUES (2, 1, N'Arunachal Pradesh')
INSERT [dbo].[tblState] ([id], [country_id], [state_name]) VALUES (3, 1, N'Assam')
INSERT [dbo].[tblState] ([id], [country_id], [state_name]) VALUES (4, 1, N'Bihar')
INSERT [dbo].[tblState] ([id], [country_id], [state_name]) VALUES (5, 1, N'Chhattisgarh')
INSERT [dbo].[tblState] ([id], [country_id], [state_name]) VALUES (6, 1, N'Goa')
INSERT [dbo].[tblState] ([id], [country_id], [state_name]) VALUES (7, 1, N'Gujarat')
INSERT [dbo].[tblState] ([id], [country_id], [state_name]) VALUES (8, 1, N'Haryana')
INSERT [dbo].[tblState] ([id], [country_id], [state_name]) VALUES (9, 1, N'Himachal Pradesh')
INSERT [dbo].[tblState] ([id], [country_id], [state_name]) VALUES (10, 1, N'Jammu & Kashmir')
INSERT [dbo].[tblState] ([id], [country_id], [state_name]) VALUES (11, 1, N'Jharkhand')
INSERT [dbo].[tblState] ([id], [country_id], [state_name]) VALUES (12, 1, N'Karnataka')
INSERT [dbo].[tblState] ([id], [country_id], [state_name]) VALUES (13, 1, N'Kerala')
INSERT [dbo].[tblState] ([id], [country_id], [state_name]) VALUES (14, 1, N'Madhya Pradesh')
INSERT [dbo].[tblState] ([id], [country_id], [state_name]) VALUES (15, 1, N'Maharashtra')
INSERT [dbo].[tblState] ([id], [country_id], [state_name]) VALUES (16, 1, N'Manipur')
INSERT [dbo].[tblState] ([id], [country_id], [state_name]) VALUES (17, 1, N'Meghalaya')
INSERT [dbo].[tblState] ([id], [country_id], [state_name]) VALUES (18, 1, N'Mizoram')
INSERT [dbo].[tblState] ([id], [country_id], [state_name]) VALUES (19, 1, N'Nagaland')
INSERT [dbo].[tblState] ([id], [country_id], [state_name]) VALUES (20, 1, N'Odisha (Orissa)')
INSERT [dbo].[tblState] ([id], [country_id], [state_name]) VALUES (21, 1, N'Punjab')
INSERT [dbo].[tblState] ([id], [country_id], [state_name]) VALUES (22, 1, N'Rajasthan')
INSERT [dbo].[tblState] ([id], [country_id], [state_name]) VALUES (23, 1, N'Sikkim')
INSERT [dbo].[tblState] ([id], [country_id], [state_name]) VALUES (24, 1, N'Tamil Nadu')
INSERT [dbo].[tblState] ([id], [country_id], [state_name]) VALUES (25, 1, N'Telangana (from June 2, 2014)')
INSERT [dbo].[tblState] ([id], [country_id], [state_name]) VALUES (26, 1, N'Tripura')
INSERT [dbo].[tblState] ([id], [country_id], [state_name]) VALUES (27, 1, N'Uttar Pradesh')
INSERT [dbo].[tblState] ([id], [country_id], [state_name]) VALUES (28, 1, N'Uttarakhand')
INSERT [dbo].[tblState] ([id], [country_id], [state_name]) VALUES (29, 1, N'West Bengal')
SET IDENTITY_INSERT [dbo].[tblState] OFF
SET IDENTITY_INSERT [dbo].[tblSubCaste] ON 

INSERT [dbo].[tblSubCaste] ([id], [Caste_Id], [SubCaste_Name]) VALUES (1, 1, N'Shrotriya')
SET IDENTITY_INSERT [dbo].[tblSubCaste] OFF
SET IDENTITY_INSERT [dbo].[tblTypeHabbits] ON 

INSERT [dbo].[tblTypeHabbits] ([id], [isYesNoOccasional]) VALUES (1, N'Yes')
INSERT [dbo].[tblTypeHabbits] ([id], [isYesNoOccasional]) VALUES (2, N'No')
INSERT [dbo].[tblTypeHabbits] ([id], [isYesNoOccasional]) VALUES (3, N'Occasional')
SET IDENTITY_INSERT [dbo].[tblTypeHabbits] OFF
SET IDENTITY_INSERT [dbo].[tblYesNo] ON 

INSERT [dbo].[tblYesNo] ([Id], [Value]) VALUES (1, N'Yes')
INSERT [dbo].[tblYesNo] ([Id], [Value]) VALUES (2, N'No')
INSERT [dbo].[tblYesNo] ([Id], [Value]) VALUES (3, N'May Be')
SET IDENTITY_INSERT [dbo].[tblYesNo] OFF
SET IDENTITY_INSERT [dbo].[User_PhysiqueDetails] ON 

INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (1, 16, 6, 5, 3, CAST(N'1990-10-11 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (2, 17, 0, 6, 3, CAST(N'1990-10-11 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (3, 18, 0, 6, 3, CAST(N'1990-10-11 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (4, 19, 0, 6, 3, CAST(N'1987-10-11 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (5, 20, 0, 1, 2, CAST(N'1956-01-09 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (6, 21, 0, 6, 2, CAST(N'1990-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (7, 22, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (8, 23, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (9, 24, 0, 6, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (10, 25, 0, 1, 3, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (11, 26, 0, 1, 3, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (12, 27, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (13, 28, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (14, 29, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (15, 30, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (16, 31, 0, 1, 3, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (17, 32, 0, 1, 1, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (18, 33, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (19, 34, 0, 1, 1, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (20, 35, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (21, 36, 0, 1, 4, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (22, 37, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (28, 43, 0, 1, 3, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (29, 44, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (30, 45, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (31, 46, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (32, 47, 0, 1, 1, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (33, 48, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (34, 49, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (35, 50, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (36, 51, 0, 1, 3, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (37, 52, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (38, 53, 0, 1, 1, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (39, 54, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (40, 55, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (41, 56, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), CAST(N'2016-09-15 01:00:00.000' AS DateTime), 0)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (42, 57, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), CAST(N'2016-09-15 01:00:00.000' AS DateTime), 0)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (43, 58, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), CAST(N'2016-09-15 01:00:00.000' AS DateTime), 0)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (44, 59, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), CAST(N'2016-09-15 01:00:00.000' AS DateTime), 0)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (45, 60, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), CAST(N'2016-09-15 01:00:00.000' AS DateTime), 0)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (46, 61, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), CAST(N'2016-09-15 01:00:00.000' AS DateTime), 0)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (47, 62, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), CAST(N'2016-09-16 01:00:00.000' AS DateTime), 0)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (48, 63, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), CAST(N'2016-09-16 01:00:00.000' AS DateTime), 0)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (49, 64, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), CAST(N'2016-09-16 01:00:00.000' AS DateTime), 0)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (50, 65, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), CAST(N'2016-09-16 01:00:00.000' AS DateTime), 0)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (51, 66, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), CAST(N'2016-09-17 01:00:00.000' AS DateTime), 0)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (52, 67, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), CAST(N'2016-09-17 01:00:00.000' AS DateTime), 0)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (53, 68, 0, 1, 1, CAST(N'1956-01-01 00:00:00.000' AS DateTime), CAST(N'2016-09-17 01:00:00.000' AS DateTime), 0)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (56, 71, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), CAST(N'2016-09-17 01:00:00.000' AS DateTime), 0)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (57, 72, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), CAST(N'2016-09-17 01:00:00.000' AS DateTime), 0)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (58, 73, 0, 1, 3, CAST(N'1956-01-01 00:00:00.000' AS DateTime), CAST(N'2016-09-17 01:00:00.000' AS DateTime), 0)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (59, 74, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), CAST(N'2016-09-17 01:00:00.000' AS DateTime), 0)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (60, 75, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), CAST(N'2016-09-17 01:00:00.000' AS DateTime), 0)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (61, 76, 0, 1, 1, CAST(N'1956-01-01 00:00:00.000' AS DateTime), CAST(N'2016-09-17 01:00:00.000' AS DateTime), 0)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (62, 77, 0, 1, 1, CAST(N'1956-01-01 00:00:00.000' AS DateTime), CAST(N'2016-09-17 01:00:00.000' AS DateTime), 0)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (63, 78, 0, 1, 1, CAST(N'1956-01-01 00:00:00.000' AS DateTime), CAST(N'2016-09-17 01:00:00.000' AS DateTime), 0)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (23, 38, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (24, 39, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (25, 39, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (26, 40, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (27, 41, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (54, 69, 0, 1, 2, CAST(N'1956-01-01 00:00:00.000' AS DateTime), CAST(N'2016-09-17 01:00:00.000' AS DateTime), 0)
INSERT [dbo].[User_PhysiqueDetails] ([id], [UserId], [UserHeightInch], [UserHeightFit], [UserBodyColour], [UserDOB], [UserDOBTimeHHMMSS], [WeightMeasure]) VALUES (55, 70, 0, 1, 1, CAST(N'1956-01-01 00:00:00.000' AS DateTime), CAST(N'2016-09-17 01:00:00.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[User_PhysiqueDetails] OFF
ALTER TABLE [dbo].[tblCaste]  WITH CHECK ADD FOREIGN KEY([religion_id])
REFERENCES [dbo].[tblReligion] ([id])
GO
ALTER TABLE [dbo].[tblDistrict]  WITH CHECK ADD FOREIGN KEY([state_id])
REFERENCES [dbo].[tblState] ([id])
GO
ALTER TABLE [dbo].[tblEducationArea]  WITH CHECK ADD  CONSTRAINT [fk_Class_EdArea] FOREIGN KEY([EducationClassId])
REFERENCES [dbo].[tblQualifiationClass] ([id])
GO
ALTER TABLE [dbo].[tblEducationArea] CHECK CONSTRAINT [fk_Class_EdArea]
GO
ALTER TABLE [dbo].[tblNative]  WITH CHECK ADD FOREIGN KEY([District_id])
REFERENCES [dbo].[tblDistrict] ([id])
GO
ALTER TABLE [dbo].[tblState]  WITH CHECK ADD FOREIGN KEY([country_id])
REFERENCES [dbo].[tblCountry] ([id])
GO
ALTER TABLE [dbo].[tblSubCaste]  WITH CHECK ADD FOREIGN KEY([Caste_Id])
REFERENCES [dbo].[tblCaste] ([id])
GO
ALTER TABLE [dbo].[tblUserHabbits]  WITH CHECK ADD FOREIGN KEY([isDrink])
REFERENCES [dbo].[tblTypeHabbits] ([id])
GO
ALTER TABLE [dbo].[tblUserHabbits]  WITH CHECK ADD FOREIGN KEY([isEggetarian])
REFERENCES [dbo].[tblTypeHabbits] ([id])
GO
ALTER TABLE [dbo].[tblUserHabbits]  WITH CHECK ADD FOREIGN KEY([isSmoke])
REFERENCES [dbo].[tblTypeHabbits] ([id])
GO
ALTER TABLE [dbo].[tblUserHabbits]  WITH CHECK ADD FOREIGN KEY([isVegetarian])
REFERENCES [dbo].[tblTypeHabbits] ([id])
GO
ALTER TABLE [dbo].[tblUserHabbits]  WITH CHECK ADD FOREIGN KEY([FoodCanCook])
REFERENCES [dbo].[tblYesNo] ([Id])
GO
ALTER TABLE [dbo].[tblUserHabbits]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User_PhysiqueDetails]  WITH CHECK ADD FOREIGN KEY([UserBodyColour])
REFERENCES [dbo].[tblBodyColour] ([id])
GO
ALTER TABLE [dbo].[UserEducationCareer]  WITH CHECK ADD FOREIGN KEY([UserEducationField])
REFERENCES [dbo].[tblEducationArea] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[UserEducationCareer]  WITH CHECK ADD FOREIGN KEY([UserIncomeId])
REFERENCES [dbo].[tblIncome] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[UserEducationCareer]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserEducationCareer]  WITH CHECK ADD FOREIGN KEY([UserJobStatus])
REFERENCES [dbo].[tblJobStatus] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[UserEducationCareer]  WITH CHECK ADD FOREIGN KEY([UserJobField])
REFERENCES [dbo].[tblJobField] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[UserEducationCareer]  WITH CHECK ADD FOREIGN KEY([UserJobCountry])
REFERENCES [dbo].[tblCountry] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[UserEducationCareer]  WITH CHECK ADD FOREIGN KEY([UserJobState])
REFERENCES [dbo].[tblState] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[UserEducationCareer]  WITH CHECK ADD FOREIGN KEY([UserJobCity])
REFERENCES [dbo].[tblDistrict] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[UserEducationCareer]  WITH CHECK ADD FOREIGN KEY([UserMaxQualificationClass])
REFERENCES [dbo].[tblQualifiationClass] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[UserMatchPreferances]  WITH CHECK ADD FOREIGN KEY([MatchCountry])
REFERENCES [dbo].[tblCountry] ([id])
GO
ALTER TABLE [dbo].[UserMatchPreferances]  WITH CHECK ADD FOREIGN KEY([MatchState])
REFERENCES [dbo].[tblState] ([id])
GO
ALTER TABLE [dbo].[UserMatchPreferances]  WITH CHECK ADD FOREIGN KEY([MatchCity])
REFERENCES [dbo].[tblDistrict] ([id])
GO
ALTER TABLE [dbo].[UserMatchPreferances]  WITH CHECK ADD FOREIGN KEY([MatchMarritalStatus])
REFERENCES [dbo].[tblMarritalStatus] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[UserMatchPreferances]  WITH CHECK ADD FOREIGN KEY([MatchReligion])
REFERENCES [dbo].[tblReligion] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[UserMatchPreferances]  WITH CHECK ADD FOREIGN KEY([MatchCaste])
REFERENCES [dbo].[tblCaste] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[UserMatchPreferances]  WITH CHECK ADD FOREIGN KEY([MatchSubCaste])
REFERENCES [dbo].[tblSubCaste] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[UserMatchPreferances]  WITH CHECK ADD FOREIGN KEY([MatchLanguage])
REFERENCES [dbo].[tblLanguage] ([Id])
GO
ALTER TABLE [dbo].[UserMatchPreferances]  WITH CHECK ADD FOREIGN KEY([MatchManglikState])
REFERENCES [dbo].[tblManglikState] ([Id])
GO
ALTER TABLE [dbo].[UserMatchPreferances]  WITH CHECK ADD FOREIGN KEY([MatchEducationClass])
REFERENCES [dbo].[tblQualifiationClass] ([id])
GO
ALTER TABLE [dbo].[UserMatchPreferances]  WITH CHECK ADD FOREIGN KEY([MatchEducationField])
REFERENCES [dbo].[tblEducationArea] ([id])
GO
ALTER TABLE [dbo].[UserMatchPreferances]  WITH CHECK ADD FOREIGN KEY([MatchJobField])
REFERENCES [dbo].[tblJobField] ([id])
GO
ALTER TABLE [dbo].[UserMatchPreferances]  WITH CHECK ADD FOREIGN KEY([MatchFoodHabbit])
REFERENCES [dbo].[tblFoodType] ([Id])
GO
ALTER TABLE [dbo].[UserMatchPreferances]  WITH CHECK ADD FOREIGN KEY([MatchIsEggetarian])
REFERENCES [dbo].[tblTypeHabbits] ([id])
GO
ALTER TABLE [dbo].[UserMatchPreferances]  WITH CHECK ADD FOREIGN KEY([MatchIsSmoke])
REFERENCES [dbo].[tblTypeHabbits] ([id])
GO
ALTER TABLE [dbo].[UserMatchPreferances]  WITH CHECK ADD FOREIGN KEY([MatchIsDrink])
REFERENCES [dbo].[tblTypeHabbits] ([id])
GO
ALTER TABLE [dbo].[UserMatchPreferances]  WITH CHECK ADD FOREIGN KEY([MatchSkinComplexion])
REFERENCES [dbo].[tblBodyColour] ([id])
GO
ALTER TABLE [dbo].[UserMatchPreferances]  WITH CHECK ADD FOREIGN KEY([MatchBodyType])
REFERENCES [dbo].[tblBodyType] ([Id])
GO
ALTER TABLE [dbo].[UserMatchPreferances]  WITH CHECK ADD FOREIGN KEY([MatchPD])
REFERENCES [dbo].[tblBodyType] ([Id])
GO
ALTER TABLE [dbo].[UserMatchPreferances]  WITH CHECK ADD FOREIGN KEY([RashiId])
REFERENCES [dbo].[tblRashi] ([id])
GO
ALTER TABLE [dbo].[UserMatchPreferances]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users_Image]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserSocialDetails]  WITH CHECK ADD FOREIGN KEY([DressingStyle])
REFERENCES [dbo].[tblDressingStyle] ([Id])
GO
ALTER TABLE [dbo].[UserSocialDetails]  WITH CHECK ADD FOREIGN KEY([FamilyIncomeId])
REFERENCES [dbo].[tblIncome] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[UserSocialDetails]  WITH CHECK ADD FOREIGN KEY([FamilyResidingCountryId])
REFERENCES [dbo].[tblCountry] ([id])
GO
ALTER TABLE [dbo].[UserSocialDetails]  WITH CHECK ADD FOREIGN KEY([FamilyResidingStateId])
REFERENCES [dbo].[tblState] ([id])
GO
ALTER TABLE [dbo].[UserSocialDetails]  WITH CHECK ADD FOREIGN KEY([FamilyResidingCityId])
REFERENCES [dbo].[tblDistrict] ([id])
GO
ALTER TABLE [dbo].[UserSocialDetails]  WITH CHECK ADD FOREIGN KEY([FatherWorkingStatus])
REFERENCES [dbo].[tblYesNo] ([Id])
GO
ALTER TABLE [dbo].[UserSocialDetails]  WITH CHECK ADD FOREIGN KEY([FatherOccupation])
REFERENCES [dbo].[tblJobField] ([id])
GO
ALTER TABLE [dbo].[UserSocialDetails]  WITH CHECK ADD FOREIGN KEY([MotherWorkingStatus])
REFERENCES [dbo].[tblYesNo] ([Id])
GO
ALTER TABLE [dbo].[UserSocialDetails]  WITH CHECK ADD FOREIGN KEY([MotherOccupation])
REFERENCES [dbo].[tblJobField] ([id])
GO
ALTER TABLE [dbo].[UserSocialDetails]  WITH CHECK ADD FOREIGN KEY([ProfileManagerName])
REFERENCES [dbo].[tblProfileManager] ([Id])
GO
ALTER TABLE [dbo].[UserSocialDetails]  WITH CHECK ADD FOREIGN KEY([RashiId])
REFERENCES [dbo].[tblRashi] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[UserSocialDetails]  WITH CHECK ADD FOREIGN KEY([UserCasteId])
REFERENCES [dbo].[tblCaste] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[UserSocialDetails]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserSocialDetails]  WITH CHECK ADD FOREIGN KEY([UserLivingCountryId])
REFERENCES [dbo].[tblCountry] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[UserSocialDetails]  WITH CHECK ADD FOREIGN KEY([UserLivingStateId])
REFERENCES [dbo].[tblState] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[UserSocialDetails]  WITH CHECK ADD FOREIGN KEY([UserLivingCityId])
REFERENCES [dbo].[tblDistrict] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[UserSocialDetails]  WITH CHECK ADD FOREIGN KEY([UserReligionId])
REFERENCES [dbo].[tblReligion] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[UserSocialDetails]  WITH CHECK ADD FOREIGN KEY([UserSubCasteId])
REFERENCES [dbo].[tblSubCaste] ([id])
ON UPDATE CASCADE
GO
/****** Object:  StoredProcedure [dbo].[sp_EducationFieldsByClassId]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_EducationFieldsByClassId]
@qualificationClassId int
as
begin
Select e.id as Id,e.EducationClassId as EducationClassField, e.AreaName as EducationAreaName  from tblEducationArea e where e.EducationClassId = @qualificationClassId 
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllCountryList]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_GetAllCountryList]
as
begin
Select c.id as Id, c.country_name as CountryName from tblCountry c
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllJobFields]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_GetAllJobFields]
as
begin
Select j.id as Id, j.JobFieldName as JobFieldName from tblJobField j
end

GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllLanguages]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_GetAllLanguages]
as
begin
Select l.Id as Id, l.LaunguageName as LaunguageName from tblLanguage l
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllQualificationClass]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_GetAllQualificationClass]
as
begin
select q.id as Id, q.Qualification_Name as QualificationName from tblQualifiationClass q
end

GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllRashi]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_GetAllRashi]
as
begin
Select r.id as Id, r.Rashi_Name as RashiName from tblRashi r
end

GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllReligions]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_GetAllReligions]
as
begin
Select r.id as Id, r.religion_name as ReligionName from tblReligion r
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetBodyColorOptions]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE proc [dbo].[sp_GetBodyColorOptions]
as
begin
Select bc.id as Id, bc.Body_Colour as sBodyColour from tblBodyColour bc
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetBodyColour]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	create proc [dbo].[sp_GetBodyColour]
	as
	begin
	Select id, Body_Colour from tblBodyColour
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetBodyType]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetBodyType]
as
begin
Select b.Id as Id, b.BodyType as BodyTypeName from tblBodyType b
end

GO
/****** Object:  StoredProcedure [dbo].[sp_GetCasteByReligionId]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_GetCasteByReligionId]
@religionId int
as
begin
Select c.id as Id, c.religion_id as ReligionId, c.Caste_Name as CasteName from tblCaste c where c.religion_id = @religionId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetCountryList]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetCountryList]
@countryId int
as
begin
Select c.id as Id, c.country_name as CountryName from tblCountry c where c.id = @countryId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetDistrictList]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetDistrictList]
@stateId int
as
begin
Select d.id as Id,d.state_id as StateId, d.District_Name as DistrictName from tblDistrict d where d.state_id = @stateId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetDressignStyles]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_GetDressignStyles]
as
begin
Select s.Id as Id, s.StyleName as StyleName from tblDressingStyle s
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetFoodHabbits]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_GetFoodHabbits]
as
begin
Select f.Id as Id, f.FoodType as FoodType from tblFoodType f
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetHabbitsType]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_GetHabbitsType]
as
begin
Select h.id as Id, h.isYesNoOccasional as isYesNoOccasional from tblTypeHabbits h
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetIncomeRange]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_GetIncomeRange]
as
begin
Select I.Id as Id, I.IncomeValue as IncomeValue  from tblIncome I
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetJobFields]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetJobFields]
@jobFieldId int
as
begin
Select j.id as Id, j.JobFieldName as JobFieldName from tblJobField j where j.id = @jobFieldId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetManlikStatus]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetManlikStatus]
as
begin
Select m.Id, m.ManglikState as ManglikStateName from tblManglikState m
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetMarritalStatus]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetMarritalStatus]
as
begin
Select m.Id as Id, m.MarritalStatus as MarritalStatusName from tblMarritalStatus m
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetProfileManagers]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_GetProfileManagers]
as
begin
Select pm.Id, pm.ProfileManagerName as ProfileManagerName from tblProfileManager pm
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetQualificationClass]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetQualificationClass]
@qualificationClassId int
as
begin
Select q.Id , q.Qualification_Name as QualificationName from tblQualifiationClass q where q.id = @qualificationClassId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetStateList]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetStateList]
@countryId int
as
begin
Select s.id as Id,s.country_id as CountryId, s.state_name as StateName from tblState s where s.country_id = @countryId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetSubCasteByCasteId]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_GetSubCasteByCasteId]
@casteId int
as
begin
Select s.id as Id, s.Caste_Id as  CasteId, s.SubCaste_Name as SubCasteName from tblSubCaste s where s.Caste_Id = @casteId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetUserDetails]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	CREATE proc [dbo].[sp_GetUserDetails]
	@UserEmail varchar(200)
	as
	begin 
	Select u.UserId,u.UserFirstName + u.UserMiddleName + u.UserLastName as UserName, u.UserEmail as UserEmail, u.UserContact as UserContacr from Users u where u.UserEmail = @UserEmail
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetYesNoValues]    Script Date: 17-09-2016 17:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetYesNoValues]
as
begin
Select yn.Id as Id, yn.Value as YesNoValues from tblYesNo yn where yn.Id in(1,2)
end
GO
