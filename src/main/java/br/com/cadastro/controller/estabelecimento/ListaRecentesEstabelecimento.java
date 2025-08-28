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

@WebServlet("/listarRecentesEstabelecimento")
public class ListaRecentesEstabelecimento extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			@SuppressWarnings("unchecked")
			List<Estabelecimento> recentes = (List<Estabelecimento>) getServletContext().getAttribute("recentes");
			
			if(recentes == null) {
				Connection conn = Conexao.getConexao();
				EstabelecimentoDAO dao = new EstabelecimentoDAO(conn);
				recentes = dao.buscarRecentes();
				getServletContext().setAttribute("recentes", recentes);
			}
			
			request.setAttribute("recentes", recentes);
			request.getRequestDispatcher("/WEB-INF/views/usuario/usuario-logado.jsp").forward(request, response);
			
			
		}catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("erro", e.getMessage());
			request.getRequestDispatcher("/WEB-INF/views/erro.jsp").forward(request, response);
		}
	}

}
