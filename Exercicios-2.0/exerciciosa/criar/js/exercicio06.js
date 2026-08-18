function executar(event) {
    event.preventDefault();

    var ano = document.getElementById("idAno").value;
    ano = parseInt(ano);

    var resultado = document.getElementById("idResultado");


    if (ano % 4 === 0) {
        resultado.innerHTML = 'O ano ' + ano + ' <span style="color: green"><strong>É BISSEXTO!</strong></span> 📅<br>' +
        'Ele possui 366 dias.';
    } else {
        resultado.innerHTML = 'O ano ' + ano + ' <span style="color: red"><strong>NÃO É BISSEXTO.</strong></span> 🗓️<br>' +
        'Ele possui os normais 365 dias.';
    }
}

function resetar() {
    var resultado = document.getElementById("idResultado");
    resultado.innerHTML = "";
}

function retornar() {
    window.history.back();
}