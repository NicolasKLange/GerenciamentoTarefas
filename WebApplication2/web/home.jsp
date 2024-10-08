<%-- 
    Document   : home
    Created on : 8 de out. de 2024, 08:34:19
    Author     : nicolas_lange
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard de Tarefas</title>
    <link rel="stylesheet" href="css/homeStyle.css">
</head>
<body>
    <div class="container">
        <!-- Barra Lateral -->
        <aside class="sidebar" id="sidebar">
            <div class="logo" id="sidebar-logo">
                <img src="Image/logo.png" alt="Logo Ocelot">
            </div>
            <nav>
                <ul>
                    <li><a href="#"><i class="icon-home"></i> <span class="sidebar-text">Tela Principal</span></a></li>
                    <li><a href="#"><i class="icon-user"></i> <span class="sidebar-text">Usuários</span></a></li>
                    <li><a href="#"><i class="icon-tasks"></i> <span class="sidebar-text">Relatórios</span></a></li>
                    <li><a href="#"><i class="icon-add"></i> <span class="sidebar-text">Criar Usuário</span></a></li>
                    <li><a href="#"><i class="icon-settings"></i> <span class="sidebar-text">Logout</span></a></li>
                </ul>
            </nav>
        </aside>

        <!-- Botão de abrir/fechar a sidebar -->
        <button class="toggle-button" id="toggleButton">
            <i class="icon-menu"></i>
        </button>

        <!-- Conteúdo Principal -->
        <main class="main-content">
            <header class="header">
                <input type="text" placeholder="Pesquisar tarefa" class="search-bar">
                
            </header>

            <section class="dashboard">
                <div class="dashboard-header">
                    <h2>Dashboard de Tarefas</h2>
                    <button class="add-task-button">Adicionar Tarefa +</button>
                </div>

                <!-- Botões de Filtro -->
                <div class="task-filters">
                    <button class="filter-button">Atrasada</button>
                    <button class="filter-button">Em andamento</button>
                    <button class="filter-button">Concluída</button>
                </div>

                <!-- Cards de Tarefas -->
                <div class="task-grid">
                    <div class="task-card">
                        <div class="task-header">
                            <span class="task-title">Manutenção</span>
                            <div class="task-actions">
                                <button class="edit-button"><i class="icon-edit"></i></button>
                                <button class="delete-button"><i class="icon-trash"></i></button>
                            </div>
                        </div>
                        <p class="task-description">Fazer a manutenção da máquina de tecido, problema no rolamento.</p>
                        <p class="task-date">25/09/2024</p>
                        <p class="task-owner">Gustavo Franke</p>
                    </div>

                    <!-- Repetir os cards de tarefa conforme necessário -->
                </div>
            </section>
        </main>
    </div>

    <script src="js/script.js"></script>
</body>
</html>

