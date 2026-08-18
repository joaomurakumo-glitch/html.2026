function executar(event){

    event.preventDefault();

    var a = document.getElementById("idValorA").value;
    var b = document.getElementById("idValorB").value;

    var resultado = document.getElementById("idResultado");

    var temp = a;
    a = b;
    b = temp;

    resultado.innerHTML = 'Valores invertidos: <br>' +
    'O novo valor de A é <span style= "color: green"><br>' + a + '</br></span> e <br>' + 
    'O novo valor de B é <span style= "color: red"><br>' + b + '</br></span>';
}

function resetar ()
{
    var resultado = document.getElementById("idResultado");
    resultado.innerHTML = "";
}

function retornar ()
{
    window.history.back();
}