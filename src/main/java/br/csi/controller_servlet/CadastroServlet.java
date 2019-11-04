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

@WebServlet(urlPatterns = "/cadastro")
public class CadastroServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String butao = req.getParameter("butao");
        HttpSession session = req.getSession();
        if(butao.equals("cadastrar")){
            String nome = req.getParameter("nome");
            String email = req.getParameter("email");
            String senha = req.getParameter("senha");

            Usuario cliente = new Usuario();
            cliente.setNome(nome);
            cliente.setEmail(email);
            cliente.setSenha(senha);
            cliente.setPermissao(1);

            boolean retorno = new Usuario_DAO().create(cliente);
            if(retorno)
            {
                session.setAttribute("usuario", cliente);
                RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/index-cliente.jsp");
                dis.forward(req, resp);
            }
            else
            {
                RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/login-cadastro.jsp");
                req.setAttribute("fail", "ERRO");
                dis.forward(req, resp);
            }
        }else if(butao.equals("cadastro"))
        {

            RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/cadastro.jsp");
            dis.forward(req, resp);

        }
    }







}