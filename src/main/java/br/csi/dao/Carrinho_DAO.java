package br.csi.dao;

import br.csi.model.Carrinho;
import br.csi.model.Produto;
import br.csi.model.Usuario;

import java.sql.*;
import java.util.ArrayList;

public class Carrinho_DAO {
    public boolean create(Usuario u, Produto p)
    {
        try(Connection conn = new ConectaDB_Postgres().getConexao())
        {
            String sql = "insert into cart (id_prod, id_usu) values (?, ?)";
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1,p.getCodigo());
            pre.setInt(2,u.getId());
            pre.execute();
            return true;

        }catch(SQLException ex)
        {
            ex.printStackTrace();
            return false;
        }
    }

    public boolean delete (Usuario u)
    {
        try(Connection conn = new ConectaDB_Postgres().getConexao())
        {
            String sql = "DELETE FROM cart WHERE id_usu = ?";
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1,u.getId());

            return true;
        }catch(SQLException ex)
        {
            ex.printStackTrace();
            return false;
        }
    }
    public boolean deletaCarrinho (Produto p)
    {
        boolean deletar=false;
        ConectaDB_Postgres db = new ConectaDB_Postgres();
        try {
            Statement stmt = db.getConexao().createStatement();
            System.out.println("ID que vai excluir: "+p.getCodigo());
            ResultSet valor = stmt.executeQuery("delete from cart where id_prod = ('" +p.getCodigo()+ "')");
            deletar = valor.next();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return deletar;
    }

    public ArrayList<Produto> getCarrinhos(int id)
    {
        ArrayList<Produto> produtos = new ArrayList<>();
        try(Connection conn = new ConectaDB_Postgres().getConexao())
        {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM produto, usuario, cart " +
                                                                "WHERE  produto.codigo = cart.id_prod " +
                                                                    "and cart.id_usu = usuario.id_usu " +
                                                                    "and usuario.id_usu = '"+ id +"'");

            while(rs.next())
            {
                Produto p = new Produto();
                p.setCodigo (rs.getInt("codigo"));
                p.setNome(rs.getString("nome"));
                p.setStatus(rs.getString("status"));
                p.setValor(rs.getFloat("valor"));
                p.setMarca(rs.getString("marca"));
                p.setModelo(rs.getString("modelo"));
                p.setDescricao(rs.getString("descricao"));
                p.setTipo(rs.getString("tipo"));
                p.setConservacao(rs.getString("conservacao"));
                produtos.add(p);
            }
        }catch(SQLException ex)
        {
            ex.printStackTrace();
        }
        return produtos;
    }

    public ArrayList<Produto> getTotal(int id)
    {
        ArrayList<Produto> produtos = new ArrayList<>();
        try(Connection conn = new ConectaDB_Postgres().getConexao())
        {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("Select SUM(valor) as total from produto, usuario, cart where produto.codigo = cart.id_prod and cart.id_usu = usuario.id_usu and usuario.id_usu = '"+ id +"'");

            while(rs.next())
            {
                Produto p = new Produto();
                p.setTotal (rs.getFloat("total"));
                produtos.add(p);
            }
        }catch(SQLException ex)
        {
            ex.printStackTrace();
        }
        return produtos;
    }

    public ArrayList<Produto> getTotal2(int id)
    {
        ArrayList<Produto> produtos = new ArrayList<>();
        try(Connection conn = new ConectaDB_Postgres().getConexao())
        {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("Select SUM(valor) + 20 as total2 from produto, usuario, cart where produto.codigo = cart.id_prod and cart.id_usu = usuario.id_usu and usuario.id_usu = '"+ id +"'");

            while(rs.next())
            {
                Produto p = new Produto();
                p.setTotal (rs.getFloat("total2"));
                System.out.println("TOTAL2:: "+p.getTotal());
                produtos.add(p);
            }
        }catch(SQLException ex)
        {
            ex.printStackTrace();
        }
        return produtos;
    }
}
