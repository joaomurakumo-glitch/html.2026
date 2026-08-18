function executar13(event){
    event.preventDefault();

    let a = parseFloat(document.getElementById("n12a").value);
    let b = parseFloat(document.getElementById("n12b").value);
    let c = parseFloat(document.getElementById("n12c").value);

    let maior = Math.max(a,b,c);
    let menor = Math.min(a,b,c);

    document.getElementById("res12").innerHTML =
        "Maior: " + maior + "<br>Menor: " + menor;
}

function resetar13(){
    document.getElementById("res12").innerHTML = "";
}