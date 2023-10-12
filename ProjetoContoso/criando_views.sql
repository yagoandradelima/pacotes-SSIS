-- ESTRUTURA PARA DW
-- 1. Fazer as Views
-- 2. Fazer as tabelas DIM
-- 3. Criar as Procedures de atualização

CREATE VIEW [dbo].[Stg_vw_Cliente] AS
	SELECT [ID_Cliente]
		   ,[Genero]
		   ,[Titulo]
		   ,[Nome_sistema]
		   ,[Inicial_nome_meio]
		   ,[Sobrenome]
		   ,[Endereço]
		   ,[Cidade]
		   ,[Estado]
		   ,[Estado_completo]
		   ,[ZipCode]
		   ,[País]
		   ,[País_Completo]
		   ,[Nascimento]
		   ,[Idade]
		   ,[Ocupação]
		   ,[Empresa]
		   ,[Veículo]
		   ,[Latitude]
		   ,[Longitude]
		   ,[SSIS_ID]
		   ,[DATA_MODIFICACAO]
		 FROM [stg].[Cliente]


/*CREATE VIEW [dbo].[Stg_vw_Localizacao] AS
SELECT DISTINCT
	DENSE_RANK() OVER (ORDER BY C.[Cidade], G.[Cod_Estado], G.[Cod_País]) AS ID_Geolocalizacao
	,C.[Cidade]
	,G.[Cod_Estado]
	,G.[Estado]
	,G.[Cod_País]
	,G.[País]
	,C.[Continente]
	FROM [stg].[Cliente] C
LEFT JOIN [stg].[Geolocalizacao] G ON G.[Cod_País] = C.[País] AND C.[Estado] = G.[Cod_Estado]
	ORDER BY ID_Geolocalizacao*/


CREATE VIEW [dbo].[Stg_vw_Fato_Pedidos] AS
	SELECT 
		P.[ID_Pedido]
		,DENSE_RANK() OVER (  ORDER BY [Numero_linha],p.[ID_Pedido] ) AS ID_Pedido_SK
		,DP.[ID_Produto]
		,[Numero_linha]
		,P.[ID_Cliente]
		,P.[ID_Loja]
		,P.[Data_Pedido]
		,P.[Data Entrega]
		,DP.[Quantidade]
		,DP.[Preco_Unitario]
		,DP.[Preco_Liquido]
		,DP.[Custo_Unitario]
		,P.[Cod_Monetario]
	
	FROM [stg].[DadosPedidos] DP
	LEFT JOIN [stg].[Pedidos] P ON DP.[ID_Pedido] = P.[ID_Pedido]



