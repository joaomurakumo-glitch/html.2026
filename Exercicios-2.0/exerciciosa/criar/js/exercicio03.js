function executar(event){

    event.preventDefault();

    var base = document.getElementById("idBase").value;
    var altura = document.getElementById("idAltura").value;

    base = parseFloat(base);
    altura = parseFloat(altura);

    var resultado = document.getElementById("idResultado");

    var area = (base * altura)/2

    resultado.innerHTML = 'O resultado do calculo é: <br><br>'+
    'A area do Triangulo é de <span="color:blue"><strong>'+ area + '</string>'
}

function resetar(){
    var resultado = document.getElementById("idResultado");
    resultado.innerHTML = "";
}

function retornar(){
    window.history.back();
}