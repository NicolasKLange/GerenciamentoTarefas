function abrirModal() {
    document.getElementById('modalRedefinirSenha').style.display = 'block';
}

function fecharModal() {
    document.getElementById('modalRedefinirSenha').style.display = 'none';
}

// Fechar o modal quando o usuário clicar fora dele
window.onclick = function(event) {
    var modal = document.getElementById('modalRedefinirSenha');
    if (event.target === modal) {
        modal.style.display = "none";
    }
    }

