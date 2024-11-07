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
            //Função para verificar usuários cadastrado para fazer o login
            Usuario u = new Usuario();
            u.setEmail_usuario(request.getParameter("email"));
            u.setSenha_usuario(request.getParameter("senha"));

            u.setPegarEmail(request.getParameter("email"));
            u.setPegarSenha(request.getParameter("senha"));
            //Verifica se possui usuário cadastrado com o email e senha informados
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
