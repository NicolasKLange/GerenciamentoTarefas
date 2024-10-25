<%-- 
    Document   : VerificarUsuario
    Created on : 11 de out. de 2024, 07:50:22
    Author     : kaua_mellato
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
            Usuario u = new Usuario();
            u.setEmail_usuario(request.getParameter("email"));
            u.setSenha_usuario(request.getParameter("senha"));
            
            u.setPegarEmail(request.getParameter("email"));
            u.setPegarSenha(request.getParameter("senha"));

            if (u.verificarUsuario() != null) {
                u = u.verificarUsuario();
                if (u.getAtivacao_usuario() == true) {
                    response.sendRedirect("home.jsp");
                } else {
                    response.sendRedirect("index.html");
                }
            } else {
                response.sendRedirect("index.html");
            }

        %>
    </body>
</html>
