package br.com.cadastro.controller;

import javax.servlet.http.HttpServletRequest;

public class EditarEstabelecimentoServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServlet response) throws ServletException, IOException {
		
		int idEstabelecimento = Integer.parseInt(request.getParameter("id"));
		
		String nome = request.getParameter("nome");
		String cnpj = request.getParameter("cnpj");
		String email = request.getParameter("email");
		String telefone = request.getParameter("telefone");
		String horario = request.getParameter("horario");
		int tipoId = interger.parseInt(request.getParameter("tipo"));
	}
}
