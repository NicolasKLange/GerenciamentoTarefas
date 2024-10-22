
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
                        <button class="add-task-button" id="add-task-button-task">Adicionar Tarefa  +</button>
                        <button class="add-task-button" id="add-type-task-button-task">Adicionar tipo  +</button>
                        <dialog class="Janela-modal-Tarefas">
                            <form action="IncluirTarefas.jsp">

                                <label for="nm">Tipo da tarefa</label>
                                <input type="number" class="nm" name="id_tipo_tarefa" placeholder="">

                                <label for="email">Código do Usuario</label>
                                <input type="text" class="email" name="id_usuario" placeholder="">

                                <label for="password">Descrição da tarefa</label>
                                <input type="text" class="password" name="desc" placeholder="">

                                <label for="atv">Data de inicio</label>
                                <input type="date" class="atv" name="dataIncio" placeholder="" maxlength="8">

                                <label for="atv">Data de termino</label>
                                <input type="date
                                       " class="np" name="DataTermino" placeholder=""  maxlength="8">
                                <input type="submit" value="Adicionar" class="submit">
                                <input type="reset" value="Cancelar" class="submit" onclick="window.location.href = 'home.jsp';">
                            </form>
                        </dialog>
                        
                        <dialog class="Janela-modal-Tipo-Tarefas">
                             <form action="incluirTipotarefa.jsp">
                                
                                <label for="nm"> Tipo da tarefa</label>
                                <input type="text" class="nm" name="tipo_tarefa" placeholder="">
                                <input type="submit" value="Adicionar" class="submit">
                                <input type="reset" value="Cancelar" class="submit" onclick="window.location.href = 'home.jsp';">
                            </form>
                            
                        </dialog>
                        
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
                        <div class="task-card">
                            <div class="task-header">
                                <span class="task-title">Manutenção</span>
                                <div class="task-actions">
                                    <button class="edit-button">✏️</button>
                                    <a href="icons/iconizer-editar.svg"></a>
                                     
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



        <script>

            const buttonTask = document.querySelector("#add-task-button-task");
            const modalTask = document.querySelector(".Janela-modal-Tarefas");

            buttonTask.onclick = function () {

                modalTask.showModal();

            };
            const buttontype = document.querySelector("#add-type-task-button-task");
            const modaltype = document.querySelector(".Janela-modal-Tipo-Tarefas");


            buttontype.onclick = function () {
                modaltype.showModal();
            };
        </script>
        
    </body>
</html>
