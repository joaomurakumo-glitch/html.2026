function executar(event) {
    event.preventDefault();

    var numero = document.getElementById("idNumero").value;
    numero = parseInt(numero);

    var resultado = document.getElementById("idResultado");

    if (numero % 2 === 0) {
        resultado.innerHTML = 'O número ' + numero + ' é <span style="color: green"><strong>PAR</strong></span>! 🟢';
    } else {
        resultado.innerHTML = 'O número ' + numero + ' é <span style="color: orange"><strong>ÍMPAR</strong></span>! 🟠';
    }
}

function resetar() {
    var resultado = document.getElementById("idResultado");
    resultado.innerHTML = "";
}

function retornar() {
    window.history.back();
}