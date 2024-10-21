<%-- 
    Document   : incluirUsuario
    Created on : 17 de out. de 2024, 07:26:30
    Author     : nicolas_lange
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
        Usuario user = new Usuario();
        
        user.setNome_usuario(request.getParameter("nome"));
        user.setEmail_usuario(request.getParameter("email"));
        user.setSenha_usuario(request.getParameter("senha"));
                user.setAtivacao_usuario(Boolean.valueOf(request.getParameter("ativacao")));
            
        user.setNivel_permissao(request.getParameter("nvpermissao"));
        
        if(user.incluirUsuario()){
        response.sendRedirect("users.jsp");
        }
        
        
        
        %>
    </body>
</html>
