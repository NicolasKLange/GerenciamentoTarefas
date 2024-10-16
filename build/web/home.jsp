
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
            <main class="main-content">
              <section class="dashboard">
                    <div class="dashboard-header">
                        <h2>Dashboard de Tarefas</h2>
                    </div>
                  
                    <!--Botão para adicionar tarefa-->
                    <header class="header">
                        <input type="text" placeholder="Pesquisar tarefa" class="search-bar"> 
                        <button class="add-task-button">Adicionar Tarefa  +</button>        
                    </header>
                    
                    <!-- Botões de Filtro dos Status das tarefas-->
                    <div class="task-filters">
                        <button class="filter-button">Atrasada</button>
                        <button class="filter-button">Em andamento</button>
                        <button class="filter-button">Concluída</button>
                    </div>
                    <!-- Lista das Tarefas-->
                    <div class="task-lists">                       
                        <!-- Coluna de tarefas atrasadas -->
                        <section class="task-column">
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
                                <p class="task-description">Fazer a manutenção da máquina de fios, reaprovetar fios existentes.</p>
                                <span class="task-date">18/09/2024</span><br>
                                <span class="task-owner">Gabriel Melz</span>
                            </div>
                            <div class="task-card">
                                <div class="task-header">
                                    <span class="task-title">Manutenção</span>
                                    <div class="task-actions">
                                        <button class="edit-button">✏️</button>
                                        <button class="delete-button">🗑️</button>
                                    </div>
                                </div>
                                <p class="task-description">Fazer a manutenção da máquina de fios, reaprovetar fios existentes.</p>
                                <span class="task-date">18/09/2024</span><br>
                                <span class="task-owner">Gabriel Melz</span>
                            </div>
                        </section>
                        
                        <!-- Coluna de tarefas em andamento -->
                        <section class="task-column">   
                            <div class="task-card">
                                <div class="task-header">
                                    <span class="task-title">Implementação</span>
                                    <div class="task-actions">
                                        <button class="edit-button">✏️</button>
                                        <button class="delete-button">🗑️</button>
                                    </div>
                                </div>
                                <p class="task-description">Fazer a implementação da API, para verificação de Login.</p>
                                <span class="task-date">30/09/2024</span><br>
                                <span class="task-owner">Nicolas Lange</span>
                            </div>
                        </section>
                        
                        <!-- Coluna de tarefas concluídas -->
                        <section class="task-column">

                            <div class="task-card">
                                <div class="task-header">
                                    <span class="task-title">Manutenção</span>
                                    <div class="task-actions">
                                        <button class="edit-button">✏️</button>
                                        <button class="delete-button">🗑️</button>
                                    </div>
                                </div>
                                <p class="task-description">Fazer a manutenção da máquina de fios, reaprovetar fios existentes.</p>
                                <span class="task-date">18/09/2024</span><br>
                                <span class="task-owner">Gabriel Melz</span>
                            </div>
                            <div class="task-card">
                                <div class="task-header">
                                    <span class="task-title">Manutenção</span>
                                    <div class="task-actions">
                                        <button class="edit-button">✏️</button>
                                        <button class="delete-button">🗑️</button>
                                    </div>
                                </div>
                                <p class="task-description">Fazer a manutenção da máquina de fios, reaprovetar fios existentes.</p>
                                <span class="task-date">18/09/2024</span><br>
                                <span class="task-owner">Gabriel Melz</span>
                            </div>
                        </section>
                    </div>
                </section>
            </main>
        </div>
        <script src="js/script.js"></script>
    </body>
</html>
