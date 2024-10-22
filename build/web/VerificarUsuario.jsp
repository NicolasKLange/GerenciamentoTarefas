<%-- 
    Document   : VerificarUsuario
    Created on : 11 de out. de 2024, 07:50:22
    Author     : kaua_mellato
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, entity.Usuario"%>
<%@ page import="util.Conexao"%>
<%@page import="entity.Usuario"%>

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
       
      if (u.verificarUsuario() != null) {
              response.sendRedirect("home.jsp");
          }else{
              response.sendRedirect("index.html");
           }      
%>

    </body>
</html>
