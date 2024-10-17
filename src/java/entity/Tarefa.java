/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;


import util.Conexao;
import java.sql.*;


public class Tarefa {
    private int id_tarefa;
    private int id_tipo_tarefa;
    private int id_usuario;
    private String desc_tarefa;
    private String  data_inicio_tarefa;
    private String  data_fim_tarefa;
    
    
    public boolean incluirtarefa() throws ClassNotFoundException{
        
        Connection con = Conexao.conectar();
        
        String sql = "insert into tarefas(id_tipo_tarefa,id_usuario,desc_tarefa,data_inicio_tarefa,data_fim_tarefa) values(?,?,?,?,?)";
        
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setInt(1,this.getId_tipo_tarefa());
            stm.setInt(2,this.getId_usuario());
            stm.setString(3, this.getDesc_tarefa());
            stm.setString(4, this.getData_inicio_tarefa());
            stm.setString(5, this.getData_fim_tarefa());
            stm.execute();
        } catch (Exception e) {
            return false;
        }
    return true;
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

    public String getData_inicio_tarefa() {
        return data_inicio_tarefa;
    }

    public void setData_inicio_tarefa(String data_inicio_tarefa) {
        this.data_inicio_tarefa = data_inicio_tarefa;
    }

    public String getData_fim_tarefa() {
        return data_fim_tarefa;
    }

    public void setData_fim_tarefa(String data_fim_tarefa) {
        this.data_fim_tarefa = data_fim_tarefa;
    }
    
}
