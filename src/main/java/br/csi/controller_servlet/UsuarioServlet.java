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

@WebServlet(name = "UsuarioServlet", urlPatterns ="/perfil")
public class UsuarioServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String butao = req.getParameter("butao");
        HttpSession session = req.getSession();
        Usuario  u = (Usuario) session.getAttribute("usuario");

        if(butao.equals("editar")){
            String nome = req.getParameter("nome");
            String email = req.getParameter("email");
            String telefone = req.getParameter("telefone");
            String senha = req.getParameter("senha");
            int id = Integer.parseInt(req.getParameter("id"));

            u = new Usuario();
            u.setNome(nome);
            u.setEmail(email);
            u.setTelefone(telefone);
            u.setSenha(senha);
            u.setId(id);

            boolean retorno = false;
            try {
                retorno = new Usuario_DAO().Update(u);
            } catch (SQLException e) {
                e.printStackTrace();
            }

            if(retorno){
                req.setAttribute("usuario", u);
                System.out.println("Ta no If");
                RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/perfil.jsp");
                dis.forward(req, resp);
            }else{
                System.out.println("Ta no Else");
                req.setAttribute("usuario", u);
                RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/perfil.jsp");
                dis.forward(req, resp);
            }
        }

        else if(butao.equals("vaiperfil")){
            if(u.getPermissao() == 1) {

                session.setAttribute("usuario", u);
                RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/perfil.jsp");
                dis.forward(req, resp);
            }
            else{
                RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/perfil-adm.jsp");
                dis.forward(req, resp);
            }
        }
        else if(butao.equals("deletar")){
            int id = Integer.parseInt(req.getParameter("id"));
            u.setId(id);
            boolean retorno = false;
            try {
                retorno = new Usuario_DAO().delete(u);
            } catch (Exception e) {
                e.printStackTrace();
            }


            if(retorno == true){
                System.out.println("Ta no If");
                req.setAttribute("usuario", u);
                RequestDispatcher dis = req.getRequestDispatcher("/index.jsp");
                dis.forward(req, resp);
            }else{
                System.out.println("Ta no Else");
                req.setAttribute("usuario", u);
                RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/perfil.jsp");
                dis.forward(req, resp);
            }
        }


    }

}