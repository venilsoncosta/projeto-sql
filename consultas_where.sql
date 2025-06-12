select * from produtos;

select nome from produtos
where estoque < 60;

select * from produtos
order by nome
asc;

select produtos.nome, produtos.preco from produtos
order by preco desc;

select nome, preco, estoque from produtos
where estoque > 50 limit 4;

select * from clientes;

select * from clientes
where cidade = 'São Paulo';

select nome, sobrenome, data_nascimento from clientes
where data_nascimento >= '1980-12-31'
order by data_nascimento desc;

select * from produtos;

select * from produtos
where nome like 'a%';

select * from produtos
where descricao like 'a%';