<?php
    /*
        -- MYSQL --
        database: dbteste
        username: root
        passwd:

        O terceiro teste consiste em você extrair do banco de dados
        com uma query informações dos clientes e seus respectivos veículos e marcas.

        Após isso você vai colocar na tabela abaixo as informações de todos os clientes.

        Pode utilizar mysqli ou pdo, da forma que achar melhor.

     */

    $pdo = new PDO("mysql:host=localhost;dbname=dbteste", "root", "root");
    
    $sql = "SELECT veiculos.nome as veiculo , clientes.data_compra, clientes.nome , marcas.nome as marca FROM clientes left join veiculos on veiculos.id =  clientes.veiculo
    left join marcas on marcas.id = veiculos.marca";

    $row =  $pdo->query($sql) or die($pdo->error);


?>

<!doctype html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>3ª Teste</title>
    <style>
        body, html{
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: row;
        }
        .content {
            width: 80%;
            height: 450px;
            background-color: #dcd8d8;
            margin: 10px;
            text-align: center;
            padding: 10px;
            overflow-y: auto;
        }
        table {
            text-align: left;
            width: 100%;
        }
        table thead {
            background-color: white;
        }
        table thead td{
            padding: 10px 5px;
        }
        tbody tr td {
            padding: 10px 0px;
            color: #210606;
            border-bottom: 1px solid green;

        }

    </style>
</head>
<body>

<div class="content">
    <table>
        <thead>
        <tr>
            <td>Cliente</td>
            <td>Data da compra</td>
            <td>Veículo</td>
            <td>Marca</td>
        </tr>
        </thead>
        <tbody>
        <!-- Coloque aqui a lista de clientes. -->
        <?php if (isset($row)){ ?>
            <?php foreach ($row as $item){ ?>
                <tr>
                    <td><?= $item['nome'] ?></td>
                    <td><?= $item['data_compra'] ?></td>
                    <td><?= $item['veiculo'] == null ? 'sem carro': $item['veiculo'] ?></td>
                    <td><?= $item['marca'] == null ? 'sem marca': $item['marca']?></td>
                </tr>
            <?php } ?>
        <?php } ?>
        </tbody>
    </table>
</div>
</body>
</html>