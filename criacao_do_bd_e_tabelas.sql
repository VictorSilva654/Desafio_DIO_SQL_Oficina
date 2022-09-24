drop database oficinaDIO;
create database if not exists oficinaDIO;

use oficinaDIO;

create table if not exists cliente(
    idCliente int auto_increment primary key,
    nome varchar(255) not null,
    endereco varchar(255)
);

create table if not exists veiculo(
    idVeiculo int auto_increment primary key,
    modelo varchar(255) not null,
    carroceria varchar(20) not null,
    placa char(7) not null,
    idCliente int,
    constraint unique_placa unique (placa),
    constraint fk_idcliente_veiculo foreign key (idCliente) references cliente(idCliente)
);


create table if not exists equipe(
    idEquipe int auto_increment primary key,
    especializacao varchar(50) not null
);

create table if not exists mecanico(
    idMecanico int auto_increment primary key,
    nome varchar(255) not null,
    cod_mecanico char(10) not null,
    endereco varchar(255),
    especialidade varchar(50),
    idEquipe int,
    constraint unique_cod unique (cod_mecanico),
    constraint fk_equipe_mec  foreign key (idEquipe) references equipe(idEquipe)
);

create table if not exists ordemDeServico(
    idOrdem int auto_increment primary key,
    num_os char(20) not null,
    dataEntrega date not null,
    dataOs datetime,
    valorServico decimal(10,2),
    autorizacao_cliente enum('Autorizado', 'Não Autorizado', 'No Aguardo') default 'No Aguardo',
    statusServico varchar(50)
);

create table if not exists pecas(
    idPecas int auto_increment primary key,
    descricao varchar(255) not null,
    valor decimal(10,2)
);

create table if not exists maoDeObra(
    idMaoDeObra int auto_increment primary key,
    tipo_servico varchar(255) not null,
    valor decimal(10,2)
);

create table if not exists avaliacao(
    idVeiculo int,
    idCliente int,
    idEquipe int,
    idOrdemDeServico int,
    descricao varchar(255),
    primary key (idVeiculo, idCliente, idEquipe, idOrdemdeServico),
    constraint fk_veiculo_ava foreign key (idVeiculo) references veiculo(idVeiculo),
    constraint fk_cliente_ava foreign key (idCliente) references cliente(idCliente),
    constraint fk_equipe_ava foreign key (idEquipe) references equipe(idEquipe),
    constraint fk_os_ava foreign key (idOrdemDeServico) references ordemDeServico(idOrdem)
);

create table if not exists servicos(
    idOrdemDeServico int,
    idMaoDeObra int,
    primary key (idOrdemDeServico, idMaoDeObra),
    constraint fk_os_servicos foreign key (idOrdemDeServico) references ordemDeServico(idOrdem),
    constraint fk_maoobra_servicos foreign key (idMaoDeObra) references maoDeObra(idMaoDeObra)
);

create table if not exists pecas_os(
    idOrdemDeServico int,
    idPecas int,
    primary key (idOrdemDeServico, idPecas),
    constraint fk_os_pecas_po foreign key (idOrdemDeServico) references ordemDeServico(idOrdem),
    constraint fk_pecas_os_po foreign key (idPecas) references pecas(idPecas)
);

show tables;
