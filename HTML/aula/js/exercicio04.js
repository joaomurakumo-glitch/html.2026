function executar4(event){
    event.preventDefault();

    let idade = parseInt(document.getElementById("idade4").value);

    let meses = idade * 12;
    let dias = idade * 365;

    document.getElementById("res4").innerHTML =
        "Meses: " + meses + "<br>Dias: " + dias;
}

function resetar4(){
    document.getElementById("res4").innerHTML = "";
}