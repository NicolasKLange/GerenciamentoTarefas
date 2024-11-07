package entity;

import java.sql.*;
import java.util.*;
import util.Conexao;

public class Usuario {

    private int id_usuario;
    private String nome_usuario;
    private String email_usuario;
    private String senha_usuario;
    private boolean ativacao_usuario;
    private String nivel_permissao;
    private static String pegarEmail;
    private static String pegarSenha;

    //Função para verificar usuário cadastrado
    public Usuario verificarUsuario() throws ClassNotFoundException {
        Connection con = Conexao.conectar();
        Usuario user = null;
        String sql = "SELECT email_usuario , senha_usuario ,ativacao_usuario, nivel_permissao from usuario where email_usuario = ? and senha_usuario = ? ";
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, this.getEmail_usuario());
            stm.setString(2, this.getSenha_usuario());
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                user = new Usuario();
                user.setEmail_usuario(rs.getString("email_usuario"));
                user.setSenha_usuario(rs.getString("senha_usuario"));
                user.setNivel_permissao(rs.getString("nivel_permissao"));
                user.setAtivacao_usuario(rs.getBoolean("ativacao_usuario"));
            }
        } catch (SQLException e) {
            System.out.println("Problema na autenticação do usuário");
        }
        try {
            con.close();
        } catch (SQLException e) {
        }
        return user;
    }

    // Resgatando o nivel de permissão do usuário
    public Usuario buscaNivelUsuario() throws ClassNotFoundException {
        Connection con = Conexao.conectar();
        Usuario user = null;
        String sql = "SELECT  nivel_permissao from usuario where email_usuario = ? and senha_usuario = ? ";
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, this.getEmail_usuario());
            stm.setString(2, this.getSenha_usuario());
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                user = new Usuario();
                user.setNivel_permissao(rs.getString("nivel_permissao"));
            }
        } catch (SQLException e) {
            System.out.println("Problema na autenticação do usuário");
        }
        try {
            con.close();
        } catch (SQLException e) {
        }
        return user;
    }
    
    //Função para incluir usuário
    public boolean incluirUsuario() throws ClassNotFoundException {
        Connection con = Conexao.conectar();
        String sql = "insert into usuario(nome_usuario,email_usuario,senha_usuario,ativacao_usuario,nivel_permissao) values(?,?,?,?,?)";
        try {

            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, this.getNome_usuario());
            stm.setString(2, this.getEmail_usuario());
            stm.setString(3, this.getSenha_usuario());
            stm.setBoolean(4, this.getAtivacao_usuario());
            stm.setString(5, this.getNivel_permissao());
            stm.execute();
        } catch (Exception e) {
            return false;
        }
        return true;
    }
    
    //Função para listar usuários
    public List<Usuario> listarUsuario() throws ClassNotFoundException {
        List<Usuario> Listuser = new ArrayList<>();
        Connection con = Conexao.conectar();
        String sql = "SELECT id_usuario , nome_usuario , email_usuario, ativacao_usuario , nivel_permissao FROM usuario";
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Usuario u = new Usuario();
                u.setId_usuario(rs.getInt("id_usuario"));
                u.setNome_usuario(rs.getString("nome_usuario"));
                u.setEmail_usuario(rs.getString("email_usuario"));
                u.setAtivacao_usuario(rs.getBoolean("ativacao_usuario"));
                u.setNivel_permissao(rs.getString("nivel_permissao"));
                Listuser.add(u);
            }
        } catch (SQLException e) {
        }
        return Listuser;
    }
    
    //Função para excluir usuário
    public boolean excluirUsuario() throws ClassNotFoundException {
        Connection con = Conexao.conectar();
        String sql = "delete from usuario where id_usuario = ?";
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setInt(1, this.getId_usuario());
            stm.execute();
        } catch (Exception e) {
        }
        return true;
    }
    
    //Função para redefinir senha
    public boolean redefinirSenha() throws ClassNotFoundException, SQLException {
        String sql = "UPDATE usuario SET senha_usuario = ? WHERE email_usuario = ?";
        Connection con = Conexao.conectar();
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, this.getSenha_usuario());
            stm.setString(2, this.getEmail_usuario());
            
            int update = stm.executeUpdate();
            
            return update > 0;
        } catch (SQLException e) {
            System.out.println("Erro ao redefinir senha: " + e.getMessage());
            return false;
        }
    }

    //Área de getters e setters
    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getNome_usuario() {
        return nome_usuario;
    }

    public void setNome_usuario(String nome_usuario) {
        this.nome_usuario = nome_usuario;
    }

    public String getEmail_usuario() {
        return email_usuario;
    }

    public void setEmail_usuario(String email_usuario) {
        this.email_usuario = email_usuario;
    }

    public String getSenha_usuario() {
        return senha_usuario;
    }

    public void setSenha_usuario(String senha_usuario) {
        this.senha_usuario = senha_usuario;
    }

    public boolean getAtivacao_usuario() {
        return ativacao_usuario;
    }

    public void setAtivacao_usuario(boolean ativacao_usuario) {
        this.ativacao_usuario = ativacao_usuario;
    }

    public String getNivel_permissao() {
        return nivel_permissao;
    }

    public void setNivel_permissao(String nivel_permissao) {
        this.nivel_permissao = nivel_permissao;
    }

    public static String getPegarEmail() {
        return pegarEmail;
    }

    public static void setPegarEmail(String pegarEmail) {
        Usuario.pegarEmail = pegarEmail;
    }

    public static String getPegarSenha() {
        return pegarSenha;
    }

    public static void setPegarSenha(String pegarSenha) {
        Usuario.pegarSenha = pegarSenha;
    }
}
