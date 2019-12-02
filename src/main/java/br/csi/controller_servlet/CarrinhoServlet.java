package br.csi.controller_servlet;

import br.csi.dao.Carrinho_DAO;
import br.csi.dao.ProdutoDAO;
import br.csi.model.Carrinho;
import br.csi.model.Item;
import br.csi.model.Produto;
import br.csi.model.Usuario;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "CarrinhoServlet", urlPatterns = "/cart")
public class CarrinhoServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String acao = req.getParameter("acao");

        if(acao.equals("carrinho"))
        {
            Integer id_usu = Integer.valueOf(req.getParameter("id_usu"));
            Integer id_prod = Integer.valueOf(req.getParameter("codigo"));

            Usuario u = new Usuario();
            Produto p = new Produto();

            u.setId(id_usu);
            p.setCodigo(id_prod);

            System.out.println("ID_User: "+ u.getId());
            System.out.println("ID_Produto: "+ p.getCodigo());

            boolean retorno = new Carrinho_DAO().create(u, p);
            if(retorno)
            {
                RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/carrinho.jsp");
                dis.forward(req, resp);
            }
            else
            {
                RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/carrinho.jsp");
                req.setAttribute("fail", "ERRO");
                dis.forward(req, resp);
            }
        }else if(acao.equals("deletaCart")){

            Integer codigo = Integer.valueOf(req.getParameter("codigo"));
            Produto p = new Produto();
            Carrinho_DAO cd = new Carrinho_DAO();
            p.setCodigo(codigo);

            boolean retorno;

            try {
                retorno= cd.deletaCarrinho(p);
                if(retorno == true){
                    RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/views/carrinho.jsp");
                    rd.forward(req, resp);
                }else{
                    RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/views/carrinho.jsp");
                    rd.forward(req, resp);
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }else if(acao.equals("vaiCarrinho")){
             RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/views/carrinho.jsp");
             rd.forward(req, resp);
            
        }
    }
}
