CREATE DATABASE 

CREATE TABLE [dbo].[DimClientes](
	 [IDCliente] INT IDENTITY (1,1) NOT NULL 
	 ,[ID_Alternativo_Cliente] INT NULL
	 ,[GeneroDW] NVARCHAR (10) NULL
	 ,[TituloDW] NVARCHAR (150) NULL
	 ,[Nome_sistemaDW] NVARCHAR (150) NULL
	 ,[Inicial_nome_meioDW] NVARCHAR (150)NULL
	 ,[SobrenomeDW] NVARCHAR (150) NULL
	 ,[EndereçoDW] NVARCHAR (150) NULL
	 ,[CidadeDW] NVARCHAR (50) NULL
	 ,[EstadoDW] NVARCHAR (50) NULL
	 ,[Estado_completoDW] NVARCHAR (50) NULL
	 ,[ZipCodeDW] NVARCHAR (50) NULL
	 ,[PaísDW] NVARCHAR (50) NULL
	 ,[País_CompletoDW] NVARCHAR (50) NULL
	 ,[NascimentoDW] DATETIME NULL
	 ,[IdadeDW] INT NULL
	 ,[OcupaçãoDW] NVARCHAR (100) NULL
	 ,[EmpresaDW] NVARCHAR (50) NULL
	 ,[VeículoDW] NVARCHAR (50) NULL
	 ,[LatitudeDW] FLOAT NULL
	 ,[LongitudeDW] FLOAT NULL
	 ,[ContinenteDW] NVARCHAR (50) NULL
  CONSTRAINT [PK_DimCliente_IDCliente] PRIMARY KEY CLUSTERED 
(
	[IDCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]




CREATE TABLE [dbo].[DimProduto](
 [IDProdutoDW] INT IDENTITY (1,1) NOT NULL 
 ,[ID_Alternativo_Produto] BIGINT NULL
 ,[Cod_ProdutoDW] NVARCHAR (255) NULL
 ,[Nome_ProdutoDW] NVARCHAR (500) NULL
 ,[FornecedorDW] NVARCHAR (50) NULL
 ,[MarcaDW] NVARCHAR (50) NULL
 ,[CorDW] NVARCHAR (20) NOT NULL
 ,[Escala_PesoDW] NVARCHAR (20) NULL
 ,[PesoDW] FLOAT NULL
 ,[Custo_UnitárioDW] MONEY NULL
 ,[Preco_UnitárioDW] MONEY NULL
 ,[Cod_SubcategoriaDW] NVARCHAR (100) NULL
 ,[SubcategoriaDW] NVARCHAR (50) NULL
 ,[Cod_CategoriaDW] NVARCHAR (100) NULL
 ,[CategoriaDW] NVARCHAR (30) NULL
  CONSTRAINT [PK_DimProduto_IDProduto] PRIMARY KEY CLUSTERED 
(
	[IDProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


 CREATE TABLE [dbo].[DimLoja] (
	[IDLoja] INT IDENTITY (1,1) NOT NULL
	,[ID_Alternativo_Loja] INT NULL
	,[Cod_LojaDW] INT NULL
	,[PaísDW] NVARCHAR (50) NULL
	,[EstadoDW] NVARCHAR (50) NULL
	,[NomeDW] NVARCHAR (100) NULL
	,[Metros_QuadradosDW] INT NULL
	,[Data_AberturaDW] DATE NULL
	,[Data_FechamentoDW] DATE NULL
	,[StatusDW] NVARCHAR (50) NULL
	,[SSIS_ID] NVARCHAR (50) NULL
	,[DATA_MODIFICACAO] DATE NULL
	CONSTRAINT [PK_DimLoja_IDLoja] PRIMARY KEY CLUSTERED
(
	[IDLoja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[DimData](
	  [IDData] INT NOT NULL
	 ,[Data] DATE NULL 
	 ,[Ano] INT NULL
	 ,[Nome_Quadrimestre] NVARCHAR (30) NULL
	 ,[Identificador_Quadrimestre] INT NULL
	 ,[Quadrimestre] VARCHAR (2) NULL
	 ,[Mês&Ano] NVARCHAR (30) NULL 
	 ,[Mês&Ano_reduzido] NVARCHAR (30) NULL
	 ,[Identificador_Mês&Ano] INT NULL
	 ,[Mês] NVARCHAR (30) NULL
	 ,[Mês_reduzido] NVARCHAR (30) NULL
	 ,[Identificador_Mês] INT NULL
	 ,[Dia_Semana] NVARCHAR (30) NULL
	 ,[Dia_Semana_reduzido] NVARCHAR (30) NULL
	 ,[Identificador_Dia_Semana] INT NULL
	 ,[Dia_de_Trabalho] BIT NULL
	 ,[Identificador_Dia_de_Trabalho] INT NULL
	 ,[SSIS_ID] NVARCHAR (50) NULL
	 ,[DATA_MODIFICACAO] DATE NULL
 CONSTRAINT [PK_DimData_IDData] PRIMARY KEY CLUSTERED 
(
	[IDData] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

DROP TABLE [dbo].[FatoPedido]

CREATE TABLE [dbo].[FatoPedido](
	[IDPedido] BIGINT NOT NULL
	,[IDProduto] INT NOT NULL
	,[IDCliente] INT NOT NULL
	,[IDLoja] INT NOT NULL
	,[IDDataPedido] INT NOT NULL
	,[IDDataEntrega] INT NOT NULL
	,[DataPedido] DATE NULL
	,[DataEntrega] DATE NULL
	,[Quantidade] INT NULL
	,[Preco_Unitario] FLOAT NULL
	,[Preco_Liquido] FLOAT NULL
	,[Custo_Unitario] FLOAT NULL
	,[Cod_Monetario] NVARCHAR (3) NULL

	 CONSTRAINT [PK_FatoPedido_IDPedido] PRIMARY KEY CLUSTERED 
(
	[IDPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]



ALTER TABLE [dbo].[FatoPedido]  WITH CHECK ADD  CONSTRAINT [FK_FatoPedido_DimLoja] FOREIGN KEY([IDLoja])
REFERENCES [dbo].[DimLoja] ([IDLoja])
GO
ALTER TABLE [dbo].[FatoPedido] CHECK CONSTRAINT [FK_FatoPedido_DimLoja]



ALTER TABLE [dbo].[FatoPedido]  WITH CHECK ADD  CONSTRAINT [FK_FatoPedido_DimProduto] FOREIGN KEY([IDProduto])
REFERENCES [dbo].[DimProduto] ([IDProduto])
GO
ALTER TABLE [dbo].[FatoPedido] CHECK CONSTRAINT [FK_FatoPedido_DimProduto]



ALTER TABLE [dbo].[FatoPedido]  WITH CHECK ADD  CONSTRAINT [FK_FatoPedido_DimClientes] FOREIGN KEY([IDCliente])
REFERENCES [dbo].[DimClientes] ([IDCliente])
GO
ALTER TABLE [dbo].[FatoPedido] CHECK CONSTRAINT [FK_FatoPedido_DimClientes]



ALTER TABLE [dbo].[FatoPedido]  WITH CHECK ADD  CONSTRAINT [FK_FatoPedido_DimData] FOREIGN KEY([IDDataPedido])
REFERENCES [dbo].[DimData] ([IDData])
GO
ALTER TABLE [dbo].[FatoPedido] CHECK CONSTRAINT [FK_FatoPedido_DimData]



ALTER TABLE [dbo].[FatoPedido]  WITH CHECK ADD  CONSTRAINT [FK_FatoPedido_DimData1] FOREIGN KEY([IDDataEntrega])
REFERENCES [dbo].[DimData] ([IDData])
GO
ALTER TABLE [dbo].[FatoPedido] CHECK CONSTRAINT [FK_FatoPedido_DimData1]