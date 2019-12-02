package br.csi.controller_servlet;

import br.csi.dao.Usuario_DAO;
import br.csi.model.Usuario;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "RedirectServlet", urlPatterns ="/redirect")
public class RedirectServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String butao = req.getParameter("butao");
        HttpSession session = req.getSession();
        Usuario u = (Usuario) session.getAttribute("usuario");

        if(butao.equals("detalhe")){
            RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/detalhes-produto.jsp");
            dis.forward(req, resp);
        }else if(butao.equals("detalhes-adm")){
            RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/detalhes-produtos-adm.jsp");
            dis.forward(req, resp);
        }else if(butao.equals("carrinho")){
            RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/carrinho.jsp");
            dis.forward(req, resp);
        }else if(butao.equals("endereco")){
            RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/endereco.jsp");
            dis.forward(req, resp);
        }else if(butao.equals("pedido")){
            RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/pedidos.jsp");
            dis.forward(req, resp);
        }else if(butao.equals("logo-cli")){
            RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/index-cliente.jsp");
            dis.forward(req, resp);
        }else if(butao.equals("logo-adm")) {

            RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/index-adm.jsp");
            dis.forward(req, resp);
        }else if(butao.equals("logo")) {
            RequestDispatcher dis = req.getRequestDispatcher("/index.jsp");
            dis.forward(req, resp);
        }else if(butao.equals("pesquisa")) {
            RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/pesquisa-categoria.jsp");
            dis.forward(req, resp);
        }else if(butao.equals("editarProduto")) {
            RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/editar-produto.jsp");
            dis.forward(req, resp);
        }else if(butao.equals("novoProduto")) {
            RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/novo-produto.jsp");
            dis.forward(req, resp);
        }else if(butao.equals("atualizaPedido")) {
            RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/atualizar-pedido.jsp");
            dis.forward(req, resp);
        }
    }

}