package br.csi.controller_servlet;

import br.csi.dao.Compra_DAO;
import br.csi.model.Compra;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ComprasServlet", urlPatterns = "/compras")
public class CompraServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String acao = req.getParameter("acao");

        if (acao.equals("finaliza")) {
            RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/views/finalizar-compra.jsp");
            rd.forward(req, res);

        }else if (acao.equals("alterarEnd")) {
            RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/views/alterar-endereco.jsp");
            rd.forward(req, res);

        }else if (acao.equals("encerraPedido")) {

            Float total = Float.valueOf(req.getParameter("total"));
            Integer id_usu = Integer.valueOf(req.getParameter("id_usu"));
            Integer id_end = Integer.valueOf(req.getParameter("id_end"));
            String status = req.getParameter("status");

            Compra c = new Compra();

            c.setTotal(total);
            c.setId_usu(id_usu);
            c.setId_end(id_end);
            c.setStatus(status);

            System.out.println("Status: "+c.getStatus());
            System.out.println("Id Usuario: "+c.getId_usu());
            System.out.println("Id endereco: "+c.getId_end());
            System.out.println("Total: "+c.getTotal());

            boolean retorno = new Compra_DAO().create(c);
            boolean retorno2 = false;
            try {
                retorno2 = new Compra_DAO().deletar(c);
            } catch (Exception e) {
                e.printStackTrace();
            }

            if(retorno && retorno2)
            {
                req.setAttribute("compra", c);
                RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/pedidos.jsp");
                dis.forward(req, res);
            }
            else
            {
                req.setAttribute("compra", c);
                RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/pedidos.jsp");
                req.setAttribute("fail", "ERRO");
                dis.forward(req, res);
            }

        }else if (acao.equals("cancelaCarrinho")) {
            Integer id_usu = Integer.valueOf(req.getParameter("id_usu"));

            Compra c = new Compra();

            c.setId_usu(id_usu);

            try {
                boolean retorno = new Compra_DAO().deletar(c);
            } catch (Exception e) {
                e.printStackTrace();
            }

            RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/index-cliente.jsp");
            dis.forward(req, res);

        }else if (acao.equals("vaiPedido")) {
            Compra c = new Compra();
            Integer codigo = Integer.valueOf(req.getParameter("id_usu"));
            System.out.println("Id no usuario: "+codigo);

            try {
                c = Compra_DAO.PesquisaCompra(codigo);
                if(c!=null){
                    req.setAttribute("compra", c);
                    RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/views/pedidos.jsp");
                    rd.forward(req, res);
                }else{
                    RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/views/pedidos.jsp");
                    rd.forward(req, res);
                }

            } catch (Exception ex) {
                ex.printStackTrace();
            }

        }else if (acao.equals("delPedido")) {
            Integer id_compra = Integer.valueOf(req.getParameter("id_compra"));
            String status = req.getParameter("status");

            Compra c = new Compra();

            c.setId_compra(id_compra);
            c.setStatus(status);

                try {
                    boolean retorno = new Compra_DAO().deletarCompra(c);
                } catch (Exception e) {
                    e.printStackTrace();
                }

                RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/pedidos.jsp");
                dis.forward(req, res);

        }

    }
}
