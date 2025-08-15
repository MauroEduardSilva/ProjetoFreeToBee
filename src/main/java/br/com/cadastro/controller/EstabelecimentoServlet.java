package br.com.cadastro.controller;

import br.com.cadastro.dao.EstabelecimentoDAO;
import br.com.cadastro.model.Endereco;
import br.com.cadastro.model.Estabelecimento;
import br.com.cadastro.util.Conexao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;

@WebServlet("/cadastrarEstabelecimento")
public class EstabelecimentoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       
        String nome = request.getParameter("nome");
        String cnpj = request.getParameter("cnpj");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");
        String horario = request.getParameter("horario");

        
        String estado = request.getParameter("estado");
        String cidade = request.getParameter("cidade");
        String bairro = request.getParameter("bairro");
        String cep = request.getParameter("cep");
        String logradouro = request.getParameter("logradouro");

        
        Estabelecimento estabelecimento = new Estabelecimento();
        estabelecimento.setNome(nome);
        estabelecimento.setCNPJ(cnpj);
        estabelecimento.setEmail(email);
        estabelecimento.setTelefone(telefone);

        Endereco endereco = new Endereco();
        endereco.setEstado(estado);
        endereco.setCidade(cidade);
        endereco.setBairro(bairro);
        endereco.setCep(Integer.parseInt(cep));
        endereco.setLogradouro(logradouro);
        endereco.setHorarioFuncionamento(horario);

        try {
            Connection connection = Conexao.getConexao();
            EstabelecimentoDAO dao = new EstabelecimentoDAO(connection);
            dao.salvar(estabelecimento, endereco);
        } catch (Exception e) {
            throw new ServletException(e);
        }

        response.sendRedirect("sucesso.jsp");
    }
}
