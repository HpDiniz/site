function loadInicial(){

    let url = "model_inicial.php";
    $.post(url,{},function(response,status){
        if(status == "success"){
            $('#txtCar1').text('nascentes 1');
            $('#txtCar2').text('nascentes 2');
            $('#txtCar3').text('nascentes 3');
            //console.log(response['imgCar1']);
            //console.log(response['imgCar2']);
            //console.log(response['imgCar3']);
            $('#imgCar1').attr('src', 'foto/' + response['imgCar1']);
            $('#imgCar2').attr('src', 'foto/' + response['imgCar2']);
            $('#imgCar3').attr('src', 'foto/' + response['imgCar3']);

            $('#titCard1').text(response['titCard1']);
            $('#titCard2').text(response['titCard2']);
            $('#titCard3').text(response['titCard3']);
            $('#imgCard1').attr('src', 'foto/' + response['imgCard1']);
            $('#imgCard2').attr('src', 'foto/' + response['imgCard2']);
            $('#imgCard3').attr('src', 'foto/' + response['imgCard3']);
        }
    });
}
