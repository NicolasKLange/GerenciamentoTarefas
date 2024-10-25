

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
        
        Usuario user = new  Usuario();
        
        user.setId_usuario(Integer.parseInt(request.getParameter("id")));
        
        if (user.excluirUsuario()) {
               response.sendRedirect("users.jsp");
            }
        
        %>
    </body>
</html>
