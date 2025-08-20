package br.com.cadastro.controller.estabelecimento;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.cadastro.dao.EstabelecimentoDAO;
import br.com.cadastro.factory.Conexao;
import br.com.cadastro.model.Estabelecimento;


@WebServlet("/perfilEstabelecimento")
public class PerfilEstabelecimentoServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			int id = Integer.parseInt(request.getParameter("id"));
			
			
			Connection conexao = Conexao.getConexao();
			EstabelecimentoDAO dao = new EstabelecimentoDAO(conexao);
			
			Estabelecimento est = dao.buscarPorId(id);
			
			request.setAttribute("estabelecimento", est);
			request.getRequestDispatcher("/WEB-INF/views/estabelecimento/perfil-estabelecimento.jsp").forward(request,response);
			
		}catch (SQLException e) {
			e.printStackTrace();
			response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Erro no banco.");
		}catch (NumberFormatException e) {
			e.printStackTrace();
			response.sendError(HttpServletResponse.SC_BAD_REQUEST, "ID invalido.");
		}
	}
}
