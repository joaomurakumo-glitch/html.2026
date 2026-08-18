
// ==========================================
// VARIÁVEIS DO PLACAR
// ==========================================

let pontosJogador = 0;
let pontosComputador = 0;


// ==========================================
// NOMES DAS OPÇÕES
// ==========================================

const nomes = {
    1: "Pedra",
    2: "Papel",
    3: "Tesoura"
};


// ==========================================
// FUNÇÃO PRINCIPAL DO JOGO
// ==========================================

function jogar(jogador) {

    // O computador escolhe aleatoriamente
    // um número entre 1 e 3

    const computador = Math.floor(Math.random() * 3) + 1;


    // Exibe a escolha do computador

    document.getElementById("escolhaComputador").textContent =
        nomes[computador];


    // ======================================
    // VERIFICAÇÃO DO RESULTADO
    // ======================================

    let resultado;


    // EMPATE

    if (jogador === computador) {

        resultado = "empate";

    }

    // JOGADOR VENCE

    else if (

        (jogador === 1 && computador === 3) ||
        (jogador === 2 && computador === 1) ||
        (jogador === 3 && computador === 2)

    ) {

        resultado = "jogador";

        pontosJogador++;

    }

    // COMPUTADOR VENCE

    else {

        resultado = "computador";

        pontosComputador++;

    }


    // ======================================
    // ATUALIZA O PLACAR
    // ======================================

    document.getElementById("pontosJogador").textContent =
        pontosJogador;

    document.getElementById("pontosComputador").textContent =
        pontosComputador;


    // ======================================
    // MOSTRA O RESULTADO
    // ======================================

    mostrarResultado(resultado);
}


// ==========================================
// MOSTRAR RESULTADO
// ==========================================

function mostrarResultado(resultado) {

    const imagem =
        document.getElementById("imagemResultado");

    const texto =
        document.getElementById("textoResultado");


    // Exibe a imagem

    imagem.style.display = "block";


    // JOGADOR VENCEU

    if (resultado === "jogador") {

        imagem.src =
            "img/resultado-voce-venceu.png";

        imagem.alt =
            "Você venceu";

        texto.textContent =
            "Você Venceu!";

    }


    // COMPUTADOR VENCEU

    else if (resultado === "computador") {

        imagem.src =
            "img/resultado-computador-venceu.png";

        imagem.alt =
            "Computador venceu";

        texto.textContent =
            "Computador Venceu!";

    }


    // EMPATE

    else {

        imagem.src =
            "img/resultado-empate.png";

        imagem.alt =
            "Empate";

        texto.textContent =
            "Empate!";

    }
}


// ==========================================
// JOGAR NOVAMENTE
// ==========================================

function jogarNovamente() {

    // Reinicia somente a rodada.
    // O placar NÃO é perdido.

    document.getElementById("escolhaComputador").textContent =
        "Aguardando jogada...";


    document.getElementById("textoResultado").textContent =
        "Escolha uma opção para jogar!";


    const imagem =
        document.getElementById("imagemResultado");


    imagem.style.display = "none";

    imagem.src = "";

    imagem.alt = "Resultado";
}


// ==========================================
// BOTÃO RETORNAR
// ==========================================

function retornar() {

    window.history.back();

}

