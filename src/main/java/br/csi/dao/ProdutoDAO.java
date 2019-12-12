package br.csi.dao;

import br.csi.model.Produto;

import java.sql.*;
import java.util.ArrayList;

public class ProdutoDAO {
    public boolean create(Produto produto){
        try(Connection conn = new ConectaDB_Postgres().getConexao()){

            String sql = "INSERT INTO produto (status, nome, valor, descricao, modelo, tipo, conservacao, marca, imagem)" + "VALUES (?,?,?,?,?,?,?,?,?)";
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1,produto.getStatus());
            pre.setString(2,produto.getNome());
            pre.setFloat(3,produto.getValor());
            pre.setString(4,produto.getDescricao());
            pre.setString(5,produto.getModelo());
            pre.setString(6,produto.getTipo());
            pre.setString(7,produto.getConservacao());
            pre.setString(8,produto.getMarca());
            pre.setString(9,produto.getImagem());
            if(pre.executeUpdate() > 0){
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public Produto read(int id)
    {
        try(Connection conn = new ConectaDB_Postgres().getConexao())
        {
            String sql = "SELECT * FROM produto "+"WHERE codigo = ?";
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, id);
            ResultSet rs = pre.executeQuery();
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
                p.setImagem(rs.getString("imagem"));

                return p;
            }
        }catch(SQLException ex)
        {
            ex.printStackTrace();
        }
        return null;
    }



    public boolean update(Produto p) throws SQLException {

        System.out.println("AQUI NO METODO ALTERA____ produto:"+p.getNome());

        ConectaDB_Postgres db = new ConectaDB_Postgres();
        //STATEMENT COMO SE FOSSE UMA ABA NO POSTGRE DE CONSULTAS
        Statement stmt = db.getConexao().createStatement();
        db.getConexao();
        int retorno = stmt.executeUpdate("update produto set nome='" + p.getNome() + "',valor='" + p.getValor() + "',marca='" + p.getMarca() + "',modelo='" + p.getModelo()+"',tipo = '"+p.getTipo() + "',descricao = '"+p.getDescricao()+ "',conservacao = '" +p.getConservacao()+ "',status = '" +p.getStatus()+ "',imagem = '" +p.getImagem()+ "' where codigo = '" + p.getCodigo()+ "'");


        if(retorno > 0){
            return true;
        }
        else {
            return false;
        }
    }



    public boolean deletar(Produto p) throws SQLException, Exception{
        boolean deletar=false;
        ConectaDB_Postgres db = new ConectaDB_Postgres();
        try {
            Statement stmt = db.getConexao().createStatement();
            ResultSet valor = stmt.executeQuery("delete from produto where codigo = ('" +p.getCodigo()+ "')");
            deletar = valor.next();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return deletar;
    }

    public ArrayList<Produto> getProdutos()
    {
        ArrayList<Produto> produtos = new ArrayList<>();
        try(Connection conn = new ConectaDB_Postgres().getConexao())
        {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM produto WHERE status = 'd'");
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
                p.setImagem(rs.getString("imagem"));
                produtos.add(p);
            }
        }catch(SQLException ex)
        {
            ex.printStackTrace();
        }
        return produtos;
    }

    public ArrayList<Produto> getProdutosAdm()
    {
        ArrayList<Produto> produtos = new ArrayList<>();
        try(Connection conn = new ConectaDB_Postgres().getConexao())
        {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM produto");
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
                p.setImagem(rs.getString("imagem"));
                produtos.add(p);
            }
        }catch(SQLException ex)
        {
            ex.printStackTrace();
        }
        return produtos;
    }


    public static Produto PesquisaProduto(Integer codigo) throws SQLException, Exception{
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
                p.setImagem(res.getString("imagem"));

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return p;
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
                p.setImagem(res.getString("imagem"));

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return p;
    }

    public static Produto PesquisaCategoria(String modelo) throws SQLException, Exception{
        Produto p = new Produto();
        ConectaDB_Postgres db = new ConectaDB_Postgres();
        try {
            PreparedStatement stmt = db.getConexao().prepareStatement("select * from produto where modelo= '" + modelo + "'");
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
                p.setImagem(res.getString("imagem"));

            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return p;
    }

    public ArrayList<Produto> getCategoria(String modelo)
    {
        ArrayList<Produto> produtos = new ArrayList<>();
        try(Connection conn = new ConectaDB_Postgres().getConexao())
        {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM produto where status = 'd' and modelo = '" + modelo + "'");
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
                p.setImagem(rs.getString("imagem"));
                produtos.add(p);
            }
        }catch(SQLException ex)
        {
            ex.printStackTrace();
        }
        return produtos;
    }

}
