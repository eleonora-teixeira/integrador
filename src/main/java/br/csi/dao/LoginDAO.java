package br.csi.dao;

import br.csi.model.Usuario;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDAO {
    public Usuario autenticar(String login, String senha) throws ClassNotFoundException, SQLException  {
        Connection conn = new ConectaDB_Postgres().getConexao();
        String sql = "SELECT * FROM usuario where email =? and senha=?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        Usuario u = null;

        stmt.setString(1, login);
//        stmt.setString(2, criptografa.criptografa(senha));
        stmt.setString(2, senha);
        ResultSet rs = stmt.executeQuery();
        while (rs.next()) {
            u = new Usuario();
            u.setNome(rs.getString("nome"));
            u.setEmail(rs.getString("email"));
            u.setTelefone(rs.getString("telefone"));
            u.setSenha(rs.getString("senha"));
            u.setPermissao(rs.getInt("permissao"));
            u.setId(rs.getInt("id_usu"));
        }

        return u;

    }
    public Usuario busca(String login){
        Usuario u = new Usuario();
        try(Connection conn = new ConectaDB_Postgres().getConexao()){
            String sql = "SELECT * FROM usuario "+"WHERE email = ?";
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, login);
            ResultSet rs = pre.executeQuery();
            while(rs.next()){
                u.setEmail(rs.getString("email"));
                System.out.println("Email no red: "+u.getEmail());
                u.setPermissao(rs.getInt("permissao"));
                System.out.println("Permissao no red: "+u.getPermissao());
                u.setNome(rs.getString("nome"));
                System.out.println("Nome no red: "+u.getNome());
                u.setTelefone(rs.getString("telefone"));
                System.out.println("Telefone no red: "+u.getTelefone());
                u.setId(rs.getInt("id_usu"));
                System.out.println("Id no red: "+u.getId());
                u.setSenha(rs.getString("senha"));
                System.out.println("Senha no red: "+u.getSenha());
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return u;
    }
}
