<!DOCTYPE html>
<html>
    <head>
        <title>OCELOT</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style.css"/>
    </head>
    <body>
        <article>
            <h1>OCELOT</h1>
            <h3>Login</h3>
            <form action="VerificarUsuario.jsp">
                
                <label for="email">Email</label>
                <input type="email" class="email" name="email" placeholder="exemplo@gmail.com">
                
                <label for="password">Senha</label>
                <input type="password" class="password" name="senha" placeholder="Senha">
                
                <!-- Botão para abrir o modal -->
                <p><button type="button" class="redefinir" onclick="abrirModal()">Esqueceu a senha?</button></p>
                
                <input type="submit" value="Entrar" class="submit">
            </form>
        </article>
        <div class="image">
            <img src="Image/fundo.jpg" class="login-image">
        </div>

        <!-- Modal para redefinir senha -->
        <dialog id="modalRedefinirSenha" class="modal">
            <div class="modal-content">
                <span class="close" onclick="fecharModal()">&times;</span>
                <h2>Redefinir Senha</h2>
                <form action="redefinirSenha.jsp" method="POST">
                    <label for="email">Email</label>
                    <input type="text" id="email" name="email" placeholder="Digite seu email" required>

                    <label for="senha">Nova Senha</label>
                    <input type="password" id="senha" name="senha" placeholder="Digite sua nova senha" required>

                    <label for="confirmaSenha">Confirmar Nova Senha</label>
                    <input type="password" id="confirmaSenha" name="confirmaSenha" placeholder="Confirme sua nova senha" required>

                    <button type="submit">Redefinir Senha</button>
                    <button type="submit" onclick="window.location.href='login.jsp'">Cancelar</button>
                </form>
            </div>
        </dialog>

        <script src="js/modal.js"></script> <!-- Script para manipular o modal -->
    </body>
</html>
<style>
    
/* Estilos para o modal */
.modal {
    background-color: #F2EEE7;
    color: #225b5b;
    width: 400px;
    border-radius: 10px;
    padding: 20px;
    box-shadow: 0.4rem 0.4rem 0.5rem rgba(0, 0, 0, 0.3);
    border: none;
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
   
}

.modal-content {
    background-color: #F2EEE7;
    color: #225b5b;
    cursor: pointer;
    font-family: "Oswald", sans-serif;
    font-size: 16px;
    transition: 1s;
    margin-top: 10px;
}

.close {
    color: #225b5b;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: black;
    text-decoration: none;
    cursor: pointer;
}

button.redefinir {
    color: #225b5b;
    border: none;
    background-color: #F2EEE7;
    cursor: pointer;

}

button{
    color: #F2EEE7;
    background-color: #225b5b;
    border-radius: 10px;
    margin-top: 15px;
    padding: 10px;
    font-size: 15px;
    font-family: "Oswald", sans-serif;
    text-align: center;
}
</style>
