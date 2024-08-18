-- 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes
GO

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
--SELECT Nome, Ano FROM Filmes ORDER BY Ano ASC
SELECT Nome, Ano, Duracao
FROM Filmes ORDER BY Ano ASC
GO

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao FROM Filmes 
WHERE Nome like 'De Volta para o Futuro'
GO

-- 4 - Buscar os filmes lançados em 1997
SELECT Nome, Ano, Duracao FROM Filmes 
WHERE Ano = 1997
GO

-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano, Duracao FROM Filmes 
WHERE Ano > 2000
GO

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao FROM Filmes 
WHERE Duracao > 100 AND Duracao < 150 
ORDER BY Duracao ASC
GO

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
 SELECT Ano, COUNT(Filmes.Duracao) as  Quantidade FROM Filmes 
 GROUP BY Ano
 ORDER BY Quantidade DESC
 GO

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
-- SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M'
SELECT * FROM Atores 
WHERE Genero = 'M'
GO

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
-- SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome
SELECT * FROM Atores 
WHERE Genero = 'F' 
ORDER BY PrimeiroNome
GO

-- 10 - Buscar o nome do filme e o gênero
SELECT Filmes.Nome, Generos.Genero FROM Filmes 
JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id 
JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
GO

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT Filmes.Nome, Generos.Genero FROM Filmes 
JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id 
JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Generos.Genero = 'Mistério'
GO

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel FROM Filmes 
JOIN ElencoFilme ON ElencoFilme.IdFilme = Filmes.Id 
JOIN Atores ON Atores.Id = ElencoFilme.IdAtor
GO
