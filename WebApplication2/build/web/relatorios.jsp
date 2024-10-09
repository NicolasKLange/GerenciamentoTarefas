<%-- 
    Document   : users
    Created on : 9 de out. de 2024, 07:32:20
    Author     : nicolas_lange
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Relatórios</title>
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
            <header class="header">
                <input type="text" placeholder="Pesquisar Relatório" class="search-bar"> 
            </header>

            <section class="dashboard">
                <div class="dashboard-header">
                    <h2>Relatórios</h2>
                  
                </div>
                </div>
            </section>
        </main>
    </div>

    <script src="js/script.js"></script>
</body>
</html>

