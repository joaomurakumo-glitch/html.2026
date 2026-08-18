function executar10(event){
    event.preventDefault();

    let peso = parseFloat(document.getElementById("peso").value);
    let altura = parseFloat(document.getElementById("altura10").value);

    let imc = peso / (altura * altura);

    document.getElementById("res10").innerHTML =
        "IMC: " + imc.toFixed(2);
}

function resetar10(){
    document.getElementById("res10").innerHTML = "";
}