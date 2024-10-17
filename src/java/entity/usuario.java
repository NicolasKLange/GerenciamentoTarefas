
package entity;

import  java.sql.*;
import util.Conexao;


public class usuario {
   private int id_usuario;
   private String nome_usuario ;
   private String  email_usuario;
   private String senha_usuario;
   private boolean ativacao_usuario;
   private String nivel_permissao;
   
  
   
   
   
   
   
   
   public usuario verificarUsuario() throws ClassNotFoundException{
       
       

       Connection con = Conexao.conectar();
      
       usuario user = null;
   
       String sql = "SELECT email_usuario , senha_usuario , nivel_permissao from usuario where email_usuario = ? and senha_usuario = ? ";
       
       
       try {
           
            
           PreparedStatement stm = con.prepareStatement(sql);
           stm.setString(1, this.getEmail_usuario());
           stm.setString(2, this.getSenha_usuario());
           ResultSet rs = stm.executeQuery();
           if (rs.next()) {
               user = new usuario();
               
               user.setEmail_usuario(rs.getString("email_usuario"));
               user.setSenha_usuario(rs.getString("senha_usuario"));
               user.setNivel_permissao(rs.getString("nivel_permissao"));
           }
       } catch (Exception e) {
          return null; 
       }
   
         return user;
         
        
   }
   
   public boolean incluirUsuario() throws ClassNotFoundException{
   
       Connection con = Conexao.conectar();
       
       String sql = "insert into usuario(nome_usuario,email_usuario,senha_usuario,ativacao_usuario,nivel_permissao) values(?,?,?,?,?)";
       
       try {
        
            
           
           PreparedStatement stm = con.prepareStatement(sql);
           stm.setString(1, this.getNome_usuario());
           stm.setString(2, this.getEmail_usuario());
           stm.setString(3, this.getSenha_usuario());
           stm.setBoolean(4, this.getAtivacao_usuario());
           stm.setString(5 ,this.getNivel_permissao());
           stm.execute();
           
       } catch (Exception e) {
           return false;
       }
       
       return true;
       
   }

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





}
