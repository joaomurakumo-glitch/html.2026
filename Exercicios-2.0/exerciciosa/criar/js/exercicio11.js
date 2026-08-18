function executar(event) {

    event.preventDefault();
    
    var numero = document.getElementById("idNumero").value;
    numero = parseFloat(numero);

    var resultado = document.getElementById("idResultado");

    if (numero > 0) {
        resultado.innerHTML = 'O número ' + numero + ' é <span style="color: green"><strong>POSITIVO</strong></span>! 📈';
    } else if (numero < 0) {
        resultado.innerHTML = 'O número ' + numero + ' é <span style="color: red"><strong>NEGATIVO</strong></span>! 📉';
    } else {
        resultado.innerHTML = 'O número digitado é o <span style="color: blue"><strong>ZERO</strong></span>! ⭕';
    }
}

function resetar() {
    var resultado = document.getElementById("idResultado");
    resultado.innerHTML = "";
}

function retornar() {
    window.history.back();
}