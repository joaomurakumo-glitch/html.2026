function executar5(event){
    event.preventDefault();

    let valor = parseFloat(document.getElementById("valor5").value);

    if(valor > 100){
        valor *= 0.9;
    }

    document.getElementById("res5").innerHTML =
        "Final: " + valor;
}

function resetar5(){
    document.getElementById("res5").innerHTML = "";
}