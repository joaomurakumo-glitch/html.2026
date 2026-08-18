function executar2(event){
    event.preventDefault();

    let a = document.getElementById("a").value;
    let b = document.getElementById("b").value;

    let temp = a;
    a = b;
    b = temp;

    document.getElementById("res2").innerHTML =
        "A=" + a + " | B=" + b;
}

function resetar2(){
    document.getElementById("res2").innerHTML = "";
}