package entity;
import  java.sql.*;
import util.Conexao;

public class TipoTarefa {

    
    private  int  id_tipo_tarefa;
    private String tipo_tarefa;
    
    
    public boolean  incluirTipoTarefa() throws ClassNotFoundException{
    
    Connection con = Conexao.conectar();
    
    String sql = "INSERT INTO tipo_tarefa(tipo_tarefa) VALUES (?)";
    
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, this.getTipo_tarefa());
            stm.execute();
        } catch (SQLException e) {
            System.out.println("Não deu certo"+e);
        }
        
        try {
            con.close();
        } catch (SQLException e) {
        }
        
        
    return  true;
    } 
    public int getId_tipo_tarefa() {
        return id_tipo_tarefa;
    }

    public void setId_tipo_tarefa(int id_tipo_tarefa) {
        this.id_tipo_tarefa = id_tipo_tarefa;
    }

    public String getTipo_tarefa() {
        return tipo_tarefa;
    }

    public void setTipo_tarefa(String tipo_tarefa) {
        this.tipo_tarefa = tipo_tarefa;
    }
}
    
    