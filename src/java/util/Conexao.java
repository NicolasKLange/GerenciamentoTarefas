/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;


import java.sql.*;


public class Conexao {
    
   public static Connection conectar() throws ClassNotFoundException {
		Connection con = null;
		String url = "jdbc:mysql://localhost:3306/Ocelot";
		String user = "ocelot";
		String password = "oce123";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, user, password);
		} catch (SQLException ex)

		{
			System.out.println("Erro ao conectar com o banco " + ex);

		}
		return con;

	}
    
}
