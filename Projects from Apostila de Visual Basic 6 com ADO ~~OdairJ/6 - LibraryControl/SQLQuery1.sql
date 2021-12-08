USE [Teste]
GO

INSERT INTO [dbo].[Livros]
           ([CodLivro]
           ,[Titulo]
           ,[Autor]
           ,[CodEditora]
           ,[CodCategoria]
           ,[AcompCD]
           ,[AcompDisquete]
           ,[Idioma]
           ,[Observacoes]
           ,[Emprestado]
		   ,[DataEmprestimo]
		   ,[DataDevolucao])
		 
     VALUES(6,'a new boook','unknown',1,2,0,0,1,'an beautiful book',0,'2021/11/24','2021/12/14')
GO

UPDATE Teste.dbo.Livros SET 
CodUsuario = 2, 
Emprestado = 1,
DataEmprestimo = '2021/11/24',
DataDevolucao = '2021/12/14'
WHERE CodLivro = 2;

SELECT       CodUsuario AS C�digo, NomeUsuario AS Nome, Endereco AS Endere�o, Cidade , Estado AS UF, CEP , Telefone 
FROM            Usuarios

SELECT        CodCategoria AS Categoria, NomeCategoria AS Nome
FROM            Categorias

SELECT        CodEditora AS C�digo, NomeEditora AS Nome
FROM            Editoras

SELECT  Livros.CodLivro AS C�digo,
		Livros.Titulo AS titulo,
		Livros.Autor AS autor,
		Editoras.NomeEditora AS Editora,
		Livros.CodCategoria AS Categoria,
		Usuarios.NomeUsuario AS Usu�rio,
		Livros.DataEmprestimo AS Empr�stimo,
		Livros.DataDevolucao AS Devolu��o
FROM Usuarios INNER JOIN
	Livros ON Usuarios.CodUsuario = Livros.CodUsuario INNER JOIN
    Categorias ON Livros.CodCategoria = Categorias.CodCategoria INNER JOIN
    Editoras ON Livros.CodEditora = Editoras.CodEditora

/*-------------------------------------------------------------------------------------------------------------------------------
	Para todos livros em atraso:
*/
SELECT  Teste.dbo.Livros.CodLivro AS C�digo,
		Livros.Titulo AS titulo,
		Livros.Autor AS autor,
		Editoras.NomeEditora AS Editora,
		Livros.CodCategoria AS Categoria,
		Usuarios.NomeUsuario AS Usu�rio,
		Livros.DataEmprestimo AS Empr�stimo, 
        Livros.DataDevolucao AS Devolu��o,
		Livros.Emprestado AS emprestado

FROM    Teste.dbo.Usuarios INNER JOIN
                         Livros ON Usuarios.CodUsuario = Livros.CodUsuario INNER JOIN
                         Categorias ON Livros.CodCategoria = Categorias.CodCategoria INNER JOIN
                         Editoras ON Livros.CodEditora = Editoras.CodEditora
WHERE        (Teste.dbo.Livros.DataDevolucao <= GETDATE())
/*----------------------------------------------------------------------------------------------------------------------------------*/

UPDATE Teste.dbo.Livros SET
Emprestado = 1 WHERE CodLivro= 3

SELECT * FROM livros

SELECT Livros.*, Editoras.NomeEditora FROM Livros INNER JOIN Editoras ON
Livros.CodEditora = Editoras.CodEditora;

SELECT DISTINCT Teste.dbo.Livros.Autor FROM Teste.dbo.Livros ORDER BY
Teste.dbo.Livros.Autor;

SELECT  Livros.CodLivro AS C�digo,
		Livros.Titulo AS titulo,
		Livros.Autor AS autor,
		Editoras.NomeEditora AS Editora,
		Categorias.NomeCategoria AS Categoria,
		Usuarios.NomeUsuario AS Usu�rio,
		Livros.DataEmprestimo AS Empr�stimo,
		Livros.DataDevolucao AS Devolu��o
FROM Usuarios INNER JOIN
	Livros ON Usuarios.CodUsuario = Livros.CodUsuario INNER JOIN
    Categorias ON Livros.CodCategoria = Categorias.CodCategoria INNER JOIN
    Editoras ON Livros.CodEditora = Editoras.CodEditora

SELECT       CodEditora AS C�digo, NomeEditora AS Nome
FROM            Editoras
SELECT       CodCategoria AS C�digo, NomeCategoria AS Nome
FROM            Categorias

SELECT DISTINCT Teste.dbo.Categorias.NomeCategoria FROM Teste.dbo.Categorias ORDER BY
Teste.dbo.Categorias.NomeCategoria;


SELECT * FROM Editoras