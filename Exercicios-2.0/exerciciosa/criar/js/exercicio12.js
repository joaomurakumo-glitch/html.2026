function executar(event) {
    event.preventDefault();

    var n1 = parseFloat(document.getElementById("idNum1").value);
    var n2 = parseFloat(document.getElementById("idNum2").value);
    var n3 = parseFloat(document.getElementById("idNum3").value);

    var resultado = document.getElementById("idResultado");

    
    var maior = n1;
    if (n2 > maior) {
        maior = n2; 
    }
    if (n3 > maior) {
        maior = n3; 
    }

   
    var menor = n1;
    if (n2 < menor) {
        menor = n2; 
    }
    if (n3 < menor) {
        menor = n3; 
    }

    resultado.innerHTML = 'Análise dos números: <br><br>' +
    'O <strong>MAIOR</strong> número é: <span style="color: green"><strong>' + maior + '</strong></span><br>' +
    'O <strong>MENOR</strong> número é: <span style="color: red"><strong>' + menor + '</strong></span>';
}

function resetar() {
    var resultado = document.getElementById("idResultado");
    resultado.innerHTML = "";
}

function retornar() {
    window.history.back();
}