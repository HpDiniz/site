<?php
	$inicial = array();

	session_start();

    $host = "localhost";
    $user = "root";
    $senha = "";
    $banco = "admin";

    $conexao = mysqli_connect($host, $user, $senha, $banco) or die(mysqli_error());

    mysqli_select_db($conexao, $banco); 

    $query = sprintf("SELECT * FROM publicacao");

    $dados = mysqli_query($conexao, $query) or die(mysql_error());

    mb_internal_encoding("UTF-8");
    for ($i=0; $i < 3; $i++) { 
    	$linha = mysqli_fetch_assoc($dados);
    	$inicial['titCard' . ($i + 1)] = $linha['titulo'];
    	$inicial['imgCard' . ($i + 1)] = $linha['imagem'];
    	///////////////////////////////////////////////////////////
    	//colocar texto no vetor $inicial seguindo o modelo acima//
    	///////////////////////////////////////////////////////////
    	//$inicial['txtCard' . ($i + 1)] = mb_substr($linha['conteudo'], 0, 190) . '...';
    	//echo $inicial['txtCard'.($i+1)];
    	//echo mb_substr($linha['conteudo'], 0, 190); echo '...'; echo '';
    }


    $total = mysqli_num_rows($dados);

    $querycarousel = sprintf("SELECT * FROM imagens");

    $dadoscarousel = mysqli_query($conexao, $querycarousel) or die(mysql_error());

    //pegar só as 3 primeiras imagens
    for ($i=0; $i < 3; $i++) { 
    	$linhacarousel = mysqli_fetch_assoc($dadoscarousel);
    	$inicial['imgCar' . ($i + 1)] = $linhacarousel['nome_imagem'];
    }

	///////////////////////////////////////////////////////////////////////////////////////////////////
	///////////////////////////////////////////////////////////////////////////////////////////////////
	
	header('Content-Type: application/json');
    echo json_encode($inicial);
?>