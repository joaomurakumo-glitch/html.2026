function executar(event) {
    event.preventDefault();

    var operacao = document.getElementById("idOperacao").value;
    var tempInput = document.getElementById("idTemperatura").value;

    tempInput = parseFloat(tempInput);

    var resultado = document.getElementById("idResultado");
    var tempConvertida;

    if (operacao === "CtoF") {
        tempConvertida = (tempInput * 1.8) + 32;
        
        resultado.innerHTML = 'Resultado: <br><br>' +
        '<strong>' + tempInput + '°C</strong> é igual a <span style="color: blue"><strong>' + tempConvertida.toFixed(1) + '°F</strong></span>';
    } else {
        tempConvertida = (tempInput - 32) / 1.8;
        
        resultado.innerHTML = 'Resultado: <br><br>' +
        '<strong>' + tempInput + '°F</strong> é igual a <span style="color: orange"><strong>' + tempConvertida.toFixed(1) + '°C</strong></span>';
    }
}

function resetar() {
    var resultado = document.getElementById("idResultado");
    resultado.innerHTML = "";
}

function retornar() {
    window.history.back();
}