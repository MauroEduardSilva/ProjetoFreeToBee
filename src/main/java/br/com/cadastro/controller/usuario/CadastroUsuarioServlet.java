package br.com.cadastro.controller.usuario;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.cadastro.dao.UsuarioDAO;
import br.com.cadastro.model.Usuario;

@WebServlet("/cadastro")
public class CadastroUsuarioServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nome = request.getParameter("nome");
        String sobrenome = request.getParameter("sobrenome");
        String apelido = request.getParameter("apelido");
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        
        Usuario u = new Usuario(nome, sobrenome, apelido, email,senha);
            
        try {
            UsuarioDAO dao = new UsuarioDAO();
            long idGerado = dao.salvarERatornarId(u);
            response.sendRedirect(request.getContextPath() + "/foto?id=" + idGerado);

        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Erro ao salvar: " + e.getMessage());
            //request.getRequestDispatcher("/WEB-INF/views/erro.jsp").forward(request, response);
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.getRequestDispatcher("/WEB-INF/views/usuario/cadastro-usuario.jsp").forward(request, response);
    }
}
