<?php

    session_start();

    $host = "localhost";
    $user = "root";
    $senha = "";
    $banco = "admin";

    $conexao = mysqli_connect($host, $user, $senha, $banco) or die(mysqli_error());

    mysqli_select_db($conexao, $banco); 

    $query = sprintf("SELECT * FROM publicacao");

    $dados = mysqli_query($conexao, $query) or die(mysql_error());

    $linha = mysqli_fetch_assoc($dados);

    $total = mysqli_num_rows($dados);

        ?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="./assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="./assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Nascentes</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <!-- CSS Files -->
    <link href="./assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="./assets/css/now-ui-kit.css?v=1.1.0" rel="stylesheet" /> 
    <link href="adicoes.css" rel="stylesheet" />
</head>

<body class="index-page sidebar-collapse">
	<?php include "cabecalho.php" ?>

	<div class="section" id="carousel">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-8">
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner" role="listbox">
                            <div class="carousel-item active">
                            	<?php $img ="assets/img/bg1.jpg";  ?>
                                <img class="d-block" src="<?php echo $img; ?>" alt="First slide">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5>Nature, United States</h5>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img class="d-block" src="assets/img/bg3.jpg" alt="Second slide">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5>Somewhere Beyond, United States</h5>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img class="d-block" src="assets/img/bg4.jpg" alt="Third slide">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5>Yellowstone National Park, United States</h5>
                                </div>
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                            <i class="now-ui-icons arrows-1_minimal-left"></i>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                            <i class="now-ui-icons arrows-1_minimal-right"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="section section-tabs">
        <div class="container">
            <p class="category">Noticias Recentes</p>
            <div class="row">
                <?php 
                    if($total > 0){
                        do{

                 ?>
                <div class="col-md-10 col-lg-8 col-xl-6 ml-auto mr-auto">
                    <!-- Nav tabs -->
                    <div class="card">
                        <!--<ul class="nav nav-tabs justify-content-center" role="tablist">-->
                        <ul class="nav nav-tabs nav-tabs-neutral justify-content-center" role="tablist" data-background-color="orange">
                            <li class="nav-item"><?php echo $linha['titulo']?></li>
                        </ul>
                        <div class="card-body">
                            <!-- Tab panes -->
                            <div class="row">
                                <div class="col-md-10 col-lg-8 col-xl-6 ml-auto mr-auto">
                                    <img class="card-img" src="foto/<?php echo $linha['imagem']?>" alt="Card image cap">
                                </div>
                                <div class="col-md-10 col-lg-8 col-xl-6 ml-auto mr-auto">
                                    <div class="tab-content text-center">
                                        <div class="tab-pane active" id="home" role="tabpanel">
                                            <p><?php echo mb_substr( "{$linha['conteudo']}", 0, 190, 'UTF-8' ); echo "..."; ?></p>
                                            <button class="btn btn-primary" type="button" onclick="location.href='apresentacaoCards.php'">Saber mais</button>
                                        </div>                                
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <?php }while($linha = mysqli_fetch_assoc($dados)); 
                 }?>

            </div>
        </div>
    </div>

    <?php include "rodape.php" ?>

</body>
<!--   Core JS Files   -->
<script src="./assets/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="./assets/js/core/popper.min.js" type="text/javascript"></script>
<script src="./assets/js/core/bootstrap.min.js" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="./assets/js/plugins/bootstrap-switch.js"></script>
<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="./assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
<!--  Plugin for the DatePicker, full documentation here: https://github.com/uxsolutions/bootstrap-datepicker -->
<script src="./assets/js/plugins/bootstrap-datepicker.js" type="text/javascript"></script>
<!-- Control Center for Now Ui Kit: parallax effects, scripts for the example pages etc -->
<script src="./assets/js/now-ui-kit.js?v=1.1.0" type="text/javascript"></script>

<script type="text/javascript">
/*$(document).ready(function() {
    // the body of this function is in assets/js/now-ui-kit.js
    nowuiKit.initSliders();
});*/

/*function scrollToDownload() {

    if ($('.section-download').length != 0) {
        $("html, body").animate({
            scrollTop: $('.section-download').offset().top
        }, 1000);
    }
}*/
</script>

</html>