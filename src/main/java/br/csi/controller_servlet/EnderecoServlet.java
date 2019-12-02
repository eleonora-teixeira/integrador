package br.csi.controller_servlet;


import br.csi.dao.Endereco_DAO;
import br.csi.dao.ProdutoDAO;
import br.csi.model.Endereco;
import br.csi.model.Produto;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "EnderecoServlet", urlPatterns = "/cadastroEndereco")
public class EnderecoServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String acao = req.getParameter("acao");

        if(acao.equals("cadastrarEnd")){
            Integer id_usu = Integer.valueOf(req.getParameter("id_usu"));
            String destinatario = req.getParameter("destinatario");
            String cep = req.getParameter("cep");
            String logradouro = req.getParameter("logradouro");
            Integer numero = Integer.valueOf(req.getParameter("numero"));
            String complemento = req.getParameter("complemento");
            String bairro = req.getParameter("bairro");
            String cidade = req.getParameter("cidade");
            String estado = req.getParameter("estado");
            String status = req.getParameter("status");

            Endereco endereco = new Endereco();

            endereco.setId_usu(id_usu);
            endereco.setDestinatario(destinatario);
            endereco.setCep(cep);
            endereco.setLogradouro(logradouro);
            endereco.setNumero(numero);
            endereco.setComplemento(complemento);
            endereco.setBairro(bairro);
            endereco.setCidade(cidade);
            endereco.setEstado(estado);
            endereco.setStatus(status);


            boolean retorno = new Endereco_DAO().create(endereco);
            if(retorno)
            {
                RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/endereco.jsp");
                dis.forward(req, res);
            }
            else
            {
                RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/endereco.jsp");
                req.setAttribute("fail", "ERRO");
                dis.forward(req, res);
            }

        }else if(acao.equals("delEnd"))
        {

            Integer codigo = Integer.valueOf(req.getParameter("id_end"));
            Endereco e = new Endereco();
            Endereco_DAO ed = new Endereco_DAO();
            e.setId_end(codigo);
            boolean retorno;
            System.out.println("Id Endereco: "+codigo);
            try {
                retorno= ed.deletar(e);
                if(retorno == true){
                    RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/views/endereco.jsp");
                    rd.forward(req, res);
                }else{
                    RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/views/endereco.jsp");
                    rd.forward(req, res);
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }

        }else if(acao.equals("endereco")){
            Integer id = Integer.valueOf(req.getParameter("id_usu"));
            Endereco e = new Endereco();
            Integer codigo = Integer.valueOf(req.getParameter("id_usu"));
            System.out.println("Id no endereco: "+codigo);

            try {
                e = Endereco_DAO.PesquisaEnd(codigo);
                if(e!=null){
                    req.setAttribute("endereco", e);
                    RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/views/endereco.jsp");
                    rd.forward(req, res);
                }else{
                    RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/views/endereco.jsp");
                    rd.forward(req, res);
                }

            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }else if(acao.equals("vaiNovoEnd"))
        {
            try {
                RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/views/novo-endereco.jsp");
                rd.forward(req, res);

            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }else if(acao.equals("vaiEditEnd"))
        {
            Integer id_usu = Integer.valueOf(req.getParameter("id_usu"));
            Integer id_end = Integer.valueOf(req.getParameter("id_end"));
            String destinatario = req.getParameter("destinatario");
            String cep = req.getParameter("cep");
            String logradouro = req.getParameter("logradouro");
            Integer numero = Integer.valueOf(req.getParameter("numero"));
            String complemento = req.getParameter("complemento");
            String bairro = req.getParameter("bairro");
            String cidade = req.getParameter("cidade");
            String estado = req.getParameter("estado");
            String status = req.getParameter("status");

            Endereco endereco = new Endereco();

            endereco.setId_usu(id_usu);
            endereco.setId_end(id_end);
            endereco.setDestinatario(destinatario);
            endereco.setCep(cep);
            endereco.setLogradouro(logradouro);
            endereco.setNumero(numero);
            endereco.setComplemento(complemento);
            endereco.setBairro(bairro);
            endereco.setCidade(cidade);
            endereco.setEstado(estado);
            endereco.setStatus(status);

            req.setAttribute("endereco", endereco);
            RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/views/editar-endereco.jsp");
            rd.forward(req, res);
        }else if(acao.equals("editEnd"))
        {
            if(req.getParameter("id_end")!=null){

                Integer id_usu = Integer.valueOf(req.getParameter("id_usu"));
                Integer id_end = Integer.valueOf(req.getParameter("id_end"));
                String destinatario = req.getParameter("destinatario");
                String cep = req.getParameter("cep");
                String logradouro = req.getParameter("logradouro");
                Integer numero = Integer.valueOf(req.getParameter("numero"));
                String complemento = req.getParameter("complemento");
                String bairro = req.getParameter("bairro");
                String cidade = req.getParameter("cidade");
                String estado = req.getParameter("estado");
                String status = req.getParameter("status");

                Endereco endereco = new Endereco();

                endereco.setId_usu(id_usu);
                endereco.setId_end(id_end);
                endereco.setDestinatario(destinatario);
                endereco.setCep(cep);
                endereco.setLogradouro(logradouro);
                endereco.setNumero(numero);
                endereco.setComplemento(complemento);
                endereco.setBairro(bairro);
                endereco.setCidade(cidade);
                endereco.setEstado(estado);
                endereco.setStatus(status);

                try {
                    Endereco_DAO ed = new Endereco_DAO();
                    boolean retorno;
                    retorno= ed.update(endereco);

                    if(retorno == true){
                        req.setAttribute("endereco", endereco);
                        RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/views/endereco.jsp");
                        rd.forward(req, res);
                    }else{
                        req.setAttribute("endereco", endereco);
                        RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/views/endereco.jsp");
                        rd.forward(req, res);
                    }

                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
        }else if(acao.equals("vaiNovoEnd2")){
            try {
                RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/views/novo-endereco2.jsp");
                rd.forward(req, res);

            } catch (Exception ex) {
                ex.printStackTrace();
            }

        }else if(acao.equals("cadastrarEnd2")){
            Integer id_usu = Integer.valueOf(req.getParameter("id_usu"));
            String destinatario = req.getParameter("destinatario");
            String cep = req.getParameter("cep");
            String logradouro = req.getParameter("logradouro");
            Integer numero = Integer.valueOf(req.getParameter("numero"));
            String complemento = req.getParameter("complemento");
            String bairro = req.getParameter("bairro");
            String cidade = req.getParameter("cidade");
            String estado = req.getParameter("estado");
            String status = req.getParameter("status");

            Endereco endereco = new Endereco();

            endereco.setId_usu(id_usu);
            endereco.setDestinatario(destinatario);
            endereco.setCep(cep);
            endereco.setLogradouro(logradouro);
            endereco.setNumero(numero);
            endereco.setComplemento(complemento);
            endereco.setBairro(bairro);
            endereco.setCidade(cidade);
            endereco.setEstado(estado);
            endereco.setStatus(status);


            boolean retorno = new Endereco_DAO().create(endereco);
            boolean retorno2 = new Endereco_DAO().create2(endereco);
            if(retorno && retorno2)
            {
                RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/alterar-endereco.jsp");
                dis.forward(req, res);
            }
            else
            {
                RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/alterar-endereco.jsp");
                req.setAttribute("fail", "ERRO");
                dis.forward(req, res);
            }

        }else if(acao.equals("usarEnd")){
            Integer id_end = Integer.valueOf(req.getParameter("id_end"));
            Endereco endereco = new Endereco();
            endereco.setId_end(id_end);

            boolean retorno = new Endereco_DAO().update2(endereco);
            boolean retorno2 = new Endereco_DAO().update3(endereco);
            if(retorno && retorno2)
            {
                RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/finalizar-compra.jsp");
                dis.forward(req, res);
            }
            else
            {
                RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/views/finalizar-compra.jsp");
                req.setAttribute("fail", "ERRO");
                dis.forward(req, res);
            }
        }
    }
}
