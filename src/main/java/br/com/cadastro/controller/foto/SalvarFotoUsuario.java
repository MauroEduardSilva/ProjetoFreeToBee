package br.com.cadastro.controller.foto;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import br.com.cadastro.factory.Conexao;

@WebServlet("/salvarFotoUsuario")
@MultipartConfig(maxFileSize = 16177215)
public class SalvarFotoUsuario extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        long id = Long.parseLong(request.getParameter("id"));
        Part filePart = request.getPart("foto");

        if (filePart != null && filePart.getSize() > 0) {
            try (Connection conn = Conexao.getConexao()) {
                String sql = "UPDATE usuario SET foto = ? WHERE id = ?"; //verificar se tem outro jeito de implementar essa parte do codigo
                try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                    stmt.setBlob(1, filePart.getInputStream());
                    stmt.setLong(2, id);
                    stmt.executeUpdate();
                }
            } catch (Exception e) {
                e.printStackTrace();
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Erro ao salvar foto.");
                return;
            }
        }
        request.getSession().setAttribute("usuarioId", id);
        response.sendRedirect(request.getContextPath() + "/paginaInicialLogado");
    }
}

