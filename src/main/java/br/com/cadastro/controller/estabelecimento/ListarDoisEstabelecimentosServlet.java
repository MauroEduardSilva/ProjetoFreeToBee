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


@WebServlet("/listarDoisRecentesEstabelecimentos")

public class ListarDoisEstabelecimentosServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Connection conn = Conexao.getConexao();
            EstabelecimentoDAO dao = new EstabelecimentoDAO(conn);
            List<Estabelecimento> doisRecentes = dao.buscarDoisRecentes();

            request.setAttribute("recentesDois", doisRecentes);
            request.getRequestDispatcher("/WEB-INF/views/usuario/pagina-inicial-logado.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("erro", e.getMessage());
            request.getRequestDispatcher("/WEB-INF/views/erro.jsp").forward(request, response);
        }
    }
	

}
