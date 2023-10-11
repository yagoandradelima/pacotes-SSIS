CREATE PROCEDURE [dbo].[Atualizacao_DimClientes] AS

BEGIN

SET NOCOUNT ON
 INSERT INTO [dbo].[DimClientes]
(
[ID_Alternativo_Cliente]
,[GeneroDW]
,[TituloDW]
,[Nome_sistemaDW]
,[Inicial_nome_meioDW]
,[SobrenomeDW]
,[Endere�oDW]
,[CidadeDW]
,[EstadoDW]
,[Estado_completoDW]
,[ZipCodeDW]
,[Pa�sDW]
,[Pa�s_CompletoDW]
,[NascimentoDW]
,[IdadeDW]
,[Ocupa��oDW]
,[EmpresaDW]
,[Ve�culoDW]
,[LatitudeDW]
,[LongitudeDW]
,[ContinenteDW]
)

SELECT  
[ID_Cliente]
,[Genero]
,[Titulo]
,[Nome_sistema]
,[Inicial_nome_meio]
,[Sobrenome]
,[Endere�o]
,[Cidade]
,[Estado]
,[Estado_completo]
,[ZipCode]
,[Pa�s]
,[Pa�s_Completo]
,[Nascimento]
,[Idade]
,[Ocupa��o]
,[Empresa]
,[Ve�culo]
,[Latitude]
,[Longitude]
,[Continente]
  FROM [DB_Staging].[stg].[Cliente] stg (nolock)
    LEFT JOIN [dbo].[DimClientes] Dim  (nolock) ON Dim.[ID_Alternativo_Cliente] = stg.[ID_Cliente]
    WHERE Dim.[ID_Alternativo_Cliente] is null


  UPDATE Dim

  SET /*DIM = STAGE*/ [GeneroDW]=[Genero]
,[TituloDW]=[Titulo]
,[Nome_sistemaDW]=[Nome_sistema]
,[Inicial_nome_meioDW]=[Inicial_nome_meio]
,[SobrenomeDW]=[Sobrenome]
,[Endere�oDW]=[Endere�o]
,[CidadeDW]=[Cidade]
,[EstadoDW]=[Estado]
,[Estado_completoDW]=[Estado_completo]
,[ZipCodeDW]=[ZipCode]
,[Pa�sDW]=[Pa�s]
,[Pa�s_CompletoDW]=[Pa�s_Completo]
,[NascimentoDW]=[Nascimento]
,[IdadeDW]=[Idade]
,[Ocupa��oDW]=[Ocupa��o]
,[EmpresaDW]=[Empresa]
,[Ve�culoDW]=[Ve�culo]
,[LatitudeDW]=[Latitude]
,[LongitudeDW]=[Longitude]
,[ContinenteDW]=[Continente]
  from [dbo].[DimClientes] Dim (nolock)
  INNER JOIN [DB_Staging].[stg].[Cliente] stg  (nolock)
  ON Dim.[ID_Alternativo_Cliente] = stg.[ID_Cliente]


   set nocount off


end 

----
CREATE PROCEDURE [dbo].[Atualizacao_DimProduto] AS

BEGIN

SET NOCOUNT ON
 INSERT INTO [dbo].[DimProduto]
(
[ID_Alternativo_Produto]
,[Cod_ProdutoDW]
,[Nome_ProdutoDW]
,[FornecedorDW]
,[MarcaDW]
,[CorDW]
,[Escala_PesoDW]
,[PesoDW]
,[Custo_Unit�rioDW]
,[Preco_Unit�rioDW]
,[Cod_SubcategoriaDW]
,[SubcategoriaDW]
,[Cod_CategoriaDW]
,[CategoriaDW]
)

SELECT  
[ID_Produto]
,[Cod_Produto]
,[Nome_Produto]
,[Fornecedor]
,[Marca]
,[Cor]
,[Escala_Peso]
,[Peso]
,[Custo_Unit�rio]
,[Preco_Unit�rio]
,[Cod_Subcategoria]
,[Subcategoria]
,[Cod_Categoria]
,[Categoria]
  FROM [DB_Staging].[stg].[Produto] stg (nolock)
    LEFT JOIN [dbo].[DimProduto] Dim  (nolock) ON Dim.[ID_Alternativo_Produto] = stg.[ID_Produto]
    WHERE Dim.[ID_Alternativo_Produto] is null


  UPDATE Dim

  SET /*DIM = STAGE*/ [ID_Alternativo_Produto] = [ID_Produto]
  ,[Cod_ProdutoDW]=[Cod_Produto]
  ,[Nome_ProdutoDW]=[Nome_Produto]
  ,[FornecedorDW]=[Fornecedor]
  ,[MarcaDW]=[Marca]
  ,[CorDW]=[Cor]
  ,[Escala_PesoDW]=[Escala_Peso]
  ,[PesoDW]=[Peso]
  ,[Custo_Unit�rioDW]=[Custo_Unit�rio]
  ,[Preco_Unit�rioDW]=[Preco_Unit�rio]
  ,[Cod_SubcategoriaDW]=[Cod_Subcategoria]
  ,[SubcategoriaDW]=[Subcategoria]
  ,[CategoriaDW]=[Categoria]
  FROM [dbo].[DimProduto] Dim (nolock)
  INNER JOIN [DB_Staging].[stg].[Produto] stg  (nolock)
  ON Dim.[ID_Alternativo_Produto] = stg.[ID_Produto]


   set nocount off


end 


------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[Atualizacao_DimLoja] AS

BEGIN

SET NOCOUNT ON
 INSERT INTO [dbo].[DimLoja]
(
[ID_Alternativo_Loja]
,[Cod_LojaDW]
,[Pa�sDW]
,[EstadoDW]
,[NomeDW]
,[Metros_QuadradosDW]
,[Data_AberturaDW]
,[Data_FechamentoDW]
,[StatusDW]
)

SELECT  
[ID_Loja]
,[Cod_Loja]
,[Pa�s]
,[Estado]
,[Nome]
,[Metros_Quadrados]
,[Data_Abertura]
,[Data_Fechamento]
,[Status]
  FROM [DB_Staging].[stg].[Loja] stg (nolock)
    LEFT JOIN [dbo].[DimLoja] Dim  (nolock) ON Dim.[ID_Alternativo_Loja] = stg.[ID_Loja]
    WHERE Dim.[ID_Alternativo_Loja] is null


  UPDATE Dim

  SET /*DIM = STAGE*/ [ID_Alternativo_Loja]=[ID_Loja]
  ,[Cod_LojaDW]=[Cod_Loja]
  ,[Pa�sDW]=[Pa�s]
  ,[EstadoDW]=[Estado]
  ,[NomeDW]=[Nome]
  ,[Metros_QuadradosDW]=[Metros_Quadrados]
  ,[Data_AberturaDW]=[Data_Abertura]
  ,[Data_FechamentoDW]=[Data_Fechamento]
  ,[StatusDW]=[Status]
  FROM [dbo].[DimLoja] Dim (nolock)
  INNER JOIN [DB_Staging].[stg].[Loja] stg  (nolock)
  ON Dim.[ID_Alternativo_Loja] = stg.[ID_Loja]


   set nocount off


end 

------------------------------------------------------------------------------------------------

