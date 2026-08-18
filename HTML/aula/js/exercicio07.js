function executar7(event){
    event.preventDefault();

    let n1 = parseFloat(document.getElementById("n1").value);
    let n2 = parseFloat(document.getElementById("n2").value);

    document.getElementById("res7").innerHTML =
        "Soma: " + (n1+n2) + "<br>" +
        "Subtração: " + (n1-n2) + "<br>" +
        "Multiplicação: " + (n1*n2) + "<br>" +
        "Divisão: " + (n2!=0 ? n1/n2 : "Erro");
}

function resetar7(){
    document.getElementById("res7").innerHTML = "";
}