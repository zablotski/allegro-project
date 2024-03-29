USE [master]
GO
/****** Object:  Database [anitka]    Script Date: 2015-01-17 18:43:02 ******/
CREATE DATABASE [anitka]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'anitka', FILENAME = N'H:\anitka.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'anitka_log', FILENAME = N'H:\anitka_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [anitka] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [anitka].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [anitka] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [anitka] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [anitka] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [anitka] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [anitka] SET ARITHABORT OFF 
GO
ALTER DATABASE [anitka] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [anitka] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [anitka] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [anitka] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [anitka] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [anitka] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [anitka] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [anitka] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [anitka] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [anitka] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [anitka] SET  DISABLE_BROKER 
GO
ALTER DATABASE [anitka] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [anitka] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [anitka] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [anitka] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [anitka] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [anitka] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [anitka] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [anitka] SET RECOVERY FULL 
GO
ALTER DATABASE [anitka] SET  MULTI_USER 
GO
ALTER DATABASE [anitka] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [anitka] SET DB_CHAINING OFF 
GO
ALTER DATABASE [anitka] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [anitka] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'anitka', N'ON'
GO
USE [anitka]
GO
/****** Object:  Table [dbo].[Aukcja]    Script Date: 2015-01-17 18:43:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Aukcja](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ZdjecieID] [int] NULL,
	[UzytkownikID] [int] NOT NULL,
	[KategoriaID] [int] NOT NULL,
	[Numer] [int] NULL,
	[Tytul] [varchar](255) NULL,
	[OpisPrzedmiotu] [text] NULL,
	[TerminRozpoczecia] [datetime] NULL,
	[LiczbaPrzedmiotow] [int] NULL,
	[CenaKupTeraz] [real] NULL,
	[CenaWywolawcza] [real] NULL,
	[CenaMinimalna] [real] NULL,
	[TerminZakonczenia] [datetime] NULL,
	[FakturaVAT] [bit] NULL,
	[LiczbaOdwiedzin] [int] NULL,
	[TerminOstatnichOdwiedzin] [datetime] NULL,
	[LiczbaDostepnychPrzedmiotow] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DefinicjaJednostkiPrzedmiotu]    Script Date: 2015-01-17 18:43:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DefinicjaJednostkiPrzedmiotu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Sztuka] [int] NULL,
	[Komplet] [int] NULL,
	[Para] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kategoria]    Script Date: 2015-01-17 18:43:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Kategoria](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KategoriaID] [int] NULL,
	[Nazwa] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Komentarz]    Script Date: 2015-01-17 18:43:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Komentarz](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KtoWystawiaID] [int] NOT NULL,
	[UmowaID] [int] NOT NULL,
	[KomuWystawionyID] [int] NOT NULL,
	[Rodzaj] [int] NULL,
	[Tresc] [varchar](255) NULL,
	[DataWystawienia] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RodzajAukcji]    Script Date: 2015-01-17 18:43:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RodzajAukcji](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Licytacja] [int] NULL,
	[KupTeraz] [int] NULL,
	[LicytacjaZKupTeraz] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RodzajKomentarza]    Script Date: 2015-01-17 18:43:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RodzajKomentarza](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Pozytywny] [int] NULL,
	[Neutralny] [int] NULL,
	[Negatywny] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RodzajPlatnosci]    Script Date: 2015-01-17 18:43:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RodzajPlatnosci](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PrzyOdbiorze] [int] NULL,
	[ZGory] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TerminWysylki]    Script Date: 2015-01-17 18:43:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TerminWysylki](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Natychmiast] [int] NULL,
	[24 godzin] [int] NULL,
	[2 dni] [int] NULL,
	[3 dni] [int] NULL,
	[4 dni] [int] NULL,
	[5 dni] [int] NULL,
	[7 dni] [int] NULL,
	[10 dni] [int] NULL,
	[14 dni] [int] NULL,
	[21 dni] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Umowa]    Script Date: 2015-01-17 18:43:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Umowa](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KtoWystawilID] [int] NOT NULL,
	[KtoKupilID] [int] NOT NULL,
	[AukcjaID] [int] NOT NULL,
	[LiczbaSztuk] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Uzytkownik]    Script Date: 2015-01-17 18:43:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Uzytkownik](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Login] [varchar](255) NULL,
	[Imie] [varchar](255) NULL,
	[Nazwisko] [varchar](255) NULL,
	[E-mail] [varchar](255) NULL,
	[Telefon] [varchar](255) NULL,
	[DataUrodzenia] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Zdjecie]    Script Date: 2015-01-17 18:43:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Zdjecie](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AukcjaID] [int] NOT NULL,
	[Opis] [varchar](255) NULL,
	[PathDoZdjecia] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Aukcja]  WITH CHECK ADD  CONSTRAINT [FKAukcja811897] FOREIGN KEY([KategoriaID])
REFERENCES [dbo].[Kategoria] ([ID])
GO
ALTER TABLE [dbo].[Aukcja] CHECK CONSTRAINT [FKAukcja811897]
GO
ALTER TABLE [dbo].[Aukcja]  WITH CHECK ADD  CONSTRAINT [FKAukcja967614] FOREIGN KEY([UzytkownikID])
REFERENCES [dbo].[Uzytkownik] ([ID])
GO
ALTER TABLE [dbo].[Aukcja] CHECK CONSTRAINT [FKAukcja967614]
GO
ALTER TABLE [dbo].[Kategoria]  WITH CHECK ADD  CONSTRAINT [FKKategoria656904] FOREIGN KEY([KategoriaID])
REFERENCES [dbo].[Kategoria] ([ID])
GO
ALTER TABLE [dbo].[Kategoria] CHECK CONSTRAINT [FKKategoria656904]
GO
ALTER TABLE [dbo].[Komentarz]  WITH CHECK ADD  CONSTRAINT [FKKomentarz27436] FOREIGN KEY([KtoWystawiaID])
REFERENCES [dbo].[Uzytkownik] ([ID])
GO
ALTER TABLE [dbo].[Komentarz] CHECK CONSTRAINT [FKKomentarz27436]
GO
ALTER TABLE [dbo].[Komentarz]  WITH CHECK ADD  CONSTRAINT [FKKomentarz647893] FOREIGN KEY([UmowaID])
REFERENCES [dbo].[Umowa] ([ID])
GO
ALTER TABLE [dbo].[Komentarz] CHECK CONSTRAINT [FKKomentarz647893]
GO
ALTER TABLE [dbo].[Komentarz]  WITH CHECK ADD  CONSTRAINT [WniosekOUniewaznienieKomentarza] FOREIGN KEY([KomuWystawionyID])
REFERENCES [dbo].[Uzytkownik] ([ID])
GO
ALTER TABLE [dbo].[Komentarz] CHECK CONSTRAINT [WniosekOUniewaznienieKomentarza]
GO
ALTER TABLE [dbo].[Umowa]  WITH CHECK ADD  CONSTRAINT [FKUmowa585139] FOREIGN KEY([KtoKupilID])
REFERENCES [dbo].[Uzytkownik] ([ID])
GO
ALTER TABLE [dbo].[Umowa] CHECK CONSTRAINT [FKUmowa585139]
GO
ALTER TABLE [dbo].[Umowa]  WITH CHECK ADD  CONSTRAINT [FKUmowa604592] FOREIGN KEY([AukcjaID])
REFERENCES [dbo].[Aukcja] ([ID])
GO
ALTER TABLE [dbo].[Umowa] CHECK CONSTRAINT [FKUmowa604592]
GO
ALTER TABLE [dbo].[Umowa]  WITH CHECK ADD  CONSTRAINT [FKUmowa816462] FOREIGN KEY([KtoWystawilID])
REFERENCES [dbo].[Uzytkownik] ([ID])
GO
ALTER TABLE [dbo].[Umowa] CHECK CONSTRAINT [FKUmowa816462]
GO
ALTER TABLE [dbo].[Zdjecie]  WITH CHECK ADD  CONSTRAINT [FKZdjecie407977] FOREIGN KEY([AukcjaID])
REFERENCES [dbo].[Aukcja] ([ID])
GO
ALTER TABLE [dbo].[Zdjecie] CHECK CONSTRAINT [FKZdjecie407977]
GO
USE [master]
GO
ALTER DATABASE [anitka] SET  READ_WRITE 
GO
