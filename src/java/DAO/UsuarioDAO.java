package DAO;
import MODEL.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsuarioDAO {
    private final Connection conn;
    private PreparedStatement stmt;
    private ResultSet rs;
    
    public UsuarioDAO(){
        conn = new Conexao().getConexao();
    }
    
    public boolean inserir(String nome, String email, String senha ){
        try {
            stmt = conn.prepareStatement("SELECT email_usuario FROM usuario WHERE email_usuario = ?");
            stmt.setString(1, email);
            rs = stmt.executeQuery();
            if (rs.next()) {
                return false;
            }else {
                stmt = conn.prepareStatement("INSERT INTO usuario(nome_usuario, email_usuario, senha_usuario) VALUES(?,?,?)");
                stmt.setString(1, nome);
                stmt.setString(2, email);
                stmt.setString(3, senha);
                stmt.executeUpdate();
                return true;
            }
        } catch (SQLException e) {
            throw new RuntimeException("ERRO UsuarioDAO(inserir)"+ e);
        }
    }
    
    public Usuario login(String email, String senha){
        try{
            stmt = conn.prepareStatement("SELECT id_usuario, nome_usuario,email_usuario, senha_usuario FROM usuario WHERE email_usuario=? AND senha_usuario=?;");
            stmt.setString(1, email);
            stmt.setString(2, senha);
            rs = stmt.executeQuery();
            if(rs.next()){
                Usuario usu = new Usuario();
                usu.setId_usuario(rs.getInt("id_usuario"));
                usu.setNome_usuario(rs.getString("nome_usuario"));
                return usu;
            }
            rs.close();
        }catch(SQLException e){
            throw new RuntimeException("ERRO (UsuarioDAO(login) "+ e);
        }
        return null;
    }  
    
    public String apagar(int id){
        try {
            stmt = conn.prepareStatement("DELETE FROM usuario WHERE id_usuario = ?");
            stmt.setInt(1, id);
            stmt.execute();
            stmt.close();
        } catch (Exception e) {
            throw new RuntimeException("ERRO (UsuarioDAO(apagar) "+ e);
        }
        return "true";
    }
    
    public String alterar(int id, String nome, String email){
        try {
            stmt = conn.prepareStatement("UPDATE usuario SET nome_usuario = ?, email_usuario= ? WHERE id_usuario = ?");
            stmt.setString(1, nome);
            stmt.setString(2, email);
            stmt.setInt(3, id);
            stmt.execute();
            stmt.close();
        } catch (Exception e) {
            throw new RuntimeException("ERRO (UsuarioDAO(Alterar) " + e);
        }
       return "true";
    }
    
    public Usuario buscar(int id){
         Usuario usu = new Usuario();
        try {
            stmt = conn.prepareStatement("SELECT id_usuario, nome_usuario, email_usuario FROM usuario WHERE id_usuario = ?");
            stmt.setInt(1, id);
            rs = stmt.executeQuery();
            if (rs.next()) {
                usu.setId_usuario(rs.getInt("id_usuario"));
                usu.setNome_usuario(rs.getString("nome_usuario"));
                usu.setEmail_usuario(rs.getString("email_usuario"));
            }
            rs.close();
        } catch (Exception e) {
            throw new RuntimeException("ERRO (UsuarioDAO(Buscar) " + e);
        }
        return usu;
    }
}
