CREATE TABLE [dbo].[dados_sistema_dest](
	 ID INT NULL
	,NOME NVARCHAR(140) NULL
	,SOBRENOME NVARCHAR(140) NULL
	,LOCALIDADE NVARCHAR(140) NULL
	,GENERO NVARCHAR(140) NULL
	,EMAIL NVARCHAR(140) NULL
	,UNIVERSIDADE NVARCHAR(140) NULL
	,MODELO_CARRO NVARCHAR(140) NULL

)ON [PRIMARY]
GO

DROP TABLE [dbo].[dados_sistema]

SELECT COUNT(1) cnt FROM [dbo].[dados_sistema]
