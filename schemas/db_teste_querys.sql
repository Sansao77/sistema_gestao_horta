-- Lista de funcionários e suas funções
USE teste;
SELECT nome, funcao FROM teste.voluntarios v;

--
USE teste;
SELECT c.nome, p.nome, cu.created_at
FROM teste.cultivos cu
INNER JOIN teste.plantas p ON cu.id_planta = p.id
INNER JOIN teste.canteiros c ON cu.id_canteiro  = c.id
ORDER BY c.nome, cu.created_at;

--
USE teste;
SELECT v.nome, p.nome
FROM teste.cultivos cu
INNER JOIN teste.plantas p ON cu.id_planta = p.id
INNER JOIN teste.voluntarios v ON cu.id_voluntario = v.id
ORDER BY v.nome;

--
USE teste;
SELECT co.id, ca.nome, co.quantidade
FROM teste.colheitas co
INNER JOIN teste.canteiros ca ON co.id_canteiro = ca.id
ORDER BY co.quantidade;

--
USE teste;
SELECT i.nome, d.quantidade
FROM teste.doacoes_instituicoes di
INNER JOIN teste.doacoes d ON di.id_doacao = d.id
INNER JOIN teste.instituicoes i ON di.id_instituicao = i.id
ORDER BY i.nome;

--
USE teste;
SELECT i.nome, SUM(d.quantidade)
FROM teste.doacoes_instituicoes di
INNER JOIN teste.doacoes d ON di.id_doacao = d.id
INNER JOIN teste.instituicoes i ON di.id_instituicao = i.id
GROUP BY i.nome
ORDER BY SUM(d.quantidade) DESC;

--
USE teste;
SELECT ca.id, ca.nome
FROM teste.canteiros ca
LEFT JOIN teste.colheitas co ON ca.id = co.id_canteiro
WHERE co.id IS NULL;

--
USE teste;
SELECT v.id, v.nome, COUNT(c.id_planta)
FROM teste.voluntarios v
LEFT JOIN teste.cultivos c  ON v.id = c.id_voluntario
GROUP BY v.id
ORDER BY COUNT(c.id_planta) DESC;

--
USE teste;
SELECT p.id, p.nome
FROM teste.plantas p
LEFT JOIN teste.cultivos c ON p.id = c.id_planta
WHERE c.id IS NULL;

--
USE teste;
