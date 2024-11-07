<%@page import="entity.TipoTarefa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //Função para incluir tipo de tarefa
            TipoTarefa tp = new TipoTarefa();

            tp.setTipo_tarefa(request.getParameter("tipo_tarefa"));
            if (tp.incluirTipoTarefa()) {
                response.sendRedirect("home.jsp");
            }
        %>
    </body>
</html>
