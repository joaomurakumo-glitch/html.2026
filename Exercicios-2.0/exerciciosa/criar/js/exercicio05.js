function executar(event){

    event.preventDefault();


    var valorOriginal = document.getElementById("idValor").value;
    valorOriginal = parseFloat(valorOriginal);

    var resultado = document.getElementById("idResultado");

    var valorFinal = valorOriginal;

    if(valorOriginal > 99){
        var desconto = valorOriginal * 0.10;
        valorFinal = valorOriginal - desconto;
    }
   
    if(valorOriginal > 99){
        resultado.innerHTML = 'Parabens! Voce ganhou 10% de desconto.<br>' + 
        'Valor final a pagar: <span style="color:blue"><strong>R$' + valorFinal.toFixed(2)  + '</strong></span>';       
    }else{
        resultado.innerHTML = 'Sem desconto aplicado (valor igual ou menor que R$ 100,00).<br>'
        'Valor final a pagar: <span style="color: blue"><strong>R$' + valorFinal.toFixed(2) + '</strong></span>';
    }


     

}

function resetar(){
    var resultado = document.getElementById("idResultado");
    resultado.innerHTML="";
}

function retornar(){
    window.history.back();
}