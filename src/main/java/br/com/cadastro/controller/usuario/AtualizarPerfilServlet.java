package br.com.cadastro.controller.usuario;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.cadastro.dao.UsuarioDAO;
import br.com.cadastro.model.Usuario;

@WebServlet("/atualizar-perfil")
public class AtualizarPerfilServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession sessao = request.getSession(false);
		
		if (sessao == null || sessao.getAttribute("usuarioLogado") == null) {
			response.sendRedirect(request.getContextPath() + "/login-usuario.jsp");
			return;
		}
		
		Usuario usuario = (Usuario) sessao.getAttribute("usuarioLogado");
	
	
		String nome = request.getParameter("nome");
		String sobrenome = request.getParameter("sobrenome");
		String apelido = request.getParameter("apelido");
		String novaSenha = request.getParameter("senha");
		
		usuario.setNome(nome);
		usuario.setSobrenome(sobrenome);
		usuario.setApelido(apelido);
		
		if (novaSenha != null && !novaSenha.isEmpty()) {
			usuario.setSenha(novaSenha);
		}
		
		UsuarioDAO dao = new UsuarioDAO();
		dao.atualizarUsuario(usuario);
		
		sessao.setAttribute("usuarioLogado", usuario);
		request.getRequestDispatcher("/WEB-INF/views/usuario/perfil.jsp").forward(request, response);
	}
}
