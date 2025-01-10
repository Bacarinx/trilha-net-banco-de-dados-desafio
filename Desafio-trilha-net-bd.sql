--1
SELECT F.Nome, F.Ano
  FROM DBO.FILMES F

--2
SELECT F.Nome, F.Ano, F.Duracao
  FROM DBO.FILMES F
ORDER BY F.ANO

--3
SELECT F.Nome, F.Ano, F.Duracao
  FROM DBO.FILMES F
WHERE F.Nome LIKE '%VOLTA%FUTURO'

--4
SELECT F.Nome, F.Ano, F.Duracao
  FROM DBO.FILMES F
WHERE F.ANO = 1997

--5
SELECT F.Nome, F.Ano, F.Duracao
  FROM DBO.FILMES F
WHERE F.ANO > 2000


--6
SELECT F.Nome, F.Ano, F.Duracao
  FROM DBO.FILMES F
WHERE F.Duracao > 100 AND F.DURACAO < 150
ORDER BY F.Duracao ASC

--7
SELECT F.ANO, COUNT(F.NOME)
  FROM DBO.FILMES F
GROUP BY F.Ano
ORDER BY COUNT(F.NOME) DESC

--8
SELECT A.PrimeiroNome, A.UltimoNome
  FROM DBO.Atores A
 WHERE A.Genero = 'M'

--9
SELECT A.PrimeiroNome, A.UltimoNome
  FROM DBO.Atores A
 WHERE A.Genero = 'F'
 ORDER BY A.PrimeiroNome

--10
SELECT F.Nome, G.Genero
  FROM DBO.Filmes F,
	   DBO.FilmesGenero FG,
	   DBO.Generos G
 WHERE FG.IdFilme = F.Id
   AND FG.IdGenero = G.Id

--11
SELECT F.Nome, G.Genero
  FROM DBO.Filmes F,
	   DBO.FilmesGenero FG,
	   DBO.Generos G
 WHERE FG.IdFilme = F.Id
   AND FG.IdGenero = G.Id
   AND UPPER(G.Genero) LIKE '%MISTÉRIO%'

--12
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel
  FROM DBO.Filmes F,
	   DBO.ElencoFilme EF,
	   DBO.Atores A
 WHERE EF.IdAtor = A.Id
   AND EF.IdFilme = F.Id