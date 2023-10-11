CREATE TABLE [stg].[Cliente](
	 [ID_Cliente] INT NOT NULL
	 ,[Genero] NVARCHAR (10) NULL
	 ,[Titulo] NVARCHAR (150) NULL
	 ,[Nome_sistema] NVARCHAR (150) NULL
	 ,[Inicial_nome_meio] NVARCHAR (150)NULL
	 ,[Sobrenome] NVARCHAR (150) NULL
	 ,[Endereço] NVARCHAR (150) NULL
	 ,[Cidade] NVARCHAR (50) NULL
	 ,[Estado] NVARCHAR (50) NULL
	 ,[Estado_completo] NVARCHAR (50) NULL
	 ,[ZipCode] NVARCHAR (50) NULL
	 ,[País] NVARCHAR (50) NULL
	 ,[País_Completo] NVARCHAR (50) NULL
	 ,[Nascimento] DATETIME NULL
	 ,[Idade] INT NULL
	 ,[Ocupação] NVARCHAR (100) NULL
	 ,[Empresa] NVARCHAR (50) NULL
	 ,[Veículo] NVARCHAR (50) NULL
	 ,[Latitude] FLOAT NULL
	 ,[Longitude] FLOAT NULL
	 ,[Continente] NVARCHAR (50) NULL
	 ,[SSIS_ID] NVARCHAR (50) NULL
	 ,[DATA_MODIFICACAO] DATE NULL
)


CREATE TABLE [stg].[Data](
	 [ID_Data] INT NULL
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
)


CREATE TABLE [stg].[TrocaMoeda](
	[Data] DATE NOT NULL
	,[MoedaOrigem] NCHAR(3) NOT NULL
	,[MoedaFinal] NCHAR(3) NOT NULL
	,[ValorCotacao] FLOAT NULL
	,[SSIS_ID] NVARCHAR (50) NULL
	,[DATA_MODIFICACAO] DATE NULL
)


CREATE TABLE [stg].[Geolocalizacao](
	[ID_Geolocalizacao] INT NULL
	,[Cod_País] NVARCHAR (50) NULL
	,[País] NVARCHAR (50) NULL
	,[Cod_Estado] NVARCHAR (50) NULL
	,[Estado] NVARCHAR (50) NULL
	,[Numero_Consumidores] INT NULL
	,[SSIS_ID] NVARCHAR (50) NULL
	,[DATA_MODIFICACAO] DATE NULL
)

CREATE TABLE [stg].[Produto](
 [ID_Produto] BIGINT NOT NULL
 ,[Cod_Produto] NVARCHAR (255) NULL
 ,[Nome_Produto] NVARCHAR (500) NULL
 ,[Fornecedor] NVARCHAR (50) NULL
 ,[Marca] NVARCHAR (50) NULL
 ,[Cor] NVARCHAR (20) NOT NULL
 ,[Escala_Peso] NVARCHAR (20) NULL
 ,[Peso] FLOAT NULL
 ,[Custo_Unitário] MONEY NULL
 ,[Preco_Unitário] MONEY NULL
 ,[Cod_Subcategoria] NVARCHAR (100) NULL
 ,[Subcategoria] NVARCHAR (50) NULL
 ,[Cod_Categoria] NVARCHAR (100) NULL
 ,[Categoria] NVARCHAR (30) NULL
 ,[SSIS_ID] NVARCHAR (50) NULL
 ,[DATA_MODIFICACAO] DATE NULL
 )

 CREATE TABLE [stg].[Loja](
	[ID_Loja] INT NOT NULL
	,[Cod_Loja] INT NULL
	,[País] NVARCHAR (50) NULL
	,[Estado] NVARCHAR (50) NULL
	,[Nome] NVARCHAR (100) NULL
	,[Metros_Quadrados] INT NULL
	,[Data_Abertura] DATE NULL
	,[Data_Fechamento] DATE NULL
	,[Status] NVARCHAR (50) NULL
	,[SSIS_ID] NVARCHAR (50) NULL
	,[DATA_MODIFICACAO] DATE NULL
 )

 CREATE TABLE [stg].[DadosPedidos](
	[ID_Pedido] BIGINT NULL
	,[Numero_linha] INT NULL
	,[ID_Produto] INT NULL
	,[Quantidade] INT NULL
	,[Preco_Unitario] MONEY NULL
	,[Preco_Liquido] MONEY NULL
	,[Custo_Unitario] MONEY NULL
	,[SSIS_ID] NVARCHAR (50) NULL
	,[DATA_MODIFICACAO] DATE NULL
 )

 CREATE TABLE [stg].[Pedidos](
	[ID_Pedido] BIGINT NOT NULL
	,[ID_Cliente] INT NULL
	,[ID_Loja] INT NULL
	,[Data_Pedido] DATE NULL
	,[Data Entrega] DATE NULL
	,[Cod_Monetario] NCHAR(3) NULL
	,[SSIS_ID] NVARCHAR (50) NULL
	,[DATA_MODIFICACAO] DATE NULL
 )

 -- EM CASO DE PROBLEMAS, USAR AS LINHAS ABAIXO PARA CORRIGIR AS TABELAS DIRETAMENTE NA CRIAÇÃO DELAS
 DROP TABLE[stg].[Cliente]
 DROP TABLE[stg].[DadosPedidos]
 DROP TABLE[stg].[Data]
 DROP TABLE[stg].[Geolocalizacao]
 DROP TABLE[stg].[Loja]
 DROP TABLE[stg].[Pedidos]
 DROP TABLE[stg].[TrocaMoeda]
 DROP TABLE[stg].[Produto]