```php
<?php
    //informar o content type do arquivo
    header("Content-type: text/json");

    //Definir o Time Zone
    date_default_timezone_set('America/Sao_Paulo');

    //Config do Host de Hospedagem
    //nome do servidor, usuario, senha, nome do banco
    $mysqli = new mysqli('localhost','id10281378_admin','teste@123','id10281378_db_pizzaria');

    //Cria a consulta
    $sql = 'SELECT * FROM tb_pizza';

    //Executa a consulta
    $resposta = $mysqli->query($sql);

    $pizzas = array();
    $listaAux = array();

    while($linha = mysqli_fetch_array($resposta))
    {
        foreach($linha as $key => $conteudo)
        {
            if(!is_numeric($key))
            {
                $listaAux[$key] = $conteudo;
            }

        }
        array_push($pizzas, $listaAux);
    }

    echo json_encode(array("pizzas" => $pizzas));
    $mysqli->close();


?>
```
