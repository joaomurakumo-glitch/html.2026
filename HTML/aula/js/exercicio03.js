function executar3(event){
    event.preventDefault();

    let base = parseFloat(document.getElementById("base").value);
    let altura = parseFloat(document.getElementById("altura").value);

    let area = (base * altura) / 2;

    document.getElementById("res3").innerHTML =
        "Área: " + area;
}

function resetar3(){
    document.getElementById("res3").innerHTML = "";
}