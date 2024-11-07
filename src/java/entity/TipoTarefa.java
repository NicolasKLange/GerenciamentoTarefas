
package entity;
import com.mysql.cj.protocol.Resultset;
import  java.sql.*;
import java.util.*;
import util.Conexao;

public class TipoTarefa {
    private  int  id_tipo_tarefa;
    private  String tipo_tarefa;
    
    //Função para incluir tipo de tarefa
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
    
    //Função para listar tipo tarefa no modal
    public List<TipoTarefa> adicionarTipo() throws ClassNotFoundException{
    Connection con = Conexao.conectar();
    List<TipoTarefa> listTipo = new ArrayList<>();
    String sql = "SELECT id_tipo_tarefa , tipo_tarefa FROM tipo_tarefa";
        try {
            PreparedStatement stm = con.prepareStatement(sql); 
            ResultSet rs = stm.executeQuery(); 
            while (rs.next()) {                
               TipoTarefa tt = new TipoTarefa();
               
               tt.setId_tipo_tarefa(rs.getInt("id_tipo_tarefa"));
               tt.setTipo_tarefa(rs.getString("tipo_tarefa"));
               
               listTipo.add(tt);
            }  
        } catch (SQLException e) {
        }
        return  listTipo;
    } 
    
    //Área de getters e setters
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
