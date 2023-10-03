SELECT TOP (1000) [ID]
      ,[NOME]
      ,[SOBRENOME]
      ,[LOCALIDADE]
      ,[GENERO]
      ,[DEPARTAMENTO]
  FROM [StoreDemo].[dbo].[dados_extraidos]

  CREATE PROCEDURE [dbo].[mudanca_localidade_2]
  AS
  BEGIN
  SET NOCOUNT ON

  UPDATE [dbo].[dados_extraidos]
  SET LOCALIDADE = 'Nova York'
  WHERE ID = 3

  SET NOCOUNT OFF
  END