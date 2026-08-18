function executar8(event){
    event.preventDefault();

    let num = parseInt(document.getElementById("num8").value);

    document.getElementById("res8").innerHTML =
        num % 2 == 0 ? "Par" : "Ímpar";
}

function resetar8(){
    document.getElementById("res8").innerHTML = "";
}