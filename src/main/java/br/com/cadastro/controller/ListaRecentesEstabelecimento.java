package br.com.cadastro.controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.cadastro.dao.EstabelecimentoDAO;
import br.com.cadastro.model.Estabelecimento;
import br.com.cadastro.util.Conexao;

@WebServlet("/listaRecentesEstabelecimento")
public class ListaRecentesEstabelecimento extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Connection conn = Conexao.getConexao();
			EstabelecimentoDAO dao = new EstabelecimentoDAO(conn);
			List<Estabelecimento> recentes = dao.buscarRecentes();
			request.setAttribute("recentes", recentes);
			request.getRequestDispatcher("/WEB-INF/views/usuario-logado.jsp").forward(request, response);
		}catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("erro.jsp");
		}
	}

}
