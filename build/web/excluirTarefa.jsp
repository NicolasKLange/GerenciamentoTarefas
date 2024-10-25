<%-- 
    Document   : excluirTarefa
    Created on : 25 de out. de 2024, 12:06:16
    Author     : nicolas_lange
--%>

<%@ page import="entity.Tarefa" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%
    Tarefa tarefa = new Tarefa();
    int idTarefa = Integer.parseInt(request.getParameter("id_tarefa"));
    
    if (tarefa.excluirTarefa(idTarefa)) {
        response.sendRedirect("home.jsp"); // Redireciona de volta à página principal
    } else {
        out.println("Erro ao excluir a tarefa.");
    }
%>

