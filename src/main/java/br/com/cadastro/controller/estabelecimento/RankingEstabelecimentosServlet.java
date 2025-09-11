package br.com.cadastro.controller.estabelecimento;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.cadastro.dao.EstabelecimentoDAO;
import br.com.cadastro.factory.Conexao;
import br.com.cadastro.model.Estabelecimento;

@WebServlet("/ranking-estabelecimentos")
public class RankingEstabelecimentosServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Connection conn = Conexao.getConexao();
            EstabelecimentoDAO dao = new EstabelecimentoDAO(conn);
            List<Estabelecimento> lista = dao.buscarTodos();

            request.setAttribute("resultados", lista);
            request.getRequestDispatcher("/WEB-INF/views/usuario/ranking-estabelecimentos.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("erro.jsp");
        }
    }
}
