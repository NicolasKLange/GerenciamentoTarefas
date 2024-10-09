<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                    <img src="Image/logo.png" alt="Logo Ocelot" id="sidebar-logo-img">
                    <button class="toggle-button" id="toggleButton">   
                        ☰
                    </button>
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


                <section class="dashboard">
                    <div class="dashboard-header">
                        <h2>Dashboard de Tarefas</h2>
                    </div>
                    <header class="header">
                        <input type="text" placeholder="Pesquisar tarefa" class="search-bar"> 
                        <button class="add-task-button">Adicionar Tarefa  +</button>        
                    </header>
                    <!-- Botões de Filtro -->
                    <div class="task-filters">
                        <button class="filter-button">Atrasada</button>
                        <button class="filter-button">Em andamento</button>
                        <button class="filter-button">Concluída</button>
                    </div>

                    <!-- Lista de Tarefas (Atrasadas, Em andamento, Concluídas) -->
                    <div class="task-grid">
                        <!-- Exemplo de card de tarefa -->
                        <div class="task-card">
                            <div class="task-header">
                                <span class="task-title">Manutenção</span>
                                <div class="task-actions">
                                    <button class="edit-button">✏️</button>
                                    <button class="delete-button">🗑️</button>
                                </div>
                            </div>
                            <p class="task-description">Fazer a manutenção da máquina de tecido, problema no rolamento.</p>
                            <span class="task-date">25/09/2024</span><br>
                            <span class="task-owner">Gustavo Franke</span>
                        </div>
                        <div class="task-card">
                            <div class="task-header">
                                <span class="task-title">Manutenção</span>
                                <div class="task-actions">
                                    <button class="edit-button">✏️</button>
                                    <button class="delete-button">🗑️</button>
                                </div>
                            </div>
                            <p class="task-description">Fazer a manutenção da máquina de tecido, problema no rolamento.</p>
                            <span class="task-date">25/09/2024</span><br>
                            <span class="task-owner">Gustavo Franke</span>
                        </div>
                        <div class="task-card">
                            <div class="task-header">
                                <span class="task-title">Manutenção</span>
                                <div class="task-actions">
                                    <button class="edit-button">✏️</button>
                                    <button class="delete-button">🗑️</button>
                                </div>
                            </div>
                            <p class="task-description">Fazer a manutenção da máquina de tecido, problema no rolamento.</p>
                            <span class="task-date">25/09/2024</span><br>
                            <span class="task-owner">Gustavo Franke</span>
                        </div>
                    </div>
                </section>
            </main>
        </div>

        <script src="js/script.js"></script>
    </body>
</html>
