package br.com.cadastro.controller.foto;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.cadastro.dao.FotoDAO;
import br.com.cadastro.factory.Conexao;
import br.com.cadastro.model.Foto;


@WebServlet("/imagemFoto")
public class FotoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String idStr = request.getParameter("id");
		if(idStr == null) {
			response.sendError(HttpServletResponse.SC_BAD_REQUEST, "ID não encontrado");
			return;
		}
		
		long id;
		try {
			id = Long.parseLong(idStr);
		}catch (NumberFormatException e) {
			response.sendError(HttpServletResponse.SC_BAD_REQUEST, "ID inválido");
			return;
		}
		
		try (Connection conn = Conexao.getConexao()) {
			FotoDAO fotoDao = new FotoDAO(conn);
			Foto foto = fotoDao.buscarPorEstabelecimentoId(id);
			
			if (foto != null && foto.getConteudoFoto() != null) {
				String extensao = foto.getExtensaoFoto();
				String mimeType = "image/jpeg";
				
				if ("png".equalsIgnoreCase(extensao)) {
					mimeType = "image/png";
				}else if ("gif".equalsIgnoreCase(extensao)) {
					mimeType = "image/gif";
				}
				
				response.setContentType(mimeType);
				response.getOutputStream().write(foto.getConteudoFoto());
			}else {
				response.sendError(HttpServletResponse.SC_NOT_FOUND, "Foto não encontrada");
			}
		}catch (Exception e) {
			request.setAttribute("erro", e.getMessage());
			request.getRequestDispatcher("/WEB-INF/views/erro.jsp").forward(request, response);
		}
	}

}
