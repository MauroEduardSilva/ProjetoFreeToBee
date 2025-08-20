package br.com.cadastro.controller.estabelecimento;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.cadastro.dao.EstabelecimentoDAO;
import br.com.cadastro.factory.Conexao;
import br.com.cadastro.model.Endereco;
import br.com.cadastro.model.Estabelecimento;

public class CadastrarEstabelecimentoServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int idEstabelecimento = Integer.parseInt(request.getParameter("id"));
		String nome = request.getParameter("nome");
		String cnpj = request.getParameter("cnpj");
		String email = request.getParameter("email");
		String telefone = request.getParameter("telefone");
		String horario = request.getParameter("horario");
		String tipo = request.getParameter("tipo");
		
		String estado = request.getParameter("estado");
		String cidade = request.getParameter("cidade");
		String bairro = request.getParameter("bairro");
		String cep = request.getParameter("cep");
		String logradouro = request.getParameter("logradouro");
		
		Estabelecimento estabelecimento = new Estabelecimento();
		
		estabelecimento.setId(idEstabelecimento);
        estabelecimento.setNome(nome);
        estabelecimento.setCNPJ(cnpj);
        estabelecimento.setEmail(email);
        estabelecimento.setTelefone(telefone);
        estabelecimento.setTipo(tipo);
		
		Endereco endereco = new Endereco();
		
		endereco.setEstado(estado);
        endereco.setCidade(cidade);
        endereco.setBairro(bairro);
        endereco.setCep(Integer.parseInt(cep));
        endereco.setLogradouro(logradouro);
        endereco.setHorarioFuncionamento(horario);;
		
        try {
        	Connection conn = Conexao.getConexao();
        	EstabelecimentoDAO dao = new EstabelecimentoDAO(conn);
        	dao.atualizar(estabelecimento, endereco);
        	response.sendRedirect("listaRecentesEstabelecimento");
        }catch (Exception ex) {
        	ex.printStackTrace();
        	response.sendRedirect("erro.jsp");
        }
	}
}
