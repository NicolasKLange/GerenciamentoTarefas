<%@page import="entity.Usuario"%>
<%
    //Fun��o para redefinir a senha do usu�rio
    String vEmail = request.getParameter("email");
    String vSenha = request.getParameter("senha");
    String vConfirmaSenha = request.getParameter("confirmaSenha");

    // Verifica��o se senhas coencidem
    if (vSenha != null && vSenha.equals(vConfirmaSenha)) {
        Usuario usu = new Usuario();
        usu.setEmail_usuario(vEmail);
        usu.setSenha_usuario(vSenha);

        // Func��o para atualizar senha
        boolean sucesso = usu.redefinirSenha();

        if (sucesso) {
            out.println("<script>alert('Senha redefinida com sucesso!');</script>");
            response.sendRedirect("index.html");
        } else {
            out.println("<script>alert('Erro ao redefinir a senha. Verifique o nome de usu�rio.'); history.back();</script>");
        }
    } else {
        // Se  as senhas n�o coencidem
        out.println("<script>alert('As senhas n�o coincidem, coloque as senhas iguais.'); history.back();</script>");
    }
%>