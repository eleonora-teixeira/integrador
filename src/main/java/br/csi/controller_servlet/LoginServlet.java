package br.csi.controller_servlet;


import br.csi.dao.LoginDAO;
import br.csi.model.Usuario;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;


@WebServlet(name = "LoginServlet",urlPatterns = "/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        PrintWriter out = resp.getWriter();
        HttpSession session = req.getSession(true);

        String vai = req.getParameter("butao");

        if(vai.equals("entrar")) {

            try {
                String login = req.getParameter("login");
                String senha = req.getParameter("senha");

                Usuario u = new Usuario();
                LoginDAO uD = new LoginDAO();

                u = uD.autenticar(login, senha);

                if(u != null) {
                    if (u.getPermissao() == 1) {
                        //session = req.getSession();
                        session.setAttribute("usuario", u);

                        System.out.println("Usuario: " + u.getNome() + " Permissao: " + u.getPermissao());

                        RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/index-cliente.jsp");
                        dis.forward(req, resp);

                    } else {
                        req.getSession().invalidate();
                        session = req.getSession();
                        session.setAttribute("usuario", u);
                        System.out.println("Ta aqui no if permissao 2 com a permissao: " + u.getPermissao());
                        RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/index-adm.jsp");
                        dis.forward(req, resp);
                    }

                } else {
                    System.out.println("Ta aqui no else");
                    RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/login-cadastro.jsp");
                    req.setAttribute("mensagem","Email/Senha incorretos");
                    dis.forward(req, resp);
                }

            } catch (Exception e){
                e.printStackTrace();
            }
        } else if(vai.equals("logar")) {
            RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/login-cadastro.jsp");
            dis.forward(req, resp);
        } else if(vai.equals("sair")) {
            session = req.getSession(true);
            session.invalidate();
            RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/login-cadastro.jsp");
            dis.forward(req, resp);
        }

    }
}
