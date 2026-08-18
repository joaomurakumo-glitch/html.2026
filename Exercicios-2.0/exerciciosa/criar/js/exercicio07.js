function executar(event) {
    event.preventDefault();

    var num1 = document.getElementById("idNum1").value;
    var num2 = document.getElementById("idNum2").value;

    num1 = parseFloat(num1);
    num2 = parseFloat(num2);

    var resultado = document.getElementById("idResultado");

    var adicao = num1 + num2;
    var subtracao = num1 - num2;
    var multiplicacao = num1 * num2;
    
    var divisaoResultado;
    if (num2 === 0) {
        divisaoResultado = '<span style="color: red">Não é possível dividir por zero</span>';
    } else {
        var divisao = num1 / num2;
        divisaoResultado = '<strong>' + divisao + '</strong>';
    }

    resultado.innerHTML = '<strong>Resultados:</strong><br><br>' +
    '➕ Adição (' + num1 + ' + ' + num2 + ') = <strong>' + adicao + '</strong><br>' +
    '➖ Subtração (' + num1 + ' - ' + num2 + ') = <strong>' + subtracao + '</strong><br>' +
    '✖️ Multiplicação (' + num1 + ' * ' + num2 + ') = <strong>' + multiplicacao + '</strong><br>' +
    '➗ Divisão (' + num1 + ' / ' + num2 + ') = ' + divisaoResultado;
}

function resetar() {
    var resultado = document.getElementById("idResultado");
    resultado.innerHTML = "";
}

function retornar() {
    window.history.back();
}