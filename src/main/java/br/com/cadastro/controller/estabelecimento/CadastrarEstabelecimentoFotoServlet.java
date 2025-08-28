package br.com.cadastro.controller.estabelecimento;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import br.com.cadastro.dao.EstabelecimentoDAO;
import br.com.cadastro.factory.Conexao;
import br.com.cadastro.model.Endereco;
import br.com.cadastro.model.Estabelecimento;
import br.com.cadastro.model.Foto;


@MultipartConfig
@WebServlet("/cadastrarEstabelecimento")
public class CadastrarEstabelecimentoFotoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/estabelecimento/cadastrar-estabelecimento.jsp").forward(request, response);
		
		
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
	
		try {
			Part filePart = request.getPart("foto");
			byte[] fotoBytes = null;
			String extensao = null;
			
			if (filePart != null && filePart.getSize() > 0 ) {
				fotoBytes = filePart.getInputStream().readAllBytes();
				String fileName = filePart.getSubmittedFileName();
				extensao = fileName.substring(fileName.lastIndexOf(".") + 1);
			}
			
			Foto foto = new Foto(fotoBytes, extensao);
			
			
			String nome = request.getParameter("nome");
			String cnpj = request.getParameter("cnpj");
			String email = request.getParameter("email");
			String telefone = request.getParameter("telefone");
			String tipo = request.getParameter("tipo");
			
			//verifiacr essa parte
			String estado = request.getParameter("estado");
			String cidade = request.getParameter("cidade");
			String bairro = request.getParameter("bairro");
			String cep = request.getParameter("cep");
			String logradouro = request.getParameter("logradouro");
			
			String horaInicio = request.getParameter("horaInicio");
			String horaFim = request.getParameter("horaFim");
			String horario = horaInicio + "às" + horaFim;
			
			Estabelecimento estabelecimento = new Estabelecimento ();
			
			estabelecimento.setNome(nome);
	        estabelecimento.setCNPJ(cnpj);
	        estabelecimento.setEmail(email);
	        estabelecimento.setTelefone(telefone);
	        estabelecimento.setTipo(tipo);
	        
	        Endereco endereco = new Endereco ();
	        
	        endereco.setEstado(estado);
	        endereco.setCidade(cidade);
	        endereco.setBairro(bairro);
	        endereco.setCep(Integer.parseInt(cep));
	        endereco.setLogradouro(logradouro);
	        endereco.setHorarioFuncionamento(horario);;
			
	        Connection conn = Conexao.getConexao();
	        EstabelecimentoDAO dao = new EstabelecimentoDAO(conn);
	        dao.salvar(estabelecimento, endereco, foto);
	        
	        response.sendRedirect("listarRecentesEstabelecimento");
	        
		}catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("erro", e.getMessage());
			request.getRequestDispatcher("/WEB-INF/views/erro.jsp").forward(request, response);
		}
		
	}
}
