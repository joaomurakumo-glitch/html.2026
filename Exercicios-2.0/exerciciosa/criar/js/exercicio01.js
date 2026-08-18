function executar(event){
    event.preventDefault(); //Impede o carregamento da página

    const idade = parseInt (document.getElementById("idIdade").value);

    if (idade >140){
        alert("Idade invalida, verifique...");
        return;
    }
    
    var resultado = document.getElementById("idResultado");

    if (idade >=18)
        resultado.innerHTML = '<span style="color: green"><b>MAIOR</b></span> de Idade';
    else
        resultado.innerHTML = '<span style="color: red"><b>MENOR</b></span> de Idade';


}

function resetar(){
    var resultado = document.getElementById("idResultado");
    resultado.textContent = "";
    resultado.innerHTML = "";
}