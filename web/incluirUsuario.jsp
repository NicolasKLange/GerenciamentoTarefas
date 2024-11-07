<%-- 
    Document   : incluirUsuario
    Created on : 12 de out. de 2024, 18:23:37
    Author     : mella
--%>

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
            //Função para incluir novo usuário no sistema
            Usuario user = new Usuario();

            user.setNome_usuario(request.getParameter("nome"));
            user.setEmail_usuario(request.getParameter("email"));
            user.setSenha_usuario(request.getParameter("senha"));
            user.setAtivacao_usuario(Boolean.valueOf(request.getParameter("ativacao")));

            user.setNivel_permissao(request.getParameter("nvpermissao"));
            if (user.incluirUsuario()) {
                response.sendRedirect("users.jsp");
            }
        %>
    </body>
</html>
