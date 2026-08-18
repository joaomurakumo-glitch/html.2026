function executar9(event){
    event.preventDefault();

    let c = parseFloat(document.getElementById("temp9").value);
    let f = (c * 9/5) + 32;

    document.getElementById("res9").innerHTML =
        "Fahrenheit: " + f;
}

function resetar9(){
    document.getElementById("res9").innerHTML = "";
}