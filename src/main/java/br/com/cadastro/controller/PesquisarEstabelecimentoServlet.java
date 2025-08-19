package br.com.cadastro.controller;

import br.com.cadastro.dao.EstabelecimentoDAO;
import br.com.cadastro.model.Estabelecimento;
import br.com.cadastro.util.Conexao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.util.List;

@WebServlet("/pesquisarEstabelecimento")
public class PesquisarEstabelecimentoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nome = request.getParameter("nome");

        try {
            Connection conn = Conexao.getConexao();
            EstabelecimentoDAO dao = new EstabelecimentoDAO(conn);
            List<Estabelecimento> resultados = dao.buscarPorNome(nome);

            request.setAttribute("resultados", resultados);
            request.getRequestDispatcher("/WEB-INF/views/usuario-logado.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("erro.jsp");
        }
    }
}
