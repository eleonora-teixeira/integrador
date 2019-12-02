package br.csi.controller_servlet;

import br.csi.dao.ProdutoDAO;
import br.csi.model.Produto;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CategoriaServlet", urlPatterns = "/categoria")
public class CategoriaServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        String acao = req.getParameter("acao");

        if(acao.equals("vaicategoria")){
            Produto p = new Produto();
            String modelo = req.getParameter("modelo");
            System.out.println("Modelo: "+modelo);

            try {
                p = ProdutoDAO.PesquisaCategoria(modelo);
                if(p!=null){
                    req.setAttribute("produto", p);
                    RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/views/pesquisa-categoria.jsp");
                    rd.forward(req, resp);
                }else{
                    RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/views/pesquisa-categoria.jsp");
                    rd.forward(req, resp);
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }else if(acao.equals("vaicategoriaout")){
            Produto p = new Produto();
            String modelo = req.getParameter("modelo");
            System.out.println("Modelo: "+modelo);

            try {
                p = ProdutoDAO.PesquisaCategoria(modelo);
                if(p!=null){
                    req.setAttribute("produto", p);
                    RequestDispatcher rd = req.getRequestDispatcher("pesquisa-categoria-out.jsp");
                    rd.forward(req, resp);
                }else{
                    RequestDispatcher rd = req.getRequestDispatcher("pesquisa-categoria-out.jsp");
                    rd.forward(req, resp);
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
    }
}
