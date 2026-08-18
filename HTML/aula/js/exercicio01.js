function executar(event) {
    event.preventDefault();

    const idade = parseInt(document.getElementById("idIdade").value);

    if (idade > 140) {
        alert("Idade invalida verifique...");
        return;

    }

    var resultado = document.getElementById("idResultado");

    if (idade >= 18)
        resultado.innerHTML = '<span style="color: green">MAIOR<b></span> de idade';
    else
        resultado.innerHTML = '<span style="color: red">MENOR<b></span> de idade';

}

function resetar(){
    var resultado = document.getElementById("idResultado");
    resultado.textContent = "";
    resultado.innerHTML = "";
}