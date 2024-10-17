<%-- 
    Document   : users
    Created on : 9 de out. de 2024, 07:29:20
    Author     : nicolas_lange
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Usuários</title>
        <link rel="stylesheet" href="css/homeStyle.css">
    </head>
    <body>
        <div class="container">
            <!-- Barra Lateral -->
            <aside class="sidebar" id="sidebar">
                <div class="logo" id="sidebar-logo">
                    <button class="toggle-button" id="toggleButton">   
                    </button>
                    <img src="Image/logo.png" alt="Logo Ocelot">
                </div>
                <nav>
                    <ul>
                        <li><a href="home.jsp"><img src="logos/iconizer-home.svg" class="icon-image" alt="Home Icon"> <span class="sidebar-text">Tela Principal</span></a></li>
                        <li><a href="users.jsp"><img src="logos/iconizer-users.svg" class="icon-image" alt="User Icon"> <span class="sidebar-text">Usuários</span></a></li>
                        <li><a href="relatorios.jsp"><img src="logos/iconizer-painel.svg" class="icon-image" alt="Report Icon"> <span class="sidebar-text">Relatórios</span></a></li>
                        <li><a href="index.html"><img src="logos/iconizer-sair.svg" class="icon-image" alt="Logout Icon"> <span class="sidebar-text">Logout</span></a></li>
                    </ul>
                </nav>
            </aside>

            <!-- Conteúdo Principal -->
            <main class="main-content">
               

                <div class="dashboard-header">
                        <h2>Dashboard de Usuários</h2>
                    </div>
                  
                    <!--Botão para adicionar tarefa-->
                    <header class="header">
                        <input type="text" placeholder="Pesquisar Usuário" class="search-bar"> 
                        <button class="add-task-button">Adicionar Usuário  +</button>        
                    </header>

                    <dialog class="Janela-modal">
                        <form action="incluirUsuario.jsp">

                            <label for="nm">Nome</label>
                            <input type="text" class="nm" name="nome" placeholder="Nome">

                            <label for="email">Email</label>
                            <input type="email" class="email" name="email" placeholder="exemplo@gmail.com">

                            <label for="password">Senha</label>
                            <input type="password" class="password" name="senha" placeholder="Senha">

                            <label for="atv">Ativado?</label>
                            <input type="text" class="atv" name="ativacao" placeholder="true ou false">

                            <label for="atv">Nivel de Permissao</label>
                            <input type="text" class="np" name="nvpermissao" placeholder="1,2,3,4">


                            <input type="submit" value="Adicionar" class="submit">
                        </form>

                    </dialog>

                    </div>
                </section>
            </main>
        </div>

        <script src="js/script.js"></script>
        <script>const button = document.querySelector(".add-task-button");
            const modal = document.querySelector(".Janela-modal");
            const button_close = document.querySelector(".fechar-modal");



            button.onclick = function () {
                modal.showModal();
            };

            button_close.onclick = function () {
                modal.close();
            };
        </script>
    </body>
</html>

