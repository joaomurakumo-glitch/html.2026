function executar11(event){
    event.preventDefault();

    let num = parseFloat(document.getElementById("num11").value);

    let res = num > 0 ? "Positivo" :
              num < 0 ? "Negativo" : "Zero";

    document.getElementById("res11").innerHTML = res;
}

function resetar12(){
    document.getElementById("res11").innerHTML = "";
}