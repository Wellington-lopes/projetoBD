-- 1.Número total de atendimentos de cada funcionário

select 
	f.id_func,
	f.nome,
	count(a.id_func) as num_atendimentos
from atendimentos a 
left join funcionarios f 
on a.id_func = f.id_func 
group by f.nome, f.id_func 
order by num_atendimentos desc;

SELECT 
    funcionarios.id_func,
    funcionarios.nome AS nome_funcionario,
    COUNT(atendimentos.id_atendimento) AS total_atendimentos
FROM funcionarios
LEFT JOIN atendimentos ON funcionarios.id_func = atendimentos.id_func
GROUP BY funcionarios.id_func, nome_funcionario
ORDER BY total_atendimentos DESC;


-- 2.Calcular o ticket médio e faturamento mensal com base nos atendimentos:

SELECT 
    EXTRACT(MONTH FROM "data") AS mes,
    EXTRACT(YEAR FROM "data") AS ano,
    round(sum(valor)/count(id_atendimento),2) as ticket_medio,
    SUM(valor) AS faturamento_mensal
FROM atendimentos
GROUP BY mes, ano
ORDER BY ano, mes;

-- 2.Calcular o peso médio por espécie:

select
	especie,
    round(AVG(peso),2) AS peso_medio
FROM pacientes
group by especie;

-- 3.Calcular peso médio por raça:

SELECT 
    raca,
    round(AVG(peso),2) AS peso_medio_por_raca
FROM pacientes
WHERE peso IS NOT NULL
GROUP BY raca
order by peso_medio_por_raca desc;

-- 4.Quantidade de atendimento por espécie:

SELECT 
    p.especie,
    COUNT(a.id_atendimento) AS quantidade_atendimentos
FROM atendimentos a 
LEFT JOIN pacientes p  
	ON a.id_paciente = p.id_paciente
GROUP BY p.especie
ORDER BY quantidade_atendimentos DESC;

-- 5.Quais os 5 pacientes com mais atendimentos
select 
	p.*,
	count(a.id_paciente) as num_atendimentos
from atendimentos a 
left join pacientes p 
on a.id_paciente = p.id_paciente 
group by p.id_paciente, nome, especie
order by num_atendimentos desc
limit 5;

-- 6.Ranking serviços vendidos por mês
select 
	extract('month' from data) as mes_num,
	case 
		when extract('month' from data) = 4 then 'abril'
		when extract('month' from data) = 5 then 'maio'
	end as mes_nome,
	tipo_atendimento as serviço,
	count(tipo_atendimento) as qntd_vendida
from atendimentos
group by mes_num, serviço
order by mes_num, qntd_vendida desc;

-- 7.Número de profissionais ativos por especialidade
select 
	especialidade, 
	count(especialidade) as num_profissionais
from funcionarios
where status = 'Ativo'
group by especialidade 
order by especialidade;

-- 8. Há alguma especialidade sem funcionário?

select 
	especialidade,
	count(especialidade) as num_profissionais,
	case
		when status = 'Inativo' then 'EM FALTA'
		else 'DISPONÍVEL'
	end as disponibilidade
from funcionarios
group by especialidade, disponibilidade 
order by especialidade;





