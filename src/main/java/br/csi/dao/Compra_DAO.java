package br.csi.dao;

import br.csi.model.Carrinho;
import br.csi.model.Compra;
import br.csi.model.Produto;

import java.sql.*;
import java.util.ArrayList;

public class Compra_DAO {

    public boolean create(Compra compra){
        try(Connection conn = new ConectaDB_Postgres().getConexao()){

            String sql = "INSERT INTO compra (status_compra, total, id_usu, id_end, id_prod) VALUES (?,?,?,?,?)";
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1,compra.getStatus());
            pre.setFloat(2,compra.getTotal());
            pre.setInt(3,compra.getId_usu());
            pre.setInt(4,compra.getId_end());
            pre.setInt(5,compra.getId_prod());

            if(pre.executeUpdate() > 0){
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public ArrayList<Compra> getCompras(int id)
    {
        ArrayList<Compra> pedidos = new ArrayList<>();
        try(Connection conn = new ConectaDB_Postgres().getConexao())
        {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM compra where id_usu = '" + id + "' order by id_compra desc");
            while(rs.next())
            {
                Compra pedido = new Compra();
                pedido.setStatus(rs.getString("status_compra"));
                pedido.setId_compra(rs.getInt("id_compra"));
                pedido.setTotal(rs.getFloat("total"));
                pedido.setId_prod(rs.getInt("id_prod"));
                pedidos.add(pedido);
            }
        }catch(SQLException ex)
        {
            ex.printStackTrace();
        }
        return pedidos;
    }

    public static Compra PesquisaCompra(Integer codigo) throws SQLException, Exception{
        Compra p = new Compra();
        ConectaDB_Postgres db = new ConectaDB_Postgres();
        try {
            PreparedStatement stmt = db.getConexao().prepareStatement("select * from compra where id_usu= '" + codigo + "'");
            ResultSet res = stmt.executeQuery();
            while(res.next()){
                p.setStatus(res.getString("status_compra"));
                p.setId_compra(res.getInt("id_compra"));
                p.setTotal(res.getFloat("total"));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return p;
    }

    public boolean deletar(Compra c) throws SQLException, Exception{
        boolean deletar=false;
        ConectaDB_Postgres db = new ConectaDB_Postgres();
        System.out.println("Delete DAO ID: "+c.getId_usu());
        try {
            Statement stmt = db.getConexao().createStatement();
            ResultSet valor = stmt.executeQuery("delete from cart where id_usu = ('" +c.getId_usu()+ "')");
            deletar = valor.next();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return deletar;
    }

    public boolean alteraStatus(Compra c) throws SQLException, Exception{
        boolean deletar=false;
        ConectaDB_Postgres db = new ConectaDB_Postgres();
        System.out.println("Update DAO ID: "+c.getId_usu());
        try {
            Statement stmt = db.getConexao().createStatement();
            ResultSet valor = stmt.executeQuery("UPDATE produto SET status = 'i' FROM usuario, cart WHERE produto.codigo = cart.id_prod and cart.id_usu = usuario.id_usu and usuario.id_usu = ('"+c.getId_usu()+"')");
            deletar = valor.next();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return deletar;
    }

    public boolean deletarCompra(Compra c) throws SQLException, Exception{
        boolean deletar=false;
        ConectaDB_Postgres db = new ConectaDB_Postgres();
        try {
            Statement stmt = db.getConexao().createStatement();
            ResultSet valor = stmt.executeQuery("delete from compra where status_compra = 'Em aberto' and id_compra = '" +c.getId_compra()+ "'");
            deletar = valor.next();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return deletar;
    }

    public ArrayList<Compra> getPedidos()
    {
        ArrayList<Compra> pedidos = new ArrayList<>();
        try(Connection conn = new ConectaDB_Postgres().getConexao())
        {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select * from compra order by id_compra asc");
            while(rs.next())
            {
                Compra c = new Compra();
                c.setId_compra(rs.getInt("id_compra"));
                c.setStatus(rs.getString("status_compra"));
                pedidos.add(c);
            }
        }catch(SQLException ex)
        {
            ex.printStackTrace();
        }
        return pedidos;
    }

    public boolean updateStatusCompra(Compra c) throws SQLException, Exception{
        boolean deletar=false;
        ConectaDB_Postgres db = new ConectaDB_Postgres();
        try {
            Statement stmt = db.getConexao().createStatement();
            ResultSet valor = stmt.executeQuery("update compra set status_compra = '"+c.getStatus()+"' where id_compra = '"+c.getId_compra()+"'");
            deletar = valor.next();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return deletar;
    }

}
