package br.csi.dao;

import br.csi.model.Usuario;

import java.sql.*;
import java.util.ArrayList;

public class Usuario_DAO {
    public boolean create(Usuario usuario)
    {
        try(Connection conn = new ConectaDB_Postgres().getConexao()){
            String sql = "INSERT INTO usuario(nome,email,senha,permissao)"+"VALUES (?,?,?,?)";
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, usuario.getNome());
            pre.setString(2, usuario.getEmail());
            pre.setString(3, usuario.getSenha());
            pre.setInt(4, usuario.getPermissao());
            if(pre.executeUpdate() > 0){
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean delete(Usuario u) throws SQLException, Exception{
        boolean deletar=true;
        ConectaDB_Postgres db = new ConectaDB_Postgres();
        try {
            Statement stmt = db.getConexao().createStatement();
            ResultSet valor = stmt.executeQuery("delete from usuario where id_usu = ('" +u.getId()+ "')");
            deletar = valor.next();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return deletar;
    }
    public Usuario read(int id){

        try(Connection conn = new ConectaDB_Postgres().getConexao()){
            String sql = "SELECT * FROM usuario WHERE id = ?";
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, id);
            ResultSet rs = pre.executeQuery();
            while(rs.next()){
                Usuario u = new Usuario();
                u.setId(rs.getInt("id"));
                System.out.println("ID no DAO: "+u.getId());
                u.setNome(rs.getString("nome"));
                u.setEmail(rs.getString("email"));
                u.setTelefone(rs.getString("telefone"));
                u.setSenha(rs.getString("senha"));
                u.setPermissao(rs.getInt("permissao"));
                return u;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean Update(Usuario usuario) throws SQLException {

        ConectaDB_Postgres db = new ConectaDB_Postgres();
        Statement stmt = db.getConexao().createStatement();
        db.getConexao();
        System.out.println("update usuario set nome='"+usuario.getNome()+"' , email = '"+usuario.getEmail()+"', telefone = '"+usuario.getTelefone()+"', senha = '"+usuario.getSenha()+"' where id_usu = '"+usuario.getId()+"'");
        int retorno = stmt.executeUpdate("update usuario set nome='"+usuario.getNome()+"' , email = '"+usuario.getEmail()+"', telefone = '"+usuario.getTelefone()+"', senha = '"+usuario.getSenha()+"' where id_usu = '"+usuario.getId()+"'");

        if(retorno > 0){
            return true;
        }
        else {
            return false;
        }
    }

    public ArrayList<Usuario> getUsuarios(){

        ArrayList<Usuario> usuarios = new ArrayList<>();
        try(Connection conn = new ConectaDB_Postgres().getConexao()){
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM usuario");
            while(rs.next()){
                Usuario u = new Usuario();
                u.setId(rs.getInt("id"));
                u.setNome(rs.getString("nome"));
                u.setEmail(rs.getString("email"));
                u.setSenha(rs.getString("senha"));
                u.setTelefone(rs.getString("telefone"));

                usuarios.add(u);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return usuarios;
    }
}
