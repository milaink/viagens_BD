SELECT c.data_inicial AS 'Data e Hora', c.descricao AS 'Agenda', pt.nome AS 'Local', l.nome AS 'Cidade' FROM calendario c
JOIN pontos_turisticos pt ON (c.id_pontos = pt.id_pontos)
JOIN LOCAL l ON (l.id_local = pt.id_local)
ORDER BY c.data_inicial;

SELECT npt.id_necessidade AS Tipo, pt.nome AS Pontos FROM pontos_turisticos pt 
LEFT JOIN necessidade_has_pontos_turisticos npt ON (npt.id_pontos = pt.id_pontos)
WHERE id_necessidade IS NULL
ORDER BY npt.id_necessidade ;

SELECT v.nome AS Viagem, sum(d.custo) AS Custo, td.descricao AS Tipo, count(p.id_pessoa) AS 'Total Pessoas',
SUM(d.custo) / COUNT(p.id_pessoa) AS 'Custo Pessoa'
FROM despesa d
JOIN tipo_despesa td ON (td.id_tipo_despesa = d.id_tipo_despesa)
JOIN viagem v ON (v.id_viagem = d.id_viagem)
JOIN pessoa p ON (p.id_viagem = v.id_viagem)
WHERE v.id_viagem IN (2) 
GROUP BY td.id_tipo_despesa;

SELECT v.nome AS Viagem, sum(d.custo) AS Custo, count(p.id_pessoa)/5 AS 'Total Pessoas'
FROM despesa d
JOIN viagem v ON (v.id_viagem = d.id_viagem)
JOIN pessoa p ON (p.id_viagem = v.id_viagem)
GROUP BY d.id_viagem;
