package br.csi.dao;

import br.csi.model.Endereco;
import br.csi.model.Produto;
import br.csi.model.Usuario;

import java.sql.*;
import java.util.ArrayList;

public class Endereco_DAO {
    public boolean create(Endereco endereco){
        try(Connection conn = new ConectaDB_Postgres().getConexao()){

            String sql = "INSERT INTO endereco (id_usu, cep, numero, estado, bairro, destinatario, status, cidade, complemento, logradouro)" + "VALUES (?,?,?,?,?,?,?,?,?,?)";
//            String sql2 = "update endereco set status = null  where  id_usu = ? and id_end = ? and id_end != (select max(id_end) from endereco)";

            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, endereco.getId_usu());
            pre.setString(2,endereco.getCep());
            pre.setInt(3,endereco.getNumero());
            pre.setString(4,endereco.getEstado());
            pre.setString(5,endereco.getBairro());
            pre.setString(6,endereco.getDestinatario());
            pre.setString(7,endereco.getStatus());
            pre.setString(8,endereco.getCidade());
            pre.setString(9,endereco.getComplemento());
            pre.setString(10,endereco.getLogradouro());

//            if(endereco.getStatus() == "principal"){
//                pre = conn.prepareStatement(sql2);
//                pre.setInt(1, (endereco.getId_usu()));
//                pre.setInt(2, (endereco.getId_end()));
//            }

            if(pre.executeUpdate() > 0){
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean create2(Endereco endereco){
        try(Connection conn = new ConectaDB_Postgres().getConexao()){

            //String sql = "INSERT INTO endereco (id_usu, cep, numero, estado, bairro, destinatario, status, cidade, complemento, logradouro)" + "VALUES (?,?,?,?,?,?,?,?,?,?)";
            String sql2 = "update endereco set status = null  where  id_usu = ? and id_end != (select max(id_end) from endereco)";

            PreparedStatement pre = conn.prepareStatement(sql2);
            pre.setInt(1, endereco.getId_usu());


            if(pre.executeUpdate() > 0){
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean update2(Endereco endereco){
        try(Connection conn = new ConectaDB_Postgres().getConexao()){

            String sql = "update endereco \n" +
                    "set status = null";

            PreparedStatement pre = conn.prepareStatement(sql);

            if(pre.executeUpdate() > 0){
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean update3(Endereco endereco){
        try(Connection conn = new ConectaDB_Postgres().getConexao()){

            String sql = "update endereco \n" +
                    "set status = 'principal'\n" +
                    "where  id_end = ?";

            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, endereco.getId_end());

            if(pre.executeUpdate() > 0){
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public Endereco read(int id)
    {
        try(Connection conn = new ConectaDB_Postgres().getConexao())
        {
            String sql = "SELECT * FROM endereco "+"WHERE id_end = ?";
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, id);
            ResultSet rs = pre.executeQuery();
            while(rs.next())
            {
                Endereco e = new Endereco();
                e.setId_end (rs.getInt("id_end"));
                e.setId_usu(rs.getInt("id_usu"));
                e.setCep(rs.getString("cep"));
                e.setNumero(rs.getInt("numero"));
                e.setEstado(rs.getString("estado"));
                e.setBairro(rs.getString("bairro"));
                e.setDestinatario(rs.getString("destinatario"));
                e.setStatus(rs.getString("status"));
                e.setCidade(rs.getString("cidade"));
                e.setComplemento(rs.getString("complemento"));
                e.setLogradouro(rs.getString("logradouro"));
                return e;
            }
        }catch(SQLException ex)
        {
            ex.printStackTrace();
        }
        return null;
    }



    public boolean update(Endereco e) throws SQLException {

        ConectaDB_Postgres db = new ConectaDB_Postgres();
        Statement stmt = db.getConexao().createStatement();
        db.getConexao();
        int retorno = stmt.executeUpdate("update endereco set id_usu='" + e.getId_usu() + "',cep='" + e.getCep() + "',numero='" + e.getNumero() + "',estado='" + e.getEstado()+"',bairro = '"+e.getBairro() + "',destinatario = '"+e.getDestinatario()+ "',status = '" +e.getStatus()+ "',complemento = '" +e.getComplemento()+" ',logradouro = '"+ e.getLogradouro()+"' where id_end = '" + e.getId_end()+ "'");

        if(retorno > 0){
            return true;
        }
        else {
            return false;
        }
    }



    public boolean deletar(Endereco e) throws SQLException, Exception{
        boolean deletar=false;
        ConectaDB_Postgres db = new ConectaDB_Postgres();
        try {
            Statement stmt = db.getConexao().createStatement();
            ResultSet valor = stmt.executeQuery("delete from endereco where id_end = ('" +e.getId_end()+ "')");
            deletar = valor.next();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return deletar;
    }

    public ArrayList<Endereco> getEnderecos()
    {
        ArrayList<Endereco> enderecos = new ArrayList<>();
        try(Connection conn = new ConectaDB_Postgres().getConexao())
        {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM endereco");
            while(rs.next())
            {
                Endereco e = new Endereco();
                e.setId_end (rs.getInt("id_end"));
                e.setId_usu(rs.getInt("id_usu"));
                e.setCep(rs.getString("cep"));
                e.setNumero(rs.getInt("numero"));
                e.setEstado(rs.getString("estado"));
                e.setBairro(rs.getString("bairro"));
                e.setDestinatario(rs.getString("destinatario"));
                e.setStatus(rs.getString("status"));
                e.setCidade(rs.getString("cidade"));
                e.setComplemento(rs.getString("complemento"));
                e.setLogradouro(rs.getString("logradouro"));
                enderecos.add(e);
            }
        }catch(SQLException ex)
        {
            ex.printStackTrace();
        }
        return enderecos;
    }


    public static Endereco PesquisaEnd(Integer codigo) throws SQLException, Exception{
        Endereco e = new Endereco();
        ConectaDB_Postgres db = new ConectaDB_Postgres();
        try {
            PreparedStatement stmt = db.getConexao().prepareStatement("select * from endereco where id_usu= '" + codigo + "'");
            ResultSet res = stmt.executeQuery();
            while(res.next()){
                e.setId_end (res.getInt("id_end"));
                e.setId_usu(res.getInt("id_usu"));
                e.setCep(res.getString("cep"));
                e.setNumero(res.getInt("numero"));
                e.setEstado(res.getString("estado"));
                e.setBairro(res.getString("bairro"));
                e.setDestinatario(res.getString("destinatario"));
                e.setStatus(res.getString("status"));
                e.setCidade(res.getString("cidade"));
                e.setComplemento(res.getString("complemento"));
                e.setLogradouro(res.getString("logradouro"));

            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return e;
    }

    public Produto SearchProd(Integer codigo) throws SQLException, Exception{
        Produto p = new Produto();
        ConectaDB_Postgres db = new ConectaDB_Postgres();
        try {
            PreparedStatement stmt = db.getConexao().prepareStatement("select * from produto where codigo= '" + codigo + "'");
            ResultSet res = stmt.executeQuery();
            while(res.next()){
                p.setCodigo (res.getInt("codigo"));
                p.setNome(res.getString("nome"));
                p.setStatus(res.getString("status"));
                p.setValor(res.getFloat("valor"));
                p.setMarca(res.getString("marca"));
                p.setModelo(res.getString("modelo"));
                p.setDescricao(res.getString("descricao"));
                p.setTipo(res.getString("tipo"));
                p.setConservacao(res.getString("conservacao"));

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return p;
    }

    public ArrayList<Endereco> getEndereco()
    {
        ArrayList<Endereco> enderecos = new ArrayList<>();
        try(Connection conn = new ConectaDB_Postgres().getConexao())
        {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM endereco where status = 'principal'");
            while(rs.next())
            {
                Endereco e = new Endereco();
                e.setId_end (rs.getInt("id_end"));
                e.setId_usu(rs.getInt("id_usu"));
                e.setCep(rs.getString("cep"));
                e.setNumero(rs.getInt("numero"));
                e.setEstado(rs.getString("estado"));
                e.setBairro(rs.getString("bairro"));
                e.setDestinatario(rs.getString("destinatario"));
                e.setStatus(rs.getString("status"));
                e.setCidade(rs.getString("cidade"));
                e.setComplemento(rs.getString("complemento"));
                e.setLogradouro(rs.getString("logradouro"));
                enderecos.add(e);
            }
        }catch(SQLException ex)
        {
            ex.printStackTrace();
        }
        return enderecos;
    }
}
