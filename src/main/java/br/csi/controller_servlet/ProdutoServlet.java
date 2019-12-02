package br.csi.controller_servlet;

import br.csi.dao.ProdutoDAO;
import br.csi.dao.Usuario_DAO;
import br.csi.model.Produto;
import br.csi.model.Usuario;
import org.omg.PortableInterceptor.INACTIVE;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "ProdutoServlet", urlPatterns = "/cadastroProduto")
public class ProdutoServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String acao = req.getParameter("acao");

        if(acao.equals("cadastrarProd")){

            String status = req.getParameter("status");
            String nome = req.getParameter("nome");
            Float valor = Float.valueOf(req.getParameter("valor"));
            String descricao = req.getParameter("descricao");
            String modelo = req.getParameter("modelo");
            String tipo = req.getParameter("tipo");
            String conservacao = req.getParameter("conservacao");
            String marca = req.getParameter("marca");

            Produto produto = new Produto();

            produto.setStatus(status);
            produto.setNome(nome);
            produto.setValor(valor);
            produto.setDescricao(descricao);
            produto.setModelo(modelo);
            produto.setTipo(tipo);
            produto.setConservacao(conservacao);
            produto.setMarca(marca);

            System.out.println("Antes do boolean retorno");
            System.out.println("Nome produto que quer cadastrar: "+produto.getNome());
            System.out.println("Status produto que quer cadastrar: "+produto.getStatus());

            boolean retorno = new ProdutoDAO().create(produto);
            if(retorno)
            {
                RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/index-adm.jsp");
                dis.forward(req, resp);
            }
            else
            {
                RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/index-adm.jsp");
                req.setAttribute("fail", "ERRO");
                dis.forward(req, resp);
            }
        }else if(acao.equals("deleteProd"))
        {

            Integer codigo = Integer.valueOf(req.getParameter("codigo"));
            Produto p = new Produto();
            ProdutoDAO pd = new ProdutoDAO();
            p.setCodigo(codigo);
            boolean retorno;

            try {
                retorno= pd.deletar(p);
                if(retorno == true){
                    RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/views/index-adm.jsp");
                    rd.forward(req, resp);
                }else{
                    RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/views/index-adm.jsp");
                    rd.forward(req, resp);
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }

        }else if(acao.equals("editProd"))
        {
            if(req.getParameter("codigo")!=null){

                String status = req.getParameter("status");
                String nome = req.getParameter("nome");
                Float valor = Float.valueOf(req.getParameter("valor"));
                String descricao = req.getParameter("descricao");
                String modelo = req.getParameter("modelo");
                String tipo = req.getParameter("tipo");
                String conservacao = req.getParameter("conservacao");
                String marca = req.getParameter("marca");
                Integer codigo = Integer.valueOf(req.getParameter("codigo"));

                Produto produto = new Produto();

                produto.setStatus(status);
                produto.setNome(nome);
                produto.setValor(valor);
                produto.setDescricao(descricao);
                produto.setModelo(modelo);
                produto.setTipo(tipo);
                produto.setConservacao(conservacao);
                produto.setMarca(marca);
                produto.setCodigo(codigo);

                try {
                    ProdutoDAO pd = new ProdutoDAO();
                    boolean retorno;
                    retorno= pd.update(produto);

                    if(retorno == true){
                        req.setAttribute("produto", produto);
                        RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/views/detalhes-produtos-adm.jsp");
                        rd.forward(req, resp);
                    }else{
                        req.setAttribute("produto", produto);
                        RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/views/detalhes-produtos-adm.jsp");
                        rd.forward(req, resp);
                    }

                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }

        }else if(acao.equals("detalhesAdm"))
        {
            Integer id = Integer.valueOf(req.getParameter("codigo"));
            Produto p = new Produto();
            Integer codigo = Integer.valueOf(req.getParameter("codigo"));

            try {
                p = ProdutoDAO.PesquisaProduto(codigo);
                if(p!=null){
                    req.setAttribute("produto", p);
                    RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/views/detalhes-produtos-adm.jsp");
                    rd.forward(req, resp);
                }else{
                    RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/views/detalhes-produtos-adm.jsp");
                    rd.forward(req, resp);
                }

            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }else if(acao.equals("detalhesProd"))
        {
            Integer id = Integer.valueOf(req.getParameter("codigo"));
            Produto p = new Produto();
            Integer codigo = Integer.valueOf(req.getParameter("codigo"));

            try {
                p = ProdutoDAO.PesquisaProduto(codigo);
                if(p!=null){
                    req.setAttribute("produto", p);
                    RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/views/detalhes-produto.jsp");
                    rd.forward(req, resp);
                }else{
                    RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/views/detalhes-produto.jsp");
                    rd.forward(req, resp);
                }

            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }else if(acao.equals("detalhesProdOut"))
        {
            Integer id = Integer.valueOf(req.getParameter("codigo"));
            Produto p = new Produto();
            Integer codigo = Integer.valueOf(req.getParameter("codigo"));

            try {
                p = ProdutoDAO.PesquisaProduto(codigo);
                if(p!=null){
                    req.setAttribute("produto", p);
                    RequestDispatcher rd = req.getRequestDispatcher("/detalhes-produto-out.jsp");
                    rd.forward(req, resp);
                }else{
                    RequestDispatcher rd = req.getRequestDispatcher("/detalhes-produto-out.jsp");
                    rd.forward(req, resp);
                }

            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }else if(acao.equals("vaiEditProd"))
        {
            Integer codigo = Integer.valueOf(req.getParameter("codigo"));
            String status = req.getParameter("status");
            String nome = req.getParameter("nome");
            Float valor = Float.valueOf(req.getParameter("valor"));
            String descricao = req.getParameter("descricao");
            String modelo = req.getParameter("modelo");
            String tipo = req.getParameter("tipo");
            String conservacao = req.getParameter("conservacao");
            String marca = req.getParameter("marca");

            Produto produto = new Produto();

            produto.setCodigo(codigo);
            produto.setStatus(status);
            produto.setNome(nome);
            produto.setValor(valor);
            produto.setDescricao(descricao);
            produto.setModelo(modelo);
            produto.setTipo(tipo);
            produto.setConservacao(conservacao);
            produto.setMarca(marca);

            req.setAttribute("produto", produto);
            RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/views/editar-produto.jsp");
            rd.forward(req, resp);

        }
    }
  }
