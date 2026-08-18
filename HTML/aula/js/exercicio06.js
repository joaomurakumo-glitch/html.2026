function executar6(event){
    event.preventDefault();

    let ano = parseInt(document.getElementById("ano6").value);

    let res = document.getElementById("res6");

    if((ano % 4 == 0 && ano % 100 != 0) || (ano % 400 == 0))
        res.innerHTML = "Bissexto";
    else
        res.innerHTML = "Não bissexto";
}

function resetar6(){
    document.getElementById("res6").innerHTML = "";
}