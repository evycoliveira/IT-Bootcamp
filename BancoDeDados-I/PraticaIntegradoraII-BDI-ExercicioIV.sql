-- consulta os dados da tabela user
select *  from Cliente;
select *  from Plano;

-- Mostrar o id, nome e desconto relacionado ao plano
select id, nome, desconto
from Plano;

-- Mostrar o nome de todos os clientes e use alias 
select Cliente.nome as 'Primeiro nome do cliente:'
from Cliente as Cliente;

-- Mostrar o nome, velocidade e desconto cujo desconto do plano seja superior à 50%
select nome, velocidade, desconto
from Plano
where desconto > 50;

-- Mostrar nome e sobrenome ordenados por nome em ordem decrescente
SELECT nome, sobrenome
FROM Cliente
ORDER BY nome desc;

-- Atualiza o preco do plano com id 66
update Plano
set preco = 150.00
where id = 66;

-- Apaga o registro com id 3
delete from Cliente 
where id = 3;

-- Crie um índice no id na tabela de plano
create index indx_plano_id on Plano(id);

-- Crie uma tabela temporária da tabela plano
create temporary table venda_tmp
select * from Plano;

-- Elimine da tabela temporária todas os registros de velocidade do plano menor que 50 MB
delete from venda_tmp where velocidade < 50;
select * from venda_tmp;


