SELECT * FROM Filmes

--1
SELECT Nome, Ano FROM Filmes

--2
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano

--3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome LIKE '%para%'

--4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

--5
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000

--6
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao BETWEEN 101 AND 149 ORDER BY Duracao

--7
SELECT Ano, COUNT(*) AS Quantidade 
FROM Filmes 
GROUP BY Ano 
ORDER BY Quantidade DESC 

--8
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M'

--9
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

--10
SELECT Filme.Nome AS NomeDoFilme, Genero.Genero AS GeneroDoFilme FROM Filmes AS Filme
INNER JOIN FilmesGenero AS RelacaoFilmeGenero ON Filme.Id = RelacaoFilmeGenero.IdFilme
INNER JOIN Generos AS Genero ON RelacaoFilmeGenero.IdGenero = Genero.Id

--11
SELECT Filme.Nome AS NomeDoFilme, Genero.Genero AS GeneroDoFilme FROM Filmes AS Filme
INNER JOIN FilmesGenero AS RelacaoFilmeGenero ON Filme.Id = RelacaoFilmeGenero.IdFilme
INNER JOIN Generos AS Genero ON RelacaoFilmeGenero.IdGenero = Genero.Id
WHERE Genero.Genero = 'Mistério'


--12
SELECT 
    Filmes.Nome AS NomeDoFilme, 
    Atores.PrimeiroNome AS PrimeiroNomeDoAtor, 
    Atores.UltimoNome AS UltimoNomeDoAtor, 
    ElencoFilme.Papel
FROM 
    Filmes
INNER JOIN 
    ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN 
    Atores ON ElencoFilme.IdAtor = Atores.Id;


