<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="entity.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Tela de usuários -->
        <title>Usuários</title>
        <link rel="stylesheet" href="css/homeStyle.css">

    </head>
    <body>
        <div class="container">
            <!-- Barra Lateral -->
            <aside class="sidebar" id="sidebar">
                <div class="logo" id="sidebar-logo">
                    <button class="toggle-button" id="toggleButton">   
                        ☰
                    </button>
                    <img src="Image/logo.png" alt="Logo Ocelot">
                </div>
                <nav>
                    <ul>
                        <li><a href="home.jsp"><img src="logos/iconizer-home.svg" class="icon-image" alt="Home Icon"> <span class="sidebar-text">Tela Principal</span></a></li>
                        <li><a href="users.jsp"><img src="logos/iconizer-users.svg" class="icon-image" alt="User Icon"> <span class="sidebar-text">Usuários</span></a></li>
                        <li><a href="index.html"><img src="logos/iconizer-sair.svg" class="icon-image" alt="Logout Icon"> <span class="sidebar-text">Logout</span></a></li>
                    </ul>
                </nav>
            </aside>
            <!-- Conteúdo Principal da tela de usuários -->
            <main class="main-content">
                <div class="dashboard-header">
                    <h2>Dashboard de Usuários</h2>
                </div>
                <!-- Botão para adicionar usuário -->
                <header class="header">
                    <input type="text" placeholder="Pesquisar Usuário" class="search-bar"> 
                    <button class="add-task-button">Adicionar Usuário  +</button>        
                </header>
                <!-- Modal para incluir usuário -->
                <dialog class="Janela-modal">
                    <form action="incluirUsuario.jsp">
                        <label for="nm">Nome</label>
                        <input type="text" class="nm" name="nome" placeholder="Nome">
                        <label for="email">Email</label>
                        <input type="email" class="email" name="email" placeholder="exemplo@gmail.com">
                        <label for="password">Senha</label>
                        <input type="password" class="password" name="senha" placeholder="Senha">
                        <label for="atv">Ativado?</label>
                        <select class="atv" name="ativacao" required>
                            <option value="" disabled selected>Selecione</option>
                            <option value="true">True</option>
                            <option value="false">False</option>
                        </select>
                        <!-- Escolher nivel de permissão do usuário -->
                        <label for="np">Nível de Permissão</label>
                        <select class="np" name="nvpermissao"  required>
                            <option value="" disabled selected>Selecione</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                        </select>
                        <input type="submit" value="Adicionar" class="submit">
                    </form>
                </dialog>
                <!-- Listar usuários cadastrados -->
                <%
                    Usuario user = new Usuario();

                    List<Usuario> lista = new ArrayList<>();
                    lista = user.listarUsuario();
                %>
                <!-- Tabela dos usuários cadastrados -->
                <table class="table">
                    <thead >
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Nome</th>
                            <th scope="col">Email</th>
                            <th scope="col">Ativado</th>
                            <th scope="col">Nivel de permissao</th>
                            <th scope="col">Excluir</th>
                        </tr>
                    </thead>
                    <!-- Função para Listar -->
                    <% for (Usuario de : lista) {%>
                    <tbody>
                        <tr>
                            <th scope="row"><%= de.getId_usuario()%></th>
                            <td><%= de.getNome_usuario()%></td>
                            <td><%= de.getEmail_usuario()%></td>
                            <td><%= de.getAtivacao_usuario()%></td>
                            <td><%= de.getNivel_permissao()%></td>
                            <td><a href="ExcluirUsuario.jsp?id=<%= de.getId_usuario()%>">excluir</a></td>
                    </tbody>
                    <% }%>
                </table>
        </div>
    </section>
</main>
</div>
<!-- Script para modal de incluir usuário -->

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

