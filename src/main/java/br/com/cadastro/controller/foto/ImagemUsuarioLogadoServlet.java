package br.com.cadastro.controller.foto;

import java.io.IOException;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.OutputStream;
import br.com.cadastro.factory.Conexao;

public class ImagemUsuarioLogadoServlet extends HttpServlet {

	
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		long id = Long.parseLong(request.getParameter("id"));
		
		String sql = "select foto from usuario where id = ?";
		try (Connection conn = Conexao.getConexao();
			PreparedStatement stmt = conn.prepareStatement(sql)) {
			
			stmt.setLong(1,  id);
			ResultSet rs = stmt.executeQuery();
			
			if (rs.next()) {
				Blob blob = rs.getBlob("foto");
				if (blob != null) {
					response.setContentType("image/jpeg");
					
					try (OutputStream out = response.getOutputStream()) {
						out.write(blob.getBytes(1, (int) blob.length()));
					}
				}
			}
		}catch (Exception e) {
			e.printStackTrace();
			response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		}
	}
	
}
