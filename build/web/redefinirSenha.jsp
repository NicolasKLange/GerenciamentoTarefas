<%-- 
    Document   : redefinirSenha
    Created on : 19 de set. de 2024, 08:15:27
    Author     : nicolas_lange
--%>

<%@page import="entity.Usuario"%>
<%
    String vEmail = request.getParameter("email");
    String vSenha = request.getParameter("senha");
    String vConfirmaSenha = request.getParameter("confirmaSenha");

    // VERIFICAÇÃO SE AS SENHAS SÃO IGUAIS
    if (vSenha != null && vSenha.equals(vConfirmaSenha)){
        Usuario usu = new Usuario();
        usu.setEmail_usuario(vEmail);
        usu.setSenha_usuario(vSenha);
        
        // FUNÇÃO PARA ATUALIZAR SENHA
        boolean sucesso = usu.redefinirSenha(); 

        if (sucesso) {
            out.println("<script>alert('Senha redefinida com sucesso!');</script>");
            response.sendRedirect("index.html");
        } else {
            out.println("<script>alert('Erro ao redefinir a senha. Verifique o nome de usuário.'); history.back();</script>");
        }
    } else {
        // SE NÃO SÃO IGUAIS
        out.println("<script>alert('As senhas não coincidem, coloque as senhas iguais.'); history.back();</script>");
    }
%>