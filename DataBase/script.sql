USE [Dbo_yemektarifi]
GO
/****** Object:  Table [dbo].[Tbl_GununYemegi]    Script Date: 25.10.2021 22:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_GununYemegi](
	[GununYemegiid] [smallint] IDENTITY(1,1) NOT NULL,
	[GununYemegiAd] [varchar](50) NULL,
	[GununYemegiMalzeme] [varchar](500) NULL,
	[GununYemegiTarif] [varchar](max) NULL,
	[GununYemegiResim] [varchar](100) NULL,
	[GununYemegiPuan] [tinyint] NULL,
	[GununYemegiTarih] [smalldatetime] NULL CONSTRAINT [DF_Tbl_GununYemegi_GununYemegiTarih]  DEFAULT (getdate()),
 CONSTRAINT [PK_Tbl_GununYemegi] PRIMARY KEY CLUSTERED 
(
	[GununYemegiid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Hakkimizda]    Script Date: 25.10.2021 22:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Hakkimizda](
	[Metin] [varchar](2000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Kategoriler]    Script Date: 25.10.2021 22:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Kategoriler](
	[Kategoriid] [smallint] IDENTITY(1,1) NOT NULL,
	[KategoriAd] [varchar](50) NULL,
	[KategoriAdet] [smallint] NULL CONSTRAINT [DF_Tbl_Kategoriler_KategoriAdet]  DEFAULT ((0)),
	[KategoriResim] [varchar](100) NULL,
 CONSTRAINT [PK_Tbl_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[Kategoriid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Mesajlar]    Script Date: 25.10.2021 22:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Mesajlar](
	[Mesajid] [smallint] IDENTITY(1,1) NOT NULL,
	[MesajGonderen] [varchar](50) NULL,
	[MesajBaslik] [varchar](30) NULL,
	[MesajMail] [varchar](50) NULL,
	[Mesajicerik] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Tarifler]    Script Date: 25.10.2021 22:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Tarifler](
	[Tarifid] [smallint] IDENTITY(1,1) NOT NULL,
	[TarifAd] [varchar](50) NULL,
	[TarifMalzeme] [varchar](500) NULL,
	[TarifYapilis] [varchar](max) NULL,
	[TarifResim] [varchar](50) NULL,
	[TarifSahip] [varchar](50) NULL,
	[TarifSahipMail] [varchar](70) NULL,
	[TarifDurum] [bit] NULL CONSTRAINT [DF_Tbl_Tarifler_TarifDurum]  DEFAULT ((0)),
 CONSTRAINT [PK_Tbl_Tarifler] PRIMARY KEY CLUSTERED 
(
	[Tarifid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Yemekler]    Script Date: 25.10.2021 22:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Yemekler](
	[Yemekid] [smallint] IDENTITY(1,1) NOT NULL,
	[YemekAd] [varchar](50) NULL,
	[YemekMalzeme] [varchar](500) NULL,
	[YemekTarif] [varchar](max) NULL,
	[YemekResim] [varchar](100) NULL,
	[YemekTarih] [smalldatetime] NULL CONSTRAINT [DF_Tbl_Yemekler_YemekTarih]  DEFAULT (getdate()),
	[YemekPuan] [float] NULL,
	[Kategoriid] [smallint] NULL,
	[Durum] [bit] NULL CONSTRAINT [DF_Tbl_Yemekler_Durum]  DEFAULT ((0)),
 CONSTRAINT [PK_Tbl_Yemekler] PRIMARY KEY CLUSTERED 
(
	[Yemekid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Yonetici]    Script Date: 25.10.2021 22:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Yonetici](
	[Yoneticiid] [tinyint] IDENTITY(1,1) NOT NULL,
	[YoneticiAd] [varchar](50) NULL,
	[YoneticiSifre] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Yonetici] PRIMARY KEY CLUSTERED 
(
	[Yoneticiid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Yorumlar]    Script Date: 25.10.2021 22:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Yorumlar](
	[Yorumid] [smallint] IDENTITY(1,1) NOT NULL,
	[YorumAdSoyad] [varchar](50) NULL,
	[YorumMail] [varchar](50) NULL,
	[YorumTarih] [smalldatetime] NULL CONSTRAINT [DF_Tbl_Yorumlar_YorumTarih]  DEFAULT (getdate()),
	[YorumOnay] [bit] NULL CONSTRAINT [DF_Tbl_Yorumlar_YorumOnay]  DEFAULT ((0)),
	[Yorumicerik] [varchar](500) NULL,
	[Yemekid] [smallint] NULL,
 CONSTRAINT [PK_Tbl_Yorumlar] PRIMARY KEY CLUSTERED 
(
	[Yorumid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_GununYemegi] ON 

INSERT [dbo].[Tbl_GununYemegi] ([GununYemegiid], [GununYemegiAd], [GununYemegiMalzeme], [GununYemegiTarif], [GununYemegiResim], [GununYemegiPuan], [GununYemegiTarih]) VALUES (1, N'Mücver', N'3 adet yumurta, 3 adet kabak, Yarım su bardağı un, 2-3 dal yeşil soğan, Yarım demet maydanoz, Bir tutam dereotu, Tuz, Karabiber, Pul biber', N'İlk olarak mücver malzemelerini hazırlayalım. Kabakları soyarak rendenin iri kısmında rendeleyelim. Yeşil soğan, maydanoz ve dereotu minik minik doğrayalım. Kabak Mücver harcını hazırlayalım. Yumurtaları derince bir kaba alalım un ilave edilerek pürüzsüz kıvam alana kadar çırpalım. Baharatları, suyunu iyice sıktığımız kabakları ve doğranmış dereotu, yeşil soğan ve maydanozu eklenerek karıştıralım. Mücver harcımız hazır. Mücveri tavada pişirelim. Teflon tavaya az miktarda sıvı yağ alalım, kabak karışımından bir kaşık dökelim. Mücverlerin her iki yüzü de kızardıktan sonra havlu kağıt serilmiş tabağa alalım. Kabak mücveri servis edelim Mücverleri ister sıcak, isterseniz soğuk olarak servis edebilirsiniz. Afiyet olsun.', NULL, 7, CAST(N'2021-09-30 12:17:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[Tbl_GununYemegi] OFF
INSERT [dbo].[Tbl_Hakkimizda] ([Metin]) VALUES (N'İki hakkımızda sayfası, sitedeki diğer tüm sayfalar gibi oldukça dikkatli bir şekilde planlanmalı ve yayınlanmalıdır. Eğer böyle olmazsa, ziyaretçilerinizin ilgisini kaybetmenize ve dolayısıyla gelecekteki satışlarınızın düşme ihtimalinin riskini alırsınız. Eksiksiz ve kusursuz bir hakkımızda sayfası için tüm bu noktaları göz önünde bulundurun ve daha sonra bu bileşenleri bir araya getirmenin en iyi yolunu bularak sayfanızı yayına alın.


Sakın ola vasat bir hakkımızda sayfası yapmayın. İşletmenizin her konuda en iyilere layık olduğunu düşünüyorsanız, bunu hakkımızda sayfası tasarımı için de kurgulamaktan asla çekinmemeli ve de unutmamalısınız. Yukarıda anlatılan beş temel adımı uygulayarak ya da kendinize göre uyarlayarak oldukça mükemmel bir sayfa hazırlayabilirsiniz. Böylelikle de, hem müşterileriniz ile hem de potansiyel müşterileriniz ile oldukça sıkı bir bağ kurma şansına sahip olursunuz.')
SET IDENTITY_INSERT [dbo].[Tbl_Kategoriler] ON 

INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (1, N'Çorbalar', 4, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (2, N'Sebze Yemekleri', 3, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (3, N'Et Yemekleri', 2, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (4, N'Makarna Çeşitleri', 1, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (5, N'Tavuk Yemekleri', 0, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (6, N'Pastalar', 0, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (7, N'İçecekler', 1, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (8, N'Tatlılar', 0, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Kategoriler] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Mesajlar] ON 

INSERT [dbo].[Tbl_Mesajlar] ([Mesajid], [MesajGonderen], [MesajBaslik], [MesajMail], [Mesajicerik]) VALUES (1, N'Ahmet Tunca', N'Teşekkür', N'tunca@mail.com', N'Siteniz çok güzel, çok işimize yarıyor.')
INSERT [dbo].[Tbl_Mesajlar] ([Mesajid], [MesajGonderen], [MesajBaslik], [MesajMail], [Mesajicerik]) VALUES (2, N'Ahmet Tunca', N'Teşekkür', N'tunca@mail.com', N'Siteniz çok güzel, çok işimize yarıyor.')
INSERT [dbo].[Tbl_Mesajlar] ([Mesajid], [MesajGonderen], [MesajBaslik], [MesajMail], [Mesajicerik]) VALUES (3, N'Ahmet Tunca', N'Teşekkür', N'tunca@mail.com', N'Siteniz çok güzel, çok işimize yarıyor.')
INSERT [dbo].[Tbl_Mesajlar] ([Mesajid], [MesajGonderen], [MesajBaslik], [MesajMail], [Mesajicerik]) VALUES (4, N'Ayşe Çınar', N'Tavsiye', N'deneme@hotmail.com', N'Saat  02.08''de video çekimi devam ediyor. Bilgi güçtür.')
INSERT [dbo].[Tbl_Mesajlar] ([Mesajid], [MesajGonderen], [MesajBaslik], [MesajMail], [Mesajicerik]) VALUES (6, N'Recep Aksakal', N'Şikayet', N'reco@mail.com', N'Mancarı iyi yapamamışsınız.')
INSERT [dbo].[Tbl_Mesajlar] ([Mesajid], [MesajGonderen], [MesajBaslik], [MesajMail], [Mesajicerik]) VALUES (7, N'Recep Aksakal', N'Şikayet', N'reco@mail.com', N'Mancarı iyi yapamamışsınız.')
INSERT [dbo].[Tbl_Mesajlar] ([Mesajid], [MesajGonderen], [MesajBaslik], [MesajMail], [Mesajicerik]) VALUES (5, N'Ayşe Çınar', N'Tavsiye', N'deneme@hotmail.com', N'Saat  02.08''de video çekimi devam ediyor. Bilgi güçtür.')
SET IDENTITY_INSERT [dbo].[Tbl_Mesajlar] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Tarifler] ON 

INSERT [dbo].[Tbl_Tarifler] ([Tarifid], [TarifAd], [TarifMalzeme], [TarifYapilis], [TarifResim], [TarifSahip], [TarifSahipMail], [TarifDurum]) VALUES (1, N'Mercimek Çorbası', N'Mercimek, Sebze', N'', N'', N'', N'          ', 1)
INSERT [dbo].[Tbl_Tarifler] ([Tarifid], [TarifAd], [TarifMalzeme], [TarifYapilis], [TarifResim], [TarifSahip], [TarifSahipMail], [TarifDurum]) VALUES (2, N'Sebzeli Kuşbaşı', N'kuşbaşı, sebze', N'iyice pişirin', N'kusbasi.jpg', N'Recep Aksakaloğlu', N'recep@hotmail.com', 1)
INSERT [dbo].[Tbl_Tarifler] ([Tarifid], [TarifAd], [TarifMalzeme], [TarifYapilis], [TarifResim], [TarifSahip], [TarifSahipMail], [TarifDurum]) VALUES (3, N'Gara Mancar', N'1, 5 çorba kasesi mısır bulgur
2 adet kuru soğan
2 adet yeşil biber
Tuz, kırmızıbiber
1 demet mancar
2 yemek kaşığı salça
3 yemek kaşığı tereyağı', N'Lahanayı doğrayıp kaynar suda iyice haşlayalım. Sonra soğuk suda bekletip suyunu sıkalım. Bir gün önceden ıslatılmış mısır bulguruna biberleri uzun kestiğimiz soğanları ve yarım çay bardağından biraz daha az yağı ekleyelim ve karıştıralım. Düdüklünün en alt kısmına iki avuç mancar koyalım mısır karışımını üzerine koyun kalan mancarı tekrar koyup üzerine tekrardan bulgur koyun tereyağını çok az sıvı yağ salçayı kavurun üzerine dökün üzerine çıkacak kadar kaynar su koyun düdüklünün kapağını kapatıp 1 saat kısık ateşte pişirin.

Afiyet olsun :))', NULL, N'Ayşegül Turan', N'aksakalogluaysegul@mail.com', 1)
SET IDENTITY_INSERT [dbo].[Tbl_Tarifler] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Yemekler] ON 

INSERT [dbo].[Tbl_Yemekler] ([Yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (1, N'Köri Soslu Makarna', N'1/2 paket, makarna, (haşlanmış)1 paket, krema, 1 tatlı kaşığı, köri, 2 çay kaşığı, tuz, 1 çay kaşığı, karabiber, 1 yemek kaşığı, tereyağı, 2 parça, tavuk göğsü, 100 gram, parmesan(rendelenmiş)', N'Makarnayı haşlayın.Tavukları küp küp doğrayın.Tavayı ısıtın ve tereyağını eritin.Eriyen tereyağında tavukları kavurun.Köri, karabiber ve tuzu ilave edin.Kremayı ilave edin ve kısık ateşte pişirmeye ve kremayı yoğunlaştırmaya devam edin.Makarnayı ilave edin ve henüz sıcakken parmesan ekleyip tavada çevirin.Tabağa alın ve parmesan peyniri ilave edin. İşte bu kadar, afiyet olsun!', N'~/resimler/ksm.jpg', CAST(N'2021-10-01 16:50:00' AS SmallDateTime), 8.2, 4, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (2, N'Zeytinyağlı Barbunya', N'1 kilogramtaze barbunya, 1/2 çay bardağızeytinyağı, 1 adetorta boy kuru soğan, 2 dişsarımsak,
1 adetbüyük boy patates, 2 adetorta boy havuç, 2 adetorta boy domates, 2 su bardağısıcak su,
1 tatlı kaşığıdomates salçası, 1 tatlı kaşığıtoz şeker, 1 çay kaşığıtuz
', N'Kabuklarını ayıklayıp bol suda yıkadığınız barbunyaları üzerini geçecek kadar su ilavesiyle orta ateşte 10 dakika kadar haşlayın.Kuru soğanı rendenin ince tarafıyla rendeleyin. Sarımsakları ayıklayın, lezzet vermesi için bütün olarak bırakın. Kabuğunu soyduğunuz patates ve havuçları küçük küpler halinde doğrayın. Ortadan ikiye kesip uç kısımlarını aldığınız domatesleri rendeleyin.Zeytinyağını derin bir tencerede kızdırın. Rendelenmiş soğan ve sarımsakları katıp hafif bir renk alana kadar soteleyin. Patates ve havuç küplerini katıp kısa süre kavurun.Hafif renk vermesi için domates salçası ve rendelenmiş domatesleri katıp kısık ateşte pişmeye bırakın.Haşlanmış barbunyayı süzüp tencereye alın. Toz şeker, tuz ve sıcak suyu ekledikten sonra kısık ateşte barbunyalar yumuşayana kadar pişirin.Ocaktan aldığınız barbunyayı kapağı kapalı tencerede oda ısısına gelene kadar dinlendirin.Sonrasında derin bir servis kabına aktardığınız barbunyayı; arzuya göre üzerine gezdirdiğiniz sızma zeytinyağı, taze sıkılmış limon suyu, incecik kıyılmış maydanoz eşliğinde ılık ya da soğuk olarak sevdiklerinizle paylaşın.', NULL, CAST(N'2021-10-01 16:55:00' AS SmallDateTime), 8.5, 2, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (3, N'Mercimek Çorbası', N'1 su bardağıkırmızı ya da sarı mercimek, 1 adetkuru soğan, 1 adetpatates, 1 adethavuç, 1 yemek kaşığıun, 2 yemek kaşığıayçiçek yağı, 6 su bardağısıcak su, (1 adet et su tablet ile hazırlanmış)1 çay kaşığıtuz, 1 çay kaşığıkarabiber', N'Kuru soğanı küçük küpler halinde doğrayın. Ayçiçek yağını derin bir tencerede kızdırın. Doğradığınız soğanları 2- 3 dakika kadar kavurun.Kavrulan soğanlara unu ekleyin ve kokusu çıkıp, renk alana kadar kavurma işlemini sürdürün.İri parçalar halinde doğradığınız patates ve havucu tencereye aktarın.Tüm malzemeyi karıştırdıktan sonra arzuya göre et su tablet ile hazırladığınız sıcak suyu ve bol suda yıkadıktan sonra suyunu süzdürdüğünüz mercimeği ilave edin.Tuz ve karabiberi ekleyin. Havuçlar yumuşayana kadar orta ateşte yaklaşık 40 dakika pişirin.Çorbayı, pürüzsüz bir kıvam alması için; el blenderından geçirdikten sonra sıcak olarak sevdiklerinizle paylaşın.', N'~/resimler/mercimek.jpg', CAST(N'2021-10-01 16:56:00' AS SmallDateTime), 8.3, 1, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (4, N'Ezogelin Çorbası', N'Su, tuz, biber', N'Yapın işte bi şeyler.', NULL, CAST(N'2021-10-02 12:15:00' AS SmallDateTime), 9.1, 1, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (5, N'Baklava', N'Şeker, yağ', N'Yufka aç, yap.', NULL, CAST(N'2021-10-15 19:22:00' AS SmallDateTime), NULL, 8, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (7, N'Biber Dolması', N'', N'', NULL, CAST(N'2021-10-15 19:37:00' AS SmallDateTime), NULL, 2, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (8, N'Et sote', N'', N'', NULL, CAST(N'2021-10-15 19:38:00' AS SmallDateTime), NULL, 3, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (10, N'Döşeme Mancarı', N'Mancar, yağ', N'Mancarı gözelce döşey', N'~/resimler/mancar.jpg', CAST(N'2021-10-15 23:12:00' AS SmallDateTime), NULL, 2, 1)
INSERT [dbo].[Tbl_Yemekler] ([Yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (14, N'Kiren komposlusu', N'Kiren', N'Şekersüz yap', NULL, CAST(N'2021-10-15 23:19:00' AS SmallDateTime), NULL, 7, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (15, N'Sebzeli Kuşbaşı', N'kuşbaşı, sebze', N'iyice pişirin', NULL, CAST(N'2021-10-16 19:56:00' AS SmallDateTime), NULL, 3, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (16, N'Mercimek Çorbası', N'Mercimek, Sebze', N'', NULL, CAST(N'2021-10-16 20:04:00' AS SmallDateTime), NULL, 1, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (17, N'Mercimek Çorbası', N'Mercimek, Sebze', N'', NULL, CAST(N'2021-10-16 21:29:00' AS SmallDateTime), NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Tbl_Yemekler] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Yorumlar] ON 

INSERT [dbo].[Tbl_Yorumlar] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumicerik], [Yemekid]) VALUES (1, N'Recep Aksakaloğlu', N'recep@mail.com', CAST(N'2021-10-01 18:45:00' AS SmallDateTime), 1, N'Yemek şahane olmuş ama mercimeği yarım bardak fazla koymakta fayda var.', 3)
INSERT [dbo].[Tbl_Yorumlar] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumicerik], [Yemekid]) VALUES (2, N'Ayşegül Turan', N'aksakalogluaysegul@mail.com', CAST(N'2021-10-01 18:45:00' AS SmallDateTime), 0, N'Ben daha güzel yapardım. Ben süper aşçıyım.', 1)
INSERT [dbo].[Tbl_Yorumlar] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumicerik], [Yemekid]) VALUES (3, N'Satı Fatı', N'satı@mail.com', CAST(N'2021-10-01 18:46:00' AS SmallDateTime), 1, N'Çorba süper ya var ya.', 3)
INSERT [dbo].[Tbl_Yorumlar] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumicerik], [Yemekid]) VALUES (4, N'Ahmet Yıldız', N'ahmty@mail.com', CAST(N'2021-10-01 22:15:00' AS SmallDateTime), 0, N'Yeşil mercimek ile de olur mu?', 3)
INSERT [dbo].[Tbl_Yorumlar] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumicerik], [Yemekid]) VALUES (5, N'Ayşegül Turan', N'aksakalogluaysegul@mail.com', CAST(N'2021-10-01 22:16:00' AS SmallDateTime), 0, N'Sarımsak olmaması sorun olur mu?', 1)
INSERT [dbo].[Tbl_Yorumlar] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumicerik], [Yemekid]) VALUES (6, N'Recep Aksakaloğlu', N'recep@mail.com', CAST(N'2021-10-01 23:28:00' AS SmallDateTime), 0, N'Olur tabi, sarımsaksız yemek mi olurmuş?', 1)
INSERT [dbo].[Tbl_Yorumlar] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumicerik], [Yemekid]) VALUES (7, N'Recep Aksakaloğlu', N'recep@mail.com', CAST(N'2021-10-01 23:29:00' AS SmallDateTime), 0, N'Ne sarar var ya.', 2)
INSERT [dbo].[Tbl_Yorumlar] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumicerik], [Yemekid]) VALUES (8, N'Ayşegül Turan', N'aksakalogluaysegul@mail.com', CAST(N'2021-10-01 23:29:00' AS SmallDateTime), 1, N'Çok lezzetli yaparım ben.', 2)
INSERT [dbo].[Tbl_Yorumlar] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumicerik], [Yemekid]) VALUES (9, N'Ayşegül Turan', N'aksakalogluaysegul@mail.com', CAST(N'2021-10-01 23:30:00' AS SmallDateTime), 0, N'Çok lezzetli yaparım.', 2)
INSERT [dbo].[Tbl_Yorumlar] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumicerik], [Yemekid]) VALUES (10, N'Recep Aksakaloğlu & Ayşegül Turan', N'recepaysa@gmail.com', CAST(N'2021-10-16 18:03:00' AS SmallDateTime), 0, N'Baklava şahane oldu.', 5)
SET IDENTITY_INSERT [dbo].[Tbl_Yorumlar] OFF
ALTER TABLE [dbo].[Tbl_Yemekler]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Yemekler_Tbl_Kategoriler] FOREIGN KEY([Kategoriid])
REFERENCES [dbo].[Tbl_Kategoriler] ([Kategoriid])
GO
ALTER TABLE [dbo].[Tbl_Yemekler] CHECK CONSTRAINT [FK_Tbl_Yemekler_Tbl_Kategoriler]
GO
ALTER TABLE [dbo].[Tbl_Yorumlar]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Yorumlar_Tbl_Yemekler] FOREIGN KEY([Yemekid])
REFERENCES [dbo].[Tbl_Yemekler] ([Yemekid])
GO
ALTER TABLE [dbo].[Tbl_Yorumlar] CHECK CONSTRAINT [FK_Tbl_Yorumlar_Tbl_Yemekler]
GO
