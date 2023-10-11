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
,[EndereçoDW]
,[CidadeDW]
,[EstadoDW]
,[Estado_completoDW]
,[ZipCodeDW]
,[PaísDW]
,[País_CompletoDW]
,[NascimentoDW]
,[IdadeDW]
,[OcupaçãoDW]
,[EmpresaDW]
,[VeículoDW]
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
,[EndereçoDW]=[Endereço]
,[CidadeDW]=[Cidade]
,[EstadoDW]=[Estado]
,[Estado_completoDW]=[Estado_completo]
,[ZipCodeDW]=[ZipCode]
,[PaísDW]=[País]
,[País_CompletoDW]=[País_Completo]
,[NascimentoDW]=[Nascimento]
,[IdadeDW]=[Idade]
,[OcupaçãoDW]=[Ocupação]
,[EmpresaDW]=[Empresa]
,[VeículoDW]=[Veículo]
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
,[Custo_UnitárioDW]
,[Preco_UnitárioDW]
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
,[Custo_Unitário]
,[Preco_Unitário]
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
  ,[Custo_UnitárioDW]=[Custo_Unitário]
  ,[Preco_UnitárioDW]=[Preco_Unitário]
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
,[PaísDW]
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
,[País]
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
  ,[PaísDW]=[País]
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

