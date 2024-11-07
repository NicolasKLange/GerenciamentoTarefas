<%@page import="entity.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //Função para excluir usuário
            Usuario user = new Usuario();

            user.setId_usuario(Integer.parseInt(request.getParameter("id_tarefa")));
            if (user.excluirUsuario()) {
                response.sendRedirect("home.jsp");
            }
        %>
    </body>
</html>
