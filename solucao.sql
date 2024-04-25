-- 1

SELECT  
    Nome
    , Ano
FROM
    Filmes

-- 2

SELECT  
    Nome
    , Ano
FROM
    Filmes
ORDER BY
    Ano

-- 3

SELECT  
    Nome
    , Ano
    , Duracao
FROM
    Filmes
WHERE
    Nome = 'De Volta para o Futuro'

-- 4

SELECT  
    Nome
    , Ano
    , Duracao
FROM
    Filmes
WHERE
    Ano = 1997

-- 5

SELECT  
    Nome
    , Ano
    , Duracao
FROM
    Filmes
WHERE
    Ano > 2000

-- 6

SELECT  
    Nome
    , Ano
    , Duracao
FROM
    Filmes
WHERE
    Duracao BETWEEN 100 AND 150

-- 7

SELECT  
    Ano
    , Count(1) AS Quantidade
FROM
    Filmes
GROUP BY
    Ano
ORDER BY
    Duracao DESC

-- 8

SELECT
    PrimeiroNome
    , UltimoNome
WHERE
    Genero = 'M'

-- 9

SELECT
    PrimeiroNome
    , UltimoNome
WHERE
    Genero = 'F'
ORDER BY
    PrimeiroNome

-- 10

SELECT
    A.Nome
    ,C.Genero
FROM
    Filmes A
JOIN
    FilmesGenero B
        ON B.IdFilme = A.Id
JOIN
    Generos C
        C.Id = B.IdGenero

-- 11

SELECT
    A.Nome
    ,C.Genero
FROM
    Filmes A
JOIN
    FilmesGenero B
        ON B.IdFilme = A.Id
JOIN
    Generos C
        C.Id = B.IdGenero
WHERE
    C.Genero = 'Mistério'

-- 12

SELECT
    A.Nome
    , C.PrimeiroNome
    , C.UltimoNome
    , B.Papel
FROM
    Filmes A
JOIN
    ElencoFilme B
        on A.Id = B.IdFilme
JOIN
    Atores C
        on B.IdAtor = C.Id