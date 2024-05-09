--Todas as consultas foram feitas levando em conta a descrição das mesmas
--Consulta #1
SELECT
    Nome,
    Ano
FROM Filmes

--Consulta #2
SELECT
    Nome,
    Ano
FROM Filmes
ORDER BY Ano

--Consulta #3
SELECT
    Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta Para o Futuro'

--Consulta #4
SELECT
    Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997

--Consulta #5
SELECT
    Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000

--Consulta #6
SELECT
    Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

--Consulta #7
SELECT
    Ano,
    COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--Consulta #8
SELECT
    PrimeiroNome,
    UltimoNome
FROM Atores
WHERE Genero = 'M'

--Consulta #9
SELECT
    PrimeiroNome,
    UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--Consulta #10
SELECT
    F.Nome,
    G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG on F.Id = FG.IdFilme
INNER JOIN dbo.Generos G on G.Id = FG.IdGenero

--Consulta #11
SELECT
    F.Nome,
    G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG on F.Id = FG.IdFilme
INNER JOIN dbo.Generos G on G.Id = FG.IdGenero
WHERE Genero = 'Mistério'

--Consulta #12
SELECT
    F.Nome,
    A.PrimeiroNome,
    A.UltimoNome,
    EF.Papel
    FROM Filmes F
INNER JOIN ElencoFilme EF on F.Id = EF.IdFilme
INNER JOIN Atores A on A.Id = EF.IdAtor