<%-- 
    Document   : ExcluirTarefa
    Created on : 5 de nov. de 2024, 09:11:08
    Author     : kaua_mellato
--%>

<%@page import="entity.Tarefa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       
       Tarefa t = new Tarefa();
       
       t.setId_tarefa(Integer.parseInt(request.getParameter("excluir")));
       
       if (t.excluirTarefa()) {
               response.sendRedirect("home.jsp");
           }
       
       %>
    </body>
</html>
