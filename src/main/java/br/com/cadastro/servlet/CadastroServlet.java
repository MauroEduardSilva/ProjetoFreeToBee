package br.com.cadastro.servlet;


import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.cadastro.util.Conexao;

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

        String sql = "INSERT INTO usuarios (nome, sobrenome, apelido, email, senha) VALUES (?, ?, ?, ?, ?)";

        try (Connection conn = Conexao.getConexao();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, nome);
            stmt.setString(2, sobrenome);
            stmt.setString(3, apelido);
            stmt.setString(4, email);
            stmt.setString(5, senha);
            stmt.executeUpdate();

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
