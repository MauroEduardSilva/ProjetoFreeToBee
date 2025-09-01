package br.com.cadastro.controller.foto;

import java.io.IOException;
import java.io.InputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import br.com.cadastro.dao.UsuarioDAO;

@WebServlet("/salvarFotoUsuario")
@MultipartConfig(maxFileSize = 16177215)
public class SalvarFotoUsuario extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        long idUsuario = Long.parseLong(request.getParameter("id"));
        Part filePart = request.getPart("foto");

        if (filePart != null && filePart.getSize() > 0) {
            try (InputStream inputStream = filePart.getInputStream()) {
                UsuarioDAO usuarioDAO = new UsuarioDAO();
                usuarioDAO.salvarFotoUsuario(idUsuario, inputStream, filePart.getSubmittedFileName());

                response.sendRedirect(request.getContextPath() + "/WEB-INF/views/usuario/sucesso.jsp");
            } catch (Exception e) {
                e.printStackTrace();
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Erro ao salvar a imagem.");
            }
        } else {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Nenhuma imagem selecionada.");
        }
    }
}
