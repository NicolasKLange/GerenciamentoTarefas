/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;


import util.Conexao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class Tarefa {
    private int id_tarefa;
    private int id_tipo_tarefa;
    private String nome_usuario;
    private String tipo_tarefa;
    private String status;
    private int id_usuario;
    private String desc_tarefa;
    private Date  data_inicio_tarefa;
    private Date  data_fim_tarefa;
    
    
    public boolean incluirtarefa() throws ClassNotFoundException{
        
        Connection con = Conexao.conectar();
        
        String sql = "insert into tarefas( id_tipo_tarefa, id_usuario, desc_tarefa , data_inicio_tarefa , data_fim_tarefa) values( ? , ? , ? , ? , ?)";
        
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setInt(1,this.getId_tipo_tarefa());
            stm.setInt(2,this.getId_usuario());
            stm.setString(3, this.getDesc_tarefa());
            stm.setDate(4, this.getData_inicio_tarefa());
            stm.setDate(5, this.getData_fim_tarefa());
            stm.execute();
        } catch (Exception e) {
            return false;
        }
    return true;
    }
    
     public List<Tarefa> listarTarefas() throws ClassNotFoundException{
    
        List<Tarefa> ListTarefa = new ArrayList<>();
        Connection con = Conexao.conectar(); 
        String sql = "SELECT t.id_tarefa , tp.tipo_tarefa , t.status_tarefa ,u.nome_usuario , t.desc_tarefa , t.data_inicio_tarefa , t.data_fim_tarefa FROM tarefas t INNER JOIN tipo_tarefa tp ON t.id_tipo_tarefa = tp.id_tipo_tarefa  INNER JOIN usuario u on t.id_usuario = u.id_usuario order by t.data_fim_tarefa ";
         try {
            PreparedStatement stm = con.prepareStatement(sql); 
            ResultSet rs = stm.executeQuery(); 
            while (rs.next()) {                 
                 Tarefa t = new Tarefa();
                 t.setId_tarefa(rs.getInt("t.id_tarefa"));
                 t.setTipo_tarefa(rs.getString("tp.tipo_tarefa"));
                 t.setStatus(rs.getString("t.status_tarefa"));
                 t.setNome_usuario(rs.getString("u.nome_usuario"));
                 t.setDesc_tarefa(rs.getString("t.desc_tarefa"));
                 t.setData_inicio_tarefa(rs.getDate("t.data_inicio_tarefa"));
                 t.setData_fim_tarefa(rs.getDate("t.data_fim_tarefa"));
                 
                 
                 ListTarefa.add(t);
             }
        } catch (SQLException e) {   
        } 
       return ListTarefa;
    }

    public int getId_tarefa() {
        return id_tarefa;
    }

    public void setId_tarefa(int id_tarefa) {
        this.id_tarefa = id_tarefa;
    }

    public int getId_tipo_tarefa() {
        return id_tipo_tarefa;
    }

    public void setId_tipo_tarefa(int id_tipo_tarefa) {
        this.id_tipo_tarefa = id_tipo_tarefa;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getDesc_tarefa() {
        return desc_tarefa;
    }

    public void setDesc_tarefa(String desc_tarefa) {
        this.desc_tarefa = desc_tarefa;
    }

    public Date getData_inicio_tarefa() {
        return data_inicio_tarefa;
    }

    public void setData_inicio_tarefa(Date data_inicio_tarefa) {
        this.data_inicio_tarefa = data_inicio_tarefa;
    }

    public Date getData_fim_tarefa() {
        return data_fim_tarefa;
    }

    public void setData_fim_tarefa(Date data_fim_tarefa) {
        this.data_fim_tarefa = data_fim_tarefa;
    }

    public String getTipo_tarefa() {
        return tipo_tarefa;
    }

    public void setTipo_tarefa(String tipo_tarefa) {
        this.tipo_tarefa = tipo_tarefa;
    }

    public String getNome_usuario() {
        return nome_usuario;
    }

    public void setNome_usuario(String nome_usuario) {
        this.nome_usuario = nome_usuario;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    
   
    
    
}
