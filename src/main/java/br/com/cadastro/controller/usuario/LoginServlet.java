package br.com.cadastro.controller.usuario;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.cadastro.dao.EstabelecimentoDAO;
import br.com.cadastro.dao.UsuarioDAO;
import br.com.cadastro.factory.Conexao;
import br.com.cadastro.model.Estabelecimento;
import br.com.cadastro.model.Usuario;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/usuario/login-usuario.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		
		UsuarioDAO dao = new UsuarioDAO ();
		Usuario usuario = dao.verificarUsuario(email, senha);
		
		if(usuario != null) {
			HttpSession sessao = request.getSession();
			sessao.setAttribute("usuarioLogado", usuario);
			
			try {
				
				Connection conn = Conexao.getConexao();
				EstabelecimentoDAO estabDAO = new EstabelecimentoDAO(conn);
				List<Estabelecimento> recentes = estabDAO.buscarRecentes();
				getServletContext().setAttribute("recentes", recentes);
			}catch (Exception e){
				e.printStackTrace();
				request.setAttribute("erro", e.getMessage());
				request.getRequestDispatcher("/WEB-INF/views/erro.jsp").forward(request, response);
			}
		
			request.getRequestDispatcher("/WEB-INF/views/usuario/usuario-logado.jsp").forward(request, response);
			
		}else {
			request.setAttribute("erro","Email ou senha inválidos.");
			request.getRequestDispatcher("/WEB-INF/views/usuario/usuario-logado.jsp").forward(request, response);
		}
	}
}
