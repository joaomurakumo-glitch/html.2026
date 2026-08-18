function executar(event){

    event.preventDefault();

    var idadeAnos = document.getElementById("idIdade").value;

    idadeAnos = parseInt(idadeAnos);

    var resultado = document.getElementById("idResultado");

    var idadeMeses = idadeAnos * 12;
    var idadeDias = idadeAnos * 365;


    resultado.innerHTML = 'Sua idade convertida é: <br><br>' +
    'Em meses: <span style="color: blue"><strong>'+ idadeMeses + 'meses </strong></span>.<br>' + 
    'Em dias: <span style="color:grenn"><strong>' + idadeDias + 'dias</strong></span>';


}

function resetar(){
    var resultado = document.getElementById("idResultado");
    resultado.innerHTML="";
}

function retornar(){
    window.history.back();
}