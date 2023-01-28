CREATE DATABASE dbteste CHARACTER SET utf8 COLLATE utf8_general_ci;
use dbteste;

create table clientes
(
    id          int auto_increment
        primary key,
    nome        varchar(255) null,
    idade       int          null,
    veiculo     int          null,
    data_compra datetime     null
);


INSERT INTO dbteste.clientes (id, nome, idade, veiculo, data_compra) VALUES (1, 'Gabriel da Silva', 22, 2, '2022-04-09 08:38:01');
INSERT INTO dbteste.clientes (id, nome, idade, veiculo, data_compra) VALUES (2, 'Victor Simão', 25, 1, '2022-07-08 13:58:08');
INSERT INTO dbteste.clientes (id, nome, idade, veiculo, data_compra) VALUES (3, 'Yuri Floriani', 26, null, '2022-07-08 13:59:02');
INSERT INTO dbteste.clientes (id, nome, idade, veiculo, data_compra) VALUES (4, 'Alícia Lívia Milena Vieira', 32, 9, '2022-07-08 14:06:25');
INSERT INTO dbteste.clientes (id, nome, idade, veiculo, data_compra) VALUES (5, 'Juan Antonio Santos', 28, 6, '2022-07-08 14:07:41');
INSERT INTO dbteste.clientes (id, nome, idade, veiculo, data_compra) VALUES (6, 'Fernando Henrique', 34, null, '2022-06-29 09:22:45');

create table marcas
(
    id   int auto_increment
        primary key,
    nome varchar(255) not null
);

INSERT INTO dbteste.marcas (id, nome) VALUES (1, 'Volkswagen');
INSERT INTO dbteste.marcas (id, nome) VALUES (2, 'Fiat');
INSERT INTO dbteste.marcas (id, nome) VALUES (3, 'Audi');
INSERT INTO dbteste.marcas (id, nome) VALUES (4, 'Chevrolet');

create table veiculos
(
    id    int auto_increment
        primary key,
    nome  varchar(255) null,
    marca int          null
);

INSERT INTO dbteste.veiculos (id, nome, marca) VALUES (1, 'Argo', 2);
INSERT INTO dbteste.veiculos (id, nome, marca) VALUES (2, 'Mobi', 2);
INSERT INTO dbteste.veiculos (id, nome, marca) VALUES (3, 'Cronos', 2);
INSERT INTO dbteste.veiculos (id, nome, marca) VALUES (4, 'Grand Siena', 2);
INSERT INTO dbteste.veiculos (id, nome, marca) VALUES (5, 'A3', 3);
INSERT INTO dbteste.veiculos (id, nome, marca) VALUES (6, 'A4', 3);
INSERT INTO dbteste.veiculos (id, nome, marca) VALUES (7, 'Polo', 1);
INSERT INTO dbteste.veiculos (id, nome, marca) VALUES (8, 'Jetta', 1);
INSERT INTO dbteste.veiculos (id, nome, marca) VALUES (9, 'Camaro', 4);
INSERT INTO dbteste.veiculos (id, nome, marca) VALUES (10, 'Cruze', 4);
INSERT INTO dbteste.veiculos (id, nome, marca) VALUES (11, 'Onix', 4);