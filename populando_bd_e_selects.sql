use oficinaDIO;

-- populando a tabela cliente
insert into cliente(nome, endereco) values ("Joao Francisco", "Rua B, 22, Cidade Tiradentes - SP");
insert into cliente(nome, endereco) values ("André Jardim", "Rua T, 34, Higienópolis - SP");
insert into cliente(nome, endereco) values ("Timóteo Ferreira", "Rua O, 516, Capão Redondo - SP");
insert into cliente(nome, endereco) values ("Vitor Pereira", "Rua C, 777, Parque São Jorge - SP");

select * from cliente;

-- populando a tabela veiculo
insert into veiculo(modelo, carroceria, placa, idCliente) values ("Volkswagen Nivus", "SUV Cupê", 
'BEQ7C80', 1);
insert into veiculo(modelo, carroceria, placa, idCliente) values ("Caoa Chery Tiggo", "SUV", 
'FER4V56', 2);
insert into veiculo(modelo, carroceria, placa, idCliente) values ("Chevy Del Rey", "Sedan", 
'VEV4532', 3);
insert into veiculo(modelo, carroceria, placa, idCliente) values ("Renault Sandero", "Hatch", 
'GET5489', 1);
insert into veiculo(modelo, carroceria, placa, idCliente) values ("GM Corsa", "Hatch", 
'BER7Y80', 4);
insert into veiculo(modelo, carroceria, placa, idCliente) values ("Volswagen Fusca", "Hatch", 
'DVB4559', 2);
SELECT * FROM VEICULO;

-- populando a tabela equipe
insert into equipe(especializacao) values ("Troca de óleo");
insert into equipe(especializacao) values ("Borracharia");
insert into equipe(especializacao) values ("Motor");
insert into equipe(especializacao) values ("Escapamento");
select * from equipe;

-- populando a tabela pecas
insert into pecas(descricao, valor) values ("Junta do Cabeçote",400.00);
insert into pecas(descricao, valor) values ("Virabrequim", 560.00);
insert into pecas(descricao, valor) values ("Vela do Motor", 20.00);
insert into pecas(descricao, valor) values ("Óleo 10w40", 15.00);
insert into pecas(descricao, valor) values ("Pneu Aro 16",350.00);
insert into pecas(descricao, valor) values ("Coxim do Câmbio", 150.00);
select * from pecas;

-- populando a tabela mao de obra
insert into maodeobra(tipo_servico, valor) values ("Troca do Câmbio", 4000.00);
insert into maodeobra(tipo_servico, valor) values ("Troca de Junta do Cabeçote", 1500.00);
insert into maodeobra(tipo_servico, valor) values ("Troca de Óleo", 200.00);
insert into maodeobra(tipo_servico, valor) values ("Troca de Pneu", 400.00);
insert into maodeobra(tipo_servico, valor) values ("Troca do Escapamento", 800.00);
select * from maodeobra;

-- poupulando a tabela mecanico
insert into mecanico(nome, cod_mecanico, endereco, especialidade, idEquipe) values ("José Aristeu", 
'123ER32', "Alameda R, S/N, Marsilac - SP", "Troca de Pneu", 2);
insert into mecanico(nome, cod_mecanico, endereco, especialidade, idEquipe) values ("Rubens Neto", 
'123EJ32', "Rua T, 300, Pontilhão - SP" ,"Injeção", 3);
insert into mecanico(nome, cod_mecanico, endereco, especialidade, idEquipe) values ("Tiago Alcantara", 
'123E832', "Avenida I, 8, Marsilac - SP", "Troca de Velas", 3);
insert into mecanico(nome, cod_mecanico, endereco, especialidade, idEquipe) values ("Roger Guedes", 
'123UR32', "Alameda E, 35, Jardim Silveira - SP", "Troca de Escapamento", 4);
insert into mecanico(nome, cod_mecanico, endereco, especialidade, idEquipe) values ("Fausto Vera", 
'122YR32', "Alameda P, 9, Marsilac - SP", "Troca de óleo", 1);
insert into mecanico(nome, cod_mecanico, endereco, especialidade, idEquipe) values ("Eduardo Queiroz", 
'124ER32', "Travessa L, 67, Pinheiros - SP", "Troca de óleo", 1);
select * from mecanico;

-- populando a tabela avaliacao
insert into avaliacao(idVeiculo, idCliente, idEquipe, idOrdemDeServico, descricao) values 
(1, 1, 2, 3, "Pneu Furado");
insert into avaliacao(idVeiculo, idCliente, idEquipe, idOrdemDeServico, descricao) values 
(2, 2, 1, 1, "Escapamento furado");
insert into avaliacao(idVeiculo, idCliente, idEquipe, idOrdemDeServico, descricao) values 
(3, 3, 3, 2, "Motor fundiu");
select * from avaliacao;


-- populando a tabela Ordem de Servico
insert into ordemdeservico(num_os, dataEntrega, dataOS, valorServico, autorizacao_cliente, 
statusServico) values ("2345690", "2022-10-12", "2022-09-24", 2400.00, DEFAULT, 'No aguardo');
insert into ordemdeservico(num_os, dataEntrega, dataOS, valorServico, autorizacao_cliente, 
statusServico) values ("2345691", "2022-10-11", "2022-09-24", 400.00, 'Autorizado', 'Em Execução');
insert into ordemdeservico(num_os, dataEntrega, dataOS, valorServico, autorizacao_cliente, 
statusServico) values ("2345631", "2022-10-31", "2022-09-24", 380.00, 'Autorizado', 'Em Execução');
insert into ordemdeservico(num_os, dataEntrega, dataOS, valorServico, autorizacao_cliente, 
statusServico) values ("2335691", "2022-11-11", "2022-09-24", 5600.00, 'Autorizado', 'No aguardo');
insert into ordemdeservico(num_os, dataEntrega, dataOS, valorServico, autorizacao_cliente, 
statusServico) values ("2334691", "2022-11-14", now(), 460.00, 'Não Autorizado', 'No aguardo');
select * from ordemdeservico;

-- populando a tabela servicos
insert into servicos(idOrdemDeServico, idMaoDeObra) values (1,2);
insert into servicos(idOrdemDeServico, idMaoDeObra) values (2,2);
insert into servicos(idOrdemDeServico, idMaoDeObra) values (4,1);
insert into servicos(idOrdemDeServico, idMaoDeObra) values (3,1);
insert into servicos(idOrdemDeServico, idMaoDeObra) values (4,2);

-- populando a tabela pecas_os
insert into pecas_os(idOrdemDeServico, idPecas) values (3,2);
insert into pecas_os(idOrdemDeServico, idPecas) values (1,1);
insert into pecas_os(idOrdemDeServico, idPecas) values (4,3);
insert into pecas_os(idOrdemDeServico, idPecas) values (1,3);

-- selects esoecíficas

-- relacionando veículos com clientes e ordenando
select c.nome, v.modelo, v.placa from cliente c join veiculo v on 
v.idCliente = c.idCliente order by c.nome;

-- relacionando mecanicos e equipes
select m.nome, m.cod_mecanico, e.especializacao from mecanico as m join equipe as e where 
m.idEquipe = e.idEquipe;


-- a mesma query, porém com group by
select m.nome, m.cod_mecanico, e.especializacao from mecanico as m join equipe as e where 
m.idEquipe = e.idEquipe group by e.especializacao having count("Motor") > 2;

-- puxando ordens de serviço com where
select * from ordemdeservico where month(dataEntrega) = '10';







