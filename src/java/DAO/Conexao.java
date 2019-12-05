package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
    public Connection getConexao(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/dbdproject?useSSL=true&serverTimezone=UTC","root","");
        }catch(ClassNotFoundException | SQLException e){
            throw new RuntimeException("Erro na hora de conectar o banco! "+e);
        } 
    } 
}