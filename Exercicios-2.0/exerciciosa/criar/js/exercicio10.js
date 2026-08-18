function executar(event) {
    event.preventDefault();

    var peso = document.getElementById("idPeso").value;
    var altura = document.getElementById("idAltura").value;

    peso = parseFloat(peso);
    altura = parseFloat(altura);

    var resultado = document.getElementById("idResultado");

    var imc = peso / (altura * altura);

    var classificacao = "";
    var cor = "";

    if (imc < 18.5) {
        classificacao = "Abaixo do peso";
        cor = "orange";
    } else if (imc >= 18.5 && imc < 25) {
        classificacao = "Peso normal";
        cor = "green";
    } else if (imc >= 25 && imc < 30) {
        classificacao = "Sobrepeso";
        cor = "gold";
    } else {
        classificacao = "Obesidade";
        cor = "red";
    }

    resultado.innerHTML = 'Seu IMC é: <strong>' + imc.toFixed(2) + '</strong><br>' +
    'Classificação: <span style="color: ' + cor + '"><strong>' + classificacao + '</strong></span>';
}

function resetar() {
    var resultado = document.getElementById("idResultado");
    resultado.innerHTML = "";
}

function retornar() {
    window.history.back();
}