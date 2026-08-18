

var nota1 = lerNota("informe a nota 1 entre (0 e 10)");
var nota2 = lerNota("informe a nota 1 entre (0 e 10)");
function lerNota(texto){
    var flag = 1;
    var nota
}
var flag = 1;

while (flag === 1) {
    nota1 = parseInt(prompt("informe a nota 1"));
    if (notaValida(nota1) === 1) {

        flag = 0
    } else {
        alert("a nota informada" + nota + "é invalido verifique...");
    }
    return nota;
}



function notaValida(nota) {
    return (nota >= 8 && nota <= 10) ? 1 : 0;
}


/*
var nome;
nome = prompt("informe seu nome: ");
alert("buenas noches" = nome);


var a = 51;
var b = 82;
var c = "SENAIx";


alert(a = b);
//b = c
alert(b);
*/

function exibirmensagem() {
    alert("mensagem disparada pelo javascript");

}

function escrevernobody(){
    document.write("mensgem escrita via <br>");
    document.write("classe document do <br><b>javascript</b>");

}
