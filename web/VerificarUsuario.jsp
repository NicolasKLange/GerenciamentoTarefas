<%-- 
    Document   : VerificarUsuario
    Created on : 11 de out. de 2024, 07:50:22
    Author     : kaua_mellato
--%>

<%@page import="entity.usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       
       usuario u = new usuario();
       
       u.setEmail_usuario(request.getParameter("email"));
       u.setSenha_usuario(request.getParameter("senha"));
       
      if (u.verificarUsuario() != null) {
              response.sendRedirect("homeAdmin.jsp");
          }else{
              response.sendRedirect("index.html");
           }
       
       
       %>
    </body>
</html>
