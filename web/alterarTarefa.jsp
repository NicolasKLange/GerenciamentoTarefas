<%@page import="entity.Tarefa"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //Função para alterar uma tarefa
            Tarefa t = new Tarefa();

            t.setId_tarefa(Integer.parseInt(request.getParameter("idTarefa")));
            t.setId_tipo_tarefa(Integer.parseInt(request.getParameter("id_tipo_tarefa")));
            t.setId_usuario(Integer.parseInt(request.getParameter("id_usuario")));
            t.setDesc_tarefa(request.getParameter("desc"));
            t.setStatus(request.getParameter("status"));
            t.setData_inicio_tarefa(Date.valueOf(request.getParameter("dataIncio")));
            t.setData_fim_tarefa(Date.valueOf(request.getParameter("DataTermino")));

            if (t.EditarTarefa()) {
                response.sendRedirect("home.jsp");
            }
        %>
    </body>
</html>

