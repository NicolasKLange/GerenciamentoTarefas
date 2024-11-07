<%@page import="entity.Usuario"%>
<%
    //Função para redefinir a senha do usuário
    String vEmail = request.getParameter("email");
    String vSenha = request.getParameter("senha");
    String vConfirmaSenha = request.getParameter("confirmaSenha");

    // Verificação se senhas coencidem
    if (vSenha != null && vSenha.equals(vConfirmaSenha)) {
        Usuario usu = new Usuario();
        usu.setEmail_usuario(vEmail);
        usu.setSenha_usuario(vSenha);

        // Funcção para atualizar senha
        boolean sucesso = usu.redefinirSenha();

        if (sucesso) {
            out.println("<script>alert('Senha redefinida com sucesso!');</script>");
            response.sendRedirect("index.html");
        } else {
            out.println("<script>alert('Erro ao redefinir a senha. Verifique o nome de usuário.'); history.back();</script>");
        }
    } else {
        // Se  as senhas não coencidem
        out.println("<script>alert('As senhas não coincidem, coloque as senhas iguais.'); history.back();</script>");
    }
%>