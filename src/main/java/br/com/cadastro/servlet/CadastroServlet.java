package br.com.cadastro.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.cadastro.dao.usuarioDAO;
import br.com.cadastro.modelo.Usuario;

@WebServlet("/cadastro")
public class CadastroServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nome = request.getParameter("nome");
        String sobrenome = request.getParameter("sobrenome");
        String apelido = request.getParameter("apelido");
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        
        Usuario u = new Usuario();
   
        u.setNome(request.getParameter("nome"));
        u.setSobrenome(request.getParameter("sobrenome"));
        u.setApelido(request.getParameter("apelido"));
        u.setEmail(request.getParameter("email"));
        u.setSenha(request.getParameter("senha"));
            
        try {
            usuarioDAO dao = new usuarioDAO();
            dao.salvar(u);
            response.sendRedirect("sucesso.jsp");

        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Erro ao salvar: " + e.getMessage());
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
